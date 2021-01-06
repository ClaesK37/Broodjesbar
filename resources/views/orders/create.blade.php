@extends('layouts.app')
@section('content')


<div class="wrapper create-broodje">
    <h1>De PHP Broodjesbar</h1>
    <h2>Uw bestelling!</h2>

    <form action="/orders" method="POST">
        @csrf
        <label for="type">Voornaam:</label>
        <input type="text" id="voornaam" name="voornaam">
        <br>
        <label for="naam">Kies broodje:</label>
        <select name="naam" id="naam"> 
            <option value="Kaas">Kaas</option>
            <option value="Ham">Ham</option>
            <option value="Kaas en Ham">Kaas en Ham</option>
            <option value="Fitness Kip">Fitness Kip</option>
            <option value="Sombrero">Sombrero</option>
            <option value="Americain-Tartaar">Americain-Tartaar</option>
            <option value="Indian Kip">Indian Kip</option>
            <option value="Grieks">Grieks</option>
            <option value="Tonijntino">Tonijntino</option>
            <option value="Wrap Exotisch">Wrap Exotisch</option>
            <option value="Wrap kip/spek">Wrap kip/spek</option>
        <select>
        <br>
        <label for="omschrijving">Inhoud:</label>
        <select name="omschrijving" id="omschrijving"> 
            <option value="Broodje met jonge kaas">Kaas</option>
            <option value="Broodje met natuurham">Ham</option>
            <option value="Broodje met kaas en ham">Kaas en Ham</option>
            <option value="Kip natuur, yoghurtdressing, perzik, tuinkers, tomaat en komkommer">Fitness Kip</option>
            <option value="kip natuur, andalousesaus, rode paprika, maïs, sla, komkommer, tomaat, ei en ui">Sombrero</option>
            <option value="americain, tartaarsaus, ui, komkommer, ei en tuinkers">Americain-Tartaar</option>
            <option value="kip natuur, ananas, tuinkers, komkommer en curry dressing">Indian Kip</option>
            <option value="feta, tuinkers, komkommer, tomaat en olijventapenade">Grieks</option>
            <option value="tonijn pikant, ui, augurk, martinosaus en (tabasco)">Tonijntino</option>
            <option value="kip natuur, cocktailsaus, sla, tomaat, komkommer, ei en ananas">Wrap Exotisch</option>
            <option value="Kip natuur, spek, BBQ saus, sla, tomaat en komkommer">Wrap kip/spek</option>
        <select>
        <br>
        <label for="prijs">Prijs:</label>
        <select name="prijs" id="prijs"> 
            <option value="1.90">Prijs: Kaas 1.90 </option>
            <option value="1.90">Prijs: Ham 1.90 </option>
            <option value="2.10">Prijs: Kaas en Ham 2.10 </option>
            <option value="3.00">Prijs: Fitness Kip 3.00 </option>
            <option value="3.00">Prijs: Sombrero 3.00 </option>
            <option value="3.00">Prijs: Americain-Tartaar 3.00 </option>
            <option value="4.00">Prijs: Indian Kip 4.00 </option>
            <option value="3.00">Prijs: Grieks 3.00 </option>
            <option value="2.00">Prijs: Tonijntino 2.00 </option>
            <option value="3.00">Prijs: Wrap Exotisch 3.00 </option>
            <option value="4.00">Prijs: Wrap kip/spek 4.00 </option>
        <select>
        <br>   
        <input type="submit" value="voeg toe">
        <br><br>
</div>

@endsection