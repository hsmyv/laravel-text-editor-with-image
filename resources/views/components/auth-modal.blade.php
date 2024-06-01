<div id="modal" class="popupContainer" style="display:none;">
    <div class="popupHeader">
        <span class="header_title">Login</span>
        <span class="modal_close"><i class="fa fa-times"></i></span>
    </div>

    <section class="popupBody">
        <!-- Social Login -->
        <x-auth.social-login/>

        <!-- Username & Password Login form -->
        <x-auth.user-login/>

        <!-- Register Form -->
        <x-auth.user-register/>

    </section>
</div>
