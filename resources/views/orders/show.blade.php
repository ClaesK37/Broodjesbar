@extends('layouts.app')
@section('content')

<div class="wrapper orders-details">
    <h1>De PHP Broodjesbar</h1>
    <h2>Bestelnummer: {{ $order->id}} </h2>
    <h3>Broodje van {{ $order->voornaam }} </h3>
    <p class="naam">Naam - {{ $order->naam }}</p>
    <p class="omschrijving">Omschrijving - {{ $order->omschrijving }}</p>
    <p class="prijs">Prijs - {{ $order->prijs }}</p>
    
    <br>
    <form action="{{route('orders.destroy', $order->id)}}" method="POST">
        @csrf
        @method('DELETE')
        <button class="bestel">Afgewerkt!</button>
    </form>
    <br>
</div>
<br>
<a href="/orders" class="back">Terug naar overzicht lopende bestellingen</a>


@endsection