<!doctype html>
<html lang="{{app()->getLocale()}}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/main.css') }}">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;700&display=swap" rel="stylesheet">
    <link href="https://fonts.cdnfonts.com/css/meow-script" rel="stylesheet">
    <link
        rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css"
    />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
</head>
<body class="font-montserrat">
@include('layout.header')
@yield('content')
<div class="divider"></div>
@include('layout.footer')
<script>
    const swiper_lang = new Swiper('.lang-swiper', {
        loop:true,
        navigation: {
            slidesPerView: 1,
            nextEl: '.button-next',
            prevEl: '.button-prev',
        },
        on: {
            afterInit: function (event) {
                const locale = $('html').attr('lang');
                const activeLangIndex = $(event.el).find(`[data-lang=${locale}]`).index()
                event.slideTo(activeLangIndex, 10,false);
            },
        },
    });
    let codeExecuted = false;
    swiper_lang.on('slideChange', function (event) {
        if (!codeExecuted){
            const locale = $(event.slides[event.realIndex]).data('lang');
             window.location.replace(`/lang/${locale}`)
            codeExecuted = true;
        }

    });
</script>
</body>
</html>
