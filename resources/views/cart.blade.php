@extends('app')

@section('title', 'Cart')

@section('content')
    <div class="row-custom">
        <h3>Корзина</h3>
    </div>
    @if(session()->has('cart'))
        <table class="table">
            <thead>
            <tr>
                <th scope="col"></th>
                <th scope="col">Название</th>
                <th scope="col">Количество</th>
                <th scope="col">Действия</th>
                <th scope="col">Цена</th>
                <th scope="col">Стоимость</th>
            </tr>
            </thead>
            <tbody>
            @foreach($products as $product)
                <tr>
                    <td>
                        @if($product->image == null)
                            <img class="image-cart" src="/image/not-found.png" alt="No image">
                        @else
                            <img class="image-cart" src="/image/{{ $product->image }}" alt="image">
                        @endif
                    </td>
                    <td>{{ $product->name }}</td>
                    <td>Количество товара</td>
                    <td>

                            <div class="btn-group">
                                <a class="btn btn-custom btn-sm btn-success" href="{{ route('cart.add', ['id' => $product->id]) }}">+</a>
                                <a class="btn btn-custom btn-sm btn-danger" href="{{ route('cart.delete', ['id' => $product->id]) }}">-</a>
                            </div>

                    </td>
                    <td>{{ $product->price }}</td>
                    <td>{{ $product->price }}</td>
                </tr>
            @endforeach
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>ИТОГО:</td>
                <td><strong>0</strong></td>
            </tr>
            </tbody>
        </table>
        <div class="row">
            <a class="btn btn-success" href="#">Оформить заказ</a>
        </div>
    @else
        <div class="row">
                <h4>Корзина пуста!</h4>
        </div>
    @endif
@endsection



