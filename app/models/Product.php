<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use App\Controllers\ProductsController;

class Product extends Model
{
    public $hidden = ['created_at', 'updated_at'];


    public function latest() {
        session()->forget('toggle');
        session()->put('toggle', 'latest');
    }

    public function oldest() {
        session()->forget('toggle');
        session()->put('toggle', 'oldest');
    }


    public function sortToggle($sorting = null)
    {
        if ($sorting != null) {
            if (session()->has('toggle')) {
                if (session()->get('toggle') == 'oldest') {
                    $this->latest();
                    return $products = Product::orderBy('availability', 'desc')
                        ->oldest($sorting)
                        ->paginate(10);

                } else if (session()->get('toggle') == 'latest') {
                    $this->oldest();
                    return $products = Product::orderBy('availability', 'desc')
                        ->latest($sorting)
                        ->paginate(10);
                }
            } else {
                $this->oldest();
                return $products = Product::orderBy('availability', 'desc')
                    ->latest($sorting)
                    ->paginate(10);
            }
        } else {
            return $products = Product::orderBy('availability', 'desc')
                ->paginate(10);
        }

    }

}
