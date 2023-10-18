<footer class="py-4">
    <div class="container mx-auto flex xl:justify-between">
        <div class="text-white text-xs">
            <div class="flex">
                <img src="{{asset('assets/images/location.svg')}}" alt="">
                <p>Yasamal r-nu, A. Babayev küç. 2A</p>
            </div>
            <p class="w-52"> &reg; Copyright {{\Carbon\Carbon::now()->year}} www.seyidoglu.az   All right Reserved</p>
        </div>
        <div class="flex xl:gap-16">
            <div>
                <img class="mx-auto" src="{{asset('assets/images/footer_logo.svg')}}" alt="">
                <p class="text-[#808080]">Created by BASOVICH Creative HUB</p>
            </div>
            <div class="flex flex-col justify-center text-white">
                <div class="flex">
                    <img src="{{asset('assets/images/phone.svg')}}" alt="">
                    <p>+994 12 000 00 00</p>
                </div>
                <div class="flex">
                    <img src="{{asset('assets/images/email.svg')}}" alt="">
                    <p>info@seyidoglu.az</p>
                </div>
            </div>
            <div>
                <p class="gold-gradient">{{__('Sosial şəbəkələrimiz')}}</p>
                <div class="flex xl:justify-between mt-2">
                    <a href="">
                        <img src="{{asset('assets/images/inst.svg')}}" alt="">
                    </a>
                    <a href="">
                        <img src="{{asset('assets/images/fb.svg')}}" alt="">
                    </a>
                    <a href="">
                        <img src="{{asset('assets/images/LinkedIn.svg')}}" alt="">
                    </a>
                </div>
            </div>
        </div>
    </div>
</footer>
