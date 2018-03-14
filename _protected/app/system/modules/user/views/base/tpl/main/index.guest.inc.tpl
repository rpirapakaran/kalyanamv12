<div class="right col-md-4 animated fadeInRight">
    <h1 class="red3 italic underline">{headline}</h1>
    <div class="center">
        <a href="{{ $design->url('user','main','login') }}" class="btn btn-primary btn-lg">
            <strong>{lang 'Login'}</strong>
        </a>
    </div>
    {{ JoinForm::step1() }}

    <div class="counter center">
        <h2 class="red3">{lang 'People love us! Realtime users using our service'}</h2>
        {{ $userDesign->userCounter() }}
    </div>
</div>

<div class="left col-md-8">
    <div class="folio_block">
        <h1 class="red3 italic underline">{slogan}</h1>

        <div class="splash_slideshow">
            <div class="window">
                <div class="img_reel">
                    {for $i in [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]}
                        <a href="{url_root}">
                            <img src="{url_tpl_img}slideshow/{i}.jpg" alt="{lang 'Prapa Matrimonial Web App'}" />
                        </a>
                    {/for}
                </div>
            </div>
            <div class="paging">
                <a href="#" rel="1">1</a>
                <a href="#" rel="2">2</a>
                <a href="#" rel="3">3</a>
                <a href="#" rel="4">4</a>
                <a href="#" rel="5">5</a>
                
                <a href="#" rel="6">6</a>
                <a href="#" rel="7">7</a>
                <a href="#" rel="8">8</a>
                <a href="#" rel="9">9</a>
                <a href="#" rel="10">10</a>
                
                <a href="#" rel="11">11</a>
                <a href="#" rel="12">12</a>
                <a href="#" rel="13">13</a>
                <a href="#" rel="14">14</a>
                <a href="#" rel="15">15</a>
            </div>
        </div>
    </div>

    <div class="block_txt">
        <h2>{lang 'Meet &amp; your soulmate near %0%!', $design->geoIp(false)}</h2>
        {promo_text}
    </div>

    {if $is_users_block}
        <div class="carousel">{{ $userDesignModel->carouselProfiles() }}</div>
    {/if}
</div>
