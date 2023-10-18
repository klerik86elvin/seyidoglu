<div class="main-slider-swiper">
    <div class="swiper-wrapper">
        @foreach($main_sliders as $s)
            <div class="swiper-slide">
                <div class="slider-bg flex justify-center" style="background-image:url({{\TCG\Voyager\Facades\Voyager::image($s->image)}});">
                    <div class="layer"></div>
                    <div class="container">
                        <div class="slider-logo flex justify-center">
                            <img src="/storage/{{json_decode($s->logo)[0]->download_link ?? ""}}" alt="">
                        </div>
                        <p class="slider-title text-center text-3xl text-white font-regular relative z-10">{{__('Keyfiyyət bizim işimizdir...')}}</p>
                        <div class="slider-link text-center mt-16">
                            <a class="border solid border-white bg-slate-100/20 rounded-md relative z-10 text-white p-4" href="">{{__('Kataloq yüklə')}}</a>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
    <div class="swiper-pagination"></div>
</div>
