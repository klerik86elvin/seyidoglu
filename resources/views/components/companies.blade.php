<div class="companies-list grid grid-cols-5 gap-12 mb-4">
    @foreach($companies as $c)
        <div class="company p-4 rounded-md">
            <a class="h-full flex flex-col xl:justify-between" href="/company/{{$c->id}}">
                <div class="flex h-full justify-center xl:items-center my-2">
                    <img src="{{\TCG\Voyager\Facades\Voyager::image($c->image)}}" alt="">
                </div>
                <p class="company-name text-xs text-center font-semibold">{{$c->name}}</p>
            </a>
        </div>
    @endforeach
</div>
