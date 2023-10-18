@extends('app')
@section('content')
<section>
    <div class="relative">
        <div class="layer"></div>
        <img src="{{asset('assets/images/about-us-1.png')}}" alt="">
        <p class="uppercase text-bold text-white text-3xl absolute inset-x-1/2 inset-y-1/2 z-10">{{__('HAQQIMIZDA')}}</p>
    </div>
</section>
<section class="my-4 h-full">
    <div class="container mx-auto">
        <div class="flex gap-x-4">
            <div class="w-1/2">
                <img src="{{asset('assets/images/about-us-2.png')}}" alt="">
            </div>
            <div class="w-1/2">
                <div class=" mb-8">
                    <img src="{{asset('assets/images/header_logo.svg')}}" alt="">
                </div>
                <p class="text-xs leading-relaxed">{{__('ŞİRKƏTİMİZ -2008 Cİ İLDƏ .RƏHBƏR ŞAMİLOV BÖYÜKAĞA SEYİDĞA OĞLU TƏRƏFİNDƏN OFFİCELAND FİRMASINI- YƏNİ ŞİRKƏT VƏ İDARƏLƏRƏ- DƏFTƏRXANA VƏ OFİS LƏVAZİMATLARI SATIŞINI TƏŞKİL EDƏN FİRMA OLARAQ FƏALİYYƏTƏ BAŞLAMŞDIR.2011 Cİ İLDƏN KATCEN –KATRİC DOLDURMA VƏ KATRİC SATIŞI PRİNTELƏRİN TƏMİRİ VƏ SERVİSİ ŞÖBƏSİNİ QURULRUB KOPERATİV MÜŞTƏRİLƏRİN XİDMƏTİNƏ VERİLMİŞDİR.ŞİRKƏTİMİZ İNKİŞAF EDƏRƏK 2005 Cİ İLDƏN PENSTORE FİRMASINI QURARAQ YƏNİ -MARKETLƏRDƏ MƏKTƏB MALLARININ TOPDAN SATIŞINI HƏYATA KEÇİRMƏYƏ BAŞLAMIŞDIR.

2009 CU İLDƏ PENSTORE FİRMASINA TAM YENİLİK GƏTİRƏRƏK A-SHOP LAYİHƏSİNİ HƏYATA KEÇİRMƏKLƏ MARKETLƏRDƏ SATIŞIN 3 QAT DAHA ÇOX ARTIRILMASINA NAİL OLUNMUŞDUR.ŞİRKƏTİMİZ BÖYÜYƏRƏK 2022 Cİ İLDƏ ASEYİDOGLU GROUP ADIYLA DAHA DA BÖYÜK LAYİHƏLƏR ÜZƏRİNDƏ ÇALIŞMIŞ VƏ TEZLİKLƏ BREND DƏFTƏRXANA (MAĞAZALAR ŞƏBƏKƏSİ) VƏ LEGOM OYUNCAQ FİRMALARINI İNKİŞAF ETDİRMƏKLƏ SİZLƏRƏ YÜKSƏK XİDMƏT VƏ KEYFİYYƏTLİ MƏHSULLLAR SUNMAQ ÜÇÜN HƏR ZAMAN YÜKSƏK ƏZMLƏ ÇALIŞACAQDIR..')}}</p>
                <div class="flex gap-x-4 mt-8">
                    <a target="_blank" href=""><img src="{{asset('assets/images/inst-gold.svg')}}" alt=""></a>
                    <a target="_blank" href=""><img src="{{asset('assets/images/fb-gold.svg')}}" alt=""></a>
                    <a target="_blank" href=""><img src="{{asset('assets/images/lin-gold.svg')}}" alt=""></a>
                </div>
            </div>
        </div>
        <div class="mt-8">
            @include('components.companies',['companies' => $companies])
        </div>
        <p class="text-center mt-8  tracking-widest	 text-[#CCCCCC]">{{__('Keyfiyyət bizim işimizdir...')}}</p>
    </div>
</section>
@endsection
