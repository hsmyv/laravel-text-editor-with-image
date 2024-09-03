<?php

namespace App\Http\Controllers;

use App\Models\Language;
use App\Models\Text;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\File;
class TextController extends Controller
{
    public function create()
    {
        $languages = Language::all();
         return view("text-editor", compact('languages'));
    }

    public function index()
    {
        $texts = Text::all();
        return view("components.text-editor.index", compact('texts'));

    }

    public function show(Text $text_editor)
    {
        return view("components.text-editor.show", compact('text_editor'));

    }

    public function store(Request $request)
    {
        try {
            $request->validate([
                'translations.*.title' => 'required',
            ]);

            $text = new Text();
            foreach ($request->input('translations', []) as $locale => $translation) {
                $text->setTranslation('title', $locale, $translation['title']);
                $this->saveContentWihoutBASE64($text, $locale, $translation['content'] ?? '');


            }

            $text->save();

            return redirect()->route('text-editor.index')->with('success', 'Text stored successfully');
        } catch (\Throwable $th) {
            return redirect()->route('text-editor.create')->with('error', $th->getMessage());
        }

    }

    public function update(Request $request, Text $text_editor)
    {
        try {

            foreach ($request->input('translations', []) as $locale => $translation) {
                $text_editor->setTranslation('title', $locale, $translation['title']);
                $this->saveContentWihoutBASE64($text_editor, $locale, $translation['content'] ?? '');

            }

           $text_editor->save();

            return redirect()->route('text-editor.edit', $text_editor)->with('success', 'Text updated successfully');
        } catch (\Illuminate\Validation\ValidationException $th) {
            return redirect()->route('text-editor.edit', $text_editor)->withErrors($th->validator)->withInput();
        }


    }

    public function edit(Text $text_editor)
    {
        $languages = Language::all();
        return view('components.text-editor.edit', ['text' => $text_editor, 'languages' => $languages]);

    }

    public function destroy(Text $text_editor)
    {
        $text_editor->delete();
        return redirect()->route('text-editor.index')->with('success', 'Text deleted successfully');
    }


    function saveContentWihoutBASE64($model, $locale, $item){
        //Modified by Hasan Musa to contribute SummerNote
            $dom = new \DomDocument();
                @$dom->loadHTML(mb_convert_encoding($item ?? ' ', 'HTML-ENTITIES', 'UTF-8'));

                $images = $dom->getElementsByTagName('img');

                foreach ($images as $k => $img) {
                    $image_64 = $img->getAttribute('src');

                    if (strpos($image_64, 'data:image/') === 0) {

                    $extenion = explode('/', explode(':', substr($image_64, 0, strpos($image_64, ';')))[1])[1];

                    $replace = substr($image_64, 0, strpos($image_64, ',') +1);

                    $image = str_replace($replace, '', $image_64);
                    $image = str_replace(' ', '+', $image);

                    $image_name = Str::random(10). '.' .$extenion;

                    $filePath = storage_path('app/public/uploads');

                    if (!File::exists($filePath)) {
                        File::makeDirectory($filePath, 0755, true);
                    }
                    $image_name = "/storage/uploads/" .  $image_name;
                    $path = public_path() . $image_name;
                    file_put_contents($path, base64_decode($image));

                    $img->removeAttribute('src');
                    $img->setAttribute('src', $image_name);
                    }
                }

            // Save the modified HTML content back to $description
            $htmlContent = $dom->saveHTML();

            // Update the translation with the modified HTML content
            $model->setTranslation('content', $locale, $htmlContent);
    }
}
