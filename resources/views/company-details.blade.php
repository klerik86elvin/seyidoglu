@extends('app')
@section('content')
<section class="flex justify-center xl:items-center" style="
    height: 177px;
    background-image: url({{asset('assets/images/about-us-1.png')}});
    background-size: cover;
    background-repeat: no-repeat;
    position: relative;
">
    <div class="layer"></div>
    <img class="relative z-10" src="{{\TCG\Voyager\Facades\Voyager::image($company->image)}}" alt="">
</section>
<section>
    <div class="container mx-auto">
        <p class="gold-gradient my-2 text-center font-semibold">{{$company->title}}</p>
{{--        <div class="gallery-list grid grid-cols-{{$company->gallery->count() > 5 ? 5 : $company->gallery->count()}}">--}}
        <div class="gallery-list flex justify-between my-8">
            @foreach($company->gallery as $g)
            <div class="">
                <img style="height: 220px;object-fit: cover" src="{{\TCG\Voyager\Facades\Voyager::image($g->image)}}" alt="">
                <p class="text-xs text-center font-bold mt-4">{{$g->title}}</p>
            </div>
            @endforeach
        </div>
        @include('components.companies',['companies' => $companies])
    </div>
</section>
<script>
    $(window).on('load',()=> {
        const images = $('.gallery-list img');
        images.each((key,value) => {
            const imgWidth = $(value).width();
            $(value).next().css('width',imgWidth);
        })
    })

</script>
@endsection
