<?php

namespace App\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Cart;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;


class CartController extends Controller
{
    public function index()
    {
        if (session()->has('cart')) {
            $products = Session::get('cart');
            return view('cart', compact('products'));
        }
        return view('cart');
    }

    public function toggle($id = null)
    {
        $cart = new Cart;
        if ($cart->existsProduct($id) == true) {
            $cart->deleteProduct($id);
        } else {
            $cart->addProduct($id);
        }
        return session()->get('cart');
    }

    public function add($id = null) {
        $cart = new Cart;
        $cart->addProduct($id);
        return back()->withInput();
    }

    public function delete($id = null) {
        $cart = new Cart;
        $cart->deleteProduct($id);
        return back()->withInput();
    }

    public function ajax()
    {
        if (session()->has('cart')) {
            return Session::get('cart');
        } else {
            return false;
        }
    }
}
