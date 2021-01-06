@extends('layouts.app')
@section('content')

<div class="wrapper create-broodje">
    <!--voor de werknemers-->
    
    <div class="wrapper create-broodje">
        <h1>De PHP Broodjesbar</h1>
        <h2>Uw bestelling!</h2>
        <p class="omschrijving"> {{ $broodje->omschrijving }}</p>
        <p class="prijs">Prijs - {{ $broodje->prijs }}</p>
        <form action="/orders" method="POST">
            @csrf
            <label for="type">Voornaam:</label>
            <input type="text" id="voornaam" name="voornaam">
            <br>
            <label for="naam">Naam:</label>
            <input type="text" id="naam" name="naam">
            <br>
            <label for="omschrijving">Omschrijving:</label>
            <input type="text" id="omschrijving" name="omschrijving">
            <br>
            <label for="prijs">Prijs:</label>
            <input type="text" id="prijs" name="prijs">
            <br>   
            <input type="submit" value="voeg toe">
            <br><br>
    </div>
</div>

@endsection