<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom box-shadow">
    <h5 class="my-0 mr-md-auto font-weight-normal">Интернет магазин</h5>
    <nav class="my-2 my-md-0 mr-md-3">
        <a class="p-2 text-dark" href="{{ route('product.index') }}">Главная</a>
        <a class="p-2 text-dark" href="{{ route('cart.index') }}">
            <i class="fas fa-shopping-cart"></i>
            Корзина
            <span id="cartCount" class="badge">{{ session()->has('cart') ? count(session()->get('cart')) : '' }}</span>
        </a>
    </nav>
</div>
