@extends('layouts.app')
@section('content')
 
<h1>De PHP Broodjesbar</h1>
<h2>Broodjeslijst</h2>
    <h3>Ontdek hier wat er tussen je broodje zit:</h3>
    @foreach($broodjes as $broodje)
        <div>
            <p><a href="/broodjes/{{ $broodje->id}}">{{ $broodje->naam }} </a></p>
        </div>
    @endforeach

@endsection