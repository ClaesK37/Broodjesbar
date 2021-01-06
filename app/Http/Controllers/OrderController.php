<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Order;

class OrderController extends Controller
{
    public function index(){
        $orders = Order::all();
        return  view('orders.index', [
            'orders' => $orders,
        ]);
    }

    public function show($id){
        $order = Order::findOrFail($id);
        return view('orders.show', ['order' => $order]);
    }

    public function create() {
        return view('orders.create');
    }

    public function store() {
        $order = new Order();
        $order->naam = request('naam');
        $order->omschrijving = request('omschrijving');
        $order->prijs = request('prijs');
        $order->voornaam = request("voornaam");

        $order->save();

        return redirect('/')->with('mssg', 'Uw bestelling is geplaatst!');
    }

    public function destroy($id){
        $order = Order::findOrFail($id);
        $order->delete();

        return redirect('/orders');
    }
}
