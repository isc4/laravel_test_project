@extends('app')

@section('title', 'Home page')

@section('content')
    <div class="row-custom">
        <h3>Весь товар</h3>
    </div>
    <div class="row-custom">
        <h6 class="h6-custom">Сортировка</h6>
        <p>
            <a href="{{ route('product.sorting', ['sorting' => 'name']) }}">Сортировка по имени</a>
            <a href="{{route('product.sorting', ['sorting' => 'price'])}}">Сортировка по цене</a>
        </p>
    </div>
    <div class="row">
        @foreach($products as $product)

            @include('card', ['product' => $product])

        @endforeach
    </div>
    {{ $products->links() }}


@endsection
