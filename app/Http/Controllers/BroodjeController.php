<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Broodje;

class BroodjeController extends Controller
{
    public function index(){
        $broodjes = Broodje::all();

        return view('broodjes.index', [
            'broodjes' => $broodjes,
        ]);
    }

    public function show($id) {
        $broodje = Broodje::findOrFail($id);

        return view('broodjes.show', ['broodje' => $broodje]);
    }

    public function create() {
        return view('broodjes.create');
    }

    public function store() {
        $broodje = new Broodje();
        $broodje->naam = request('naam');
        $broodje->omschrijving = request('omschrijving');
        $broodje->prijs = request('prijs');
        

        $broodje->save();

        return redirect('/')->with('mssg', 'Nieuw broodje toegevoegd!');
    }

    
}
