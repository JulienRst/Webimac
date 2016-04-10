<div class="form-group">
    {!! Form::label('name','Nom :') !!}
    {!! Form::text('name',null,['class' => 'form-control']) !!}
</div>

<!-- excerpt form input -->
<div class="form-group">
    {!! Form::label('excerpt','Extrait : ') !!}
    {!! Form::text('excerpt',null,['class' => 'form-control']) !!}
</div>

<!-- description form input -->
<div class="form-group">
    {!! Form::label('description','Description :') !!}
    {!! Form::textarea('description',null,['class' => 'form-control']) !!}
</div>

<!-- url_image form input -->
@if (isset($old_url_image))
    <div class="form-group">
        {!! Form::label('url_image','URL de l\'image de présentation | Fichier Actuel : '.$old_url_image) !!}
        {!! Form::file('url_image',['class' => 'form-control']) !!}
    </div>
@else
    <div class="form-group">
        {!! Form::label('url_image','URL de l\'image de présentation') !!}
        {!! Form::file('url_image',['class' => 'form-control']) !!}
    </div>
@endif

<!-- awards form input -->
<div class="form-group">
    {!! Form::label('awards','Récompenses : ') !!}
    {!! Form::text('awards',null,['class' => 'form-control']) !!}
</div>

<!-- body form input -->
{{-- <div class="form-group">
    <label for="">Tags : </label>
    <input id="add-tag" class="form-control" type="text"/>
    <div class="tags jumbotron">

    </div>
</div> --}}
<!-- tags form input -->
<div class="form-group">
    {!! Form::label('tags','tags') !!}
    {!! Form::select(null,$tags,null,['class' => 'form-control','id' => 'add-tag','rel' => $project->id]) !!}
    <div class="tags jumbotron">
        @if(isset($self_tags))
            @foreach($self_tags as $tag)
                <button type="button" rel="{{$tag->id}}" class="tag btn btn-primary"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>{{$tag->name}}</button>
            @endforeach
        @endif
    </div>
</div>

<!-- contributor form input -->
<div class="form-group">
    {!! Form::label('contributors','Contributeurs du projet : (séparez les noms par un <br/>)') !!}
    {!! Form::text('contributors',null,['class' => 'form-control']) !!}
</div>

<!-- name_of_tutors form input -->
<div class="form-group">
    {!! Form::label('name_of_tutors','Nom des tuteurs') !!}
    {!! Form::text('name_of_tutors',null,['class' => 'form-control']) !!}
</div>

<!-- web_link form input -->
<div class="form-group">
    {!! Form::label('web_link','Lien vers le site web') !!}
    {!! Form::text('web_link',null,['class' => 'form-control']) !!}
</div>

<!-- github_link form input -->
<div class="form-group">
    {!! Form::label('github_link','Lien vers GitHub') !!}
    {!! Form::text('github_link',null,['class' => 'form-control']) !!}
</div>

<!-- vimeo_link form input -->
<div class="form-group">
    {!! Form::label('vimeo_link','Lien vers Viméo') !!}
    {!! Form::text('vimeo_link',null,['class' => 'form-control']) !!}
</div>

<!-- platform form input -->
<div class="form-group">
    <p>Plateforme :</p>
    {!! Form::label('vimeo','Viméo') !!}
    {!! Form::radio('platform','vimeo',true) !!}
    {!! Form::label('youtube','| Youtube') !!}
    {!! Form::radio('platform','youtube') !!}
    {!! Form::label('dailymotion','| Dailymotion') !!}
    {!! Form::radio('platform','dailymotion') !!}
</div>

<!-- url_video form input -->
<div class="form-group">
    {!! Form::label('url_video','Url de la vidéo de présentation') !!}
    {!! Form::text('url_video',null,['class' => 'form-control']) !!}
</div>

@if (isset($old_date))
    <div class="form-group">
        {!! Form::label('date','Crée le :') !!}
        {!! Form::input('date','date',$old_date,['class' => 'form-control']) !!}
    </div>
@else
    <div class="form-group">
        {!! Form::label('date','Crée le :') !!}
        {!! Form::input('date','date',date('Y-m-d'),['class' => 'form-control']) !!}
    </div>
@endif


<div class="form-group">
    {!! Form::submit($submitButtonText,['class' => 'btn btn-primary form-control']) !!}
</div>
