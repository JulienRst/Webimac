@extends('admin.admin',['nav' => 'partnership'])

@section('meta')
    <meta name="_token" content="{!! csrf_token() !!}"/>
@endsection

@section('content')
    <h1> Liste des partenariats</h1>
    <hr/>
    <a href="{{action('AdminPartnershipController@create')}}"><button class="btn btn-primary">Ajouter un partnenariat</button></a>
    <hr/>
    @if (count($partnerships) == 0)
        Aucun partneriat à afficher pour le moment
    @else
        <button id="save" type="button" class="btn btn-primary" name="button">Sauvergarder l'ordre</button>
        <br/>
        <br/>
        <div id="result"></div>
        <div id="ctn-partnerships">
            @foreach ($partnerships as $partnership)
                <h3 rel="{{$partnership->id}}"><a href="{{action('AdminPartnershipController@edit',[$partnership->id])}}">{{ $partnership->name }}</a></h3>
            @endforeach
        </div>
    @endif
@endsection

@section('script')
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" charset="utf-8"></script>
    <script src="{{URL::asset('js/admin_partnership.js')}}" charset="utf-8"></script>
@endsection
