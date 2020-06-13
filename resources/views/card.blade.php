<div class="card-custom">
    <div class="card mb-3 shadow-sm">
        <div class="card-image">
            @if($product->image == null)
                <img class="image" src="image/not-found.png" alt="No image">
            @else
                <img class="image" src="{{ $product->image }}" alt="">
            @endif
        </div>
        <div class="card-body">
            <p class="card-title"><strong>{{ $product->name }}</strong></p>

            <p class="d-flex justify-content-between align-items-center">
                <span>{{ $product->price }} руб.</span>
                @if($product->availability == 1)
                    <small class="text-muted">В наличии</small>
                @else
                    <small class="text-muted">Нет наличии</small>
                @endif
            </p>
                <div class="btn-group btn-group-custom">
                    @if($product->availability == 1)
                        <button type="submit" id="{{$product->id}}" class="add-cart btn btn-sm btn-success" >В корзину</button>
                    @else

                    @endif
                        <a class="btn btn-custom btn-sm btn-primary" href="{{ route('product.show', ['id' => $product->id]) }}">Подробнее</a>
                </div>
        </div>
    </div>
</div>
