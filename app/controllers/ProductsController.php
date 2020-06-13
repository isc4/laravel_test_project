<?php

namespace App\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Http\Response;


class ProductsController extends Controller
{

    public function index()
    {
        $products = Product::orderBy('availability', 'desc')->paginate(10);
        return view('home', compact('products'));
    }

    public function show($id = null) {
        $product = Product::where('id', $id)->first();
        return view('product', compact('product'));
    }

    public function sorting(Request $request) {

        $sort = new Product;
        $products = $sort->sortToggle($request->input('sorting'));
        return view('home', ['products' => $products]);
    }


}
