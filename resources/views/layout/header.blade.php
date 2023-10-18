<header class="py-2">
    <div class="container mx-auto">
        <div class="xl:flex xl:justify-between xl:items-center">
            <a href="/">
                <img src="{{asset('assets/images/header_logo.svg')}}" alt="">
            </a>
            <div class="header-menu xl:flex xl:gap-8">
                <a href="/about" class="uppercase {{request()->segment(1) == 'about'? 'gold-gradient font-bold' : ''}}">{{__('haqqımızda')}}</a>
                <a href="/contact" class="uppercase  {{request()->segment(1) == 'contact'? 'gold-gradient font-bold' : ''}}">{{__('kontaktlar')}}</a>
            </div>
            <div class="flex gap-x-8">
                <div class="flex gap-x-2">
                    <img src="{{asset('assets/images/header_phone.svg')}}" alt="">
                    <p>+994 12 000 00 00</p>
                </div>
                <div class="lang-swiper">
                    <div class="swiper-wrapper">
                        @foreach(config('app.locales') as $lang)
                            <div class="swiper-slide" data-lang="{{$lang}}">
                                <div class="flex justify-center gap-x-2">
                                    <img src="{{asset('assets/images/aze.svg')}}" alt="">
                                    <span class="uppercase">{{$lang}}</span>
                                </div>
                            </div>
                        @endforeach
                    </div>
                    <div class="button-prev"></div>
                    <div class="button-next"></div>
                </div>

            </div>
        </div>
    </div>
</header>
