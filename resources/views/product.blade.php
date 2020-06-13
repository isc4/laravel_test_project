@extends('app')

@section('title' )

@endsection

@section('content')
    <div class="row">
        <h1>{{ $product->name }}</h1>
    </div>
    <div class="row">
        <p>{{ $product->price }} рублей</p>
    </div>
    <div class="row">
        @if($product->image == null)
            <img class="image-product-show" src="/image/not-found.png" alt="No image">
            @else
            <img src="/image/{{ $product->image }}" alt="image-product">
        @endif
    </div>
    <div class="row">
        <p>{{ $product->description }}</p>
    </div>
    <div class="row">
        <form action="">
            <button type="submit" class="btn btn-success">Добавить в корзину</button>
        </form>
    </div>
@endsection

