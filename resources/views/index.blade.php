@extends('app')
@section('content')
    <section>
       <div class="main-slider relative">
            @include('components.main-slider', ['main_sliders' => $main_sliders])
       </div>
    </section>
    <section class="pt-4">
        <div class="container mx-auto">
            <p class="uppercase font-bold text-2xl text-center mb-4">{{__('Şİrkətİmİz grupu')}}</p>
            @include('components.companies',['companies' => $companies])
            <p class="text-xs">{{__("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of ")}}</p>
            <p class="text-center text-3xl mb-2 text-[#B9B9B9]" style="font-family: 'Meow Script', sans-serif">{{__('Keyfiyyət bizim işimizdir...')}}</p>
        </div>

    </section>
    <script>
        const swiper = new Swiper('.main-slider-swiper', {
            direction: 'horizontal',
            autoplay:true,
            loop: true,
            pagination: {
                el: '.swiper-pagination',
                clickable:true
            },
        });
    </script>
@endsection
