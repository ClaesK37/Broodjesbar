@extends('layouts.app')
@section('content')

<div class="wrapper broodjes-details">
    <h1>De PHP Broodjesbar</h1>
    <h2>Broodjesnummer: {{ $broodje->id}} </h2>
    <h3>{{ $broodje->naam }} </h3>
    <p class="omschrijving"> {{ $broodje->omschrijving }}</p>
    <p class="prijs">Prijs - {{ $broodje->prijs }}</p>
    <br>
   
    <form action="{{route('orders.create')}}" method="GET">
        @csrf      
        <button class="bestel">Bestel</button>
    </form>

</div>
<br>
<a href="/broodjes" class="back">Terug naar de volledige broodjeslijst</a>
@endsection