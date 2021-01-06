@extends('layouts.app')
@section('content')
    <div class="welkom">
        <h1>De PHP Broodjesbar</h1>
        <img src="/img/belegdbroodje.png" alt="broodje">
    </div>

    <p class="mssg">{{ session('mssg') }}</p>

    <a href="{{ route('broodjes.index')}}">Ga Naar De Broodjes Lijst!</a><br>
  
@endsection