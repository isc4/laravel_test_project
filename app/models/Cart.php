<?php

namespace App\Models;

use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Session;

class Cart extends Model
{

    public function existsProduct( $id = null) {
        if (Session::has('cart')) {
            $products = Session::get('cart');
            foreach ($products as $product) {
                if($product->id == $id) {
                    return true;
                }
            }
            return false;
        } else {
            return false;
        }

    }

    public function addProduct($id = null) {
        $product = Product::where('id', $id)->first();
        Session::push('cart', $product);

    }

    public function deleteProduct( $id = null) {
        $products = Session::get('cart');
        Session::forget('cart');
        $count = 0;
        foreach ($products as $product) {
            if($product->id == $id && $count < 1) {
                $count += 1;
                continue;
            }
            Session::push('cart', $product);
        }
    }
}
