@extends('app')
@section('content')
<section>
    <div class="relative">
        <div class="layer"></div>
        <img src="{{asset('assets/images/about-us-1.png')}}" alt="">
        <p class="uppercase text-bold text-white text-3xl absolute inset-x-1/2 inset-y-1/2 z-10">{{__('KONTAKTLAR')}}</p>
    </div>
</section>
<section class="my-4">
    <div class="container mx-auto flex gap-x-4">
        <div class="w-1/2">
            <img class="w-full" src="{{asset('assets/images/map.png')}}" alt="">
        </div>
        <div class="w-1/2 flex flex-col xl:justify-between">
            <div class="mb-8">
                <img src="{{asset('assets/images/header_logo.svg')}}" alt="">
            </div>
            <div class="flex flex-col gap-y-3">
                <div class="flex gap-x-4">
                    <img src="{{asset('assets/images/loc-yello.svg')}}" alt="">
                    <p class="">Yasamal r-nu, A. Babayev küç. 2A</p>
                </div>
                <div class="flex gap-x-4">
                    <img src="{{asset('assets/images/phone.svg')}}" alt="">
                    <p class="">+994 12 000 00 00</p>
                </div>
                <div class="flex gap-x-4">
                    <img src="{{asset('assets/images/email.svg')}}" alt="">
                    <p class="">info@seyidoglu.az</p>
                </div>
                <div class="flex gap-x-4">
                    <img src="{{asset('assets/images/inst-yello.svg')}}" alt="">
                    <p class="">seyidoglu.az</p>
                </div>
                <div class="flex gap-x-4">
                    <img src="{{asset('assets/images/fb-yello.svg')}}" alt="">
                    <p class="">seyidoglu.az</p>
                </div>
                <div class="flex gap-x-4">
                    <img src="{{asset('assets/images/lin-yello.svg')}}" alt="">
                    <p class="">seyidoglugroup</p>
                </div>
            </div>
        </div>
    </div>
    <p class="text-center mt-8  tracking-widest	 text-[#CCCCCC]">{{__('Keyfiyyət bizim işimizdir...')}}</p>
</section>
@endsection
