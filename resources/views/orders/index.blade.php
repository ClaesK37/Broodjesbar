@extends('layouts.app')
@section('content')

<h1>De PHP Broodjesbar</h1>
<h2>Nog af te werken bestellingen</h2>

    @foreach($orders as $order)
        <div>
            <a href="/orders/{{ $order->id}}">
                Voor {{$order->voornaam}} : {{$order->naam }} </a>
        </div>
    @endforeach

@endsection