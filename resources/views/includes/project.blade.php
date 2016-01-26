@foreach ($projects as $project)
    <div class="col-2 side-padding project">
        <img src="{{URL::asset('images/projects/'.$project->url_image)}}" alt="{{$project->name}}" />
        <h3 class="title-4">{{$project->name}}</h3>
        <!--<p><span class="tag">#projet tuteuré</span> <span class="tag">#ananas</span></p>-->
        <p>{{$project->excerpt}}</p>
        <a class="primary-btn" href="realisations/{{$project->url_page}}">Voir le projet</a>
    </div>
@endforeach
