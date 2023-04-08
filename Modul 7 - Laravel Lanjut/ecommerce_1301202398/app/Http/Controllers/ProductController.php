<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $prods = Product::get();
        return view('product.index', ['list' => $prods]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('product.form', [
            'title' => 'Tambah',
            'method' => 'POST',
            'action' => 'product'
            ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    // public function store(Request $request)
    // {
    //     $prod = new Product;
    //     $prod->name = $request->name;
    //     $prod->price = $request->price;
    //     $prod->save();
    //     return redirect('/product')->with('msg', 'Tambah berhasil');
    // }

    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|min:4',
            'price' => 'required|integer|min:1000000'
        ]); 
        $prod = new Product;
        $prod->name = $request->name;
        $prod->price = $request->price;
        $prod->save();
        return redirect('/product')->with('msg', 'Tambah Berhasil');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        return Product::find($id);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        return view('product.form', [
            'title' => 'Edit',
            'method' => 'PUT',
            'action' => "product/$id",
            'data' => Product::find($id)
            ]);
    }

    /**
     * Update the specified resource in storage.
     */
    // public function update(Request $request, string $id)
    // {
    //     $prod = Product::find($id);
    //     $prod->name = $request->name;
    //     $prod->price = $request->price;
    //     $prod->save();
    //     return redirect('/product')->with('msg', 'Edit berhasil');
    // }

    public function update(Request $request)
    {
        $this->validate($request, [
        'name' => 'required|min:4',
        'price' => 'required|integer|min:1000000'
        ]);
        $id = $request->input('id');
        $prod = Product::find($id);
        $prod->name = $request->name;
        $prod->price = $request->price;
        $prod->save();
        return redirect('/product')->with('msg', 'Edit berhasil');
    }


    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        Product::destroy($id);
        return redirect('/product')->with('msg', 'Delete Berhasil');
    }
}
