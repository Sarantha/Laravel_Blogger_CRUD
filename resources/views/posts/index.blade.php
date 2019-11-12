@extends('layouts.app')
@section('content')
    
<main role="main" class="container" style="padding-top:10px;">
        <div class="jumbotron">
          <h1>Posts</h1>
          <hr>
            @if (count($posts)>0)
            <div class="row">
                @foreach ($posts as $post)
                    <div class="well">
                        
                            <div class="col-md-4">
                                    <div class="card" style="width: 18rem;">
                                            <img src="/storage/cover_images/{{$post->cover_img}}" class="card-img-top" alt="...">
                                            <div class="card-body">
                                                <h5 class="card-title"><a href="/posts/{{$post->id}}">{{$post->title}}</a></h5>
                                                <p class="card-text"><small>Witten on {{$post->created_at}}<br> by {{$post->user->name}}</small></p>
                                            </div>
                                        </div>
                            </div>
                    </div>
                @endforeach
            </div>
                <br>
                {{$posts->links()}}
            @else 
                <p>No posts available</p>
            @endif

        </div>
</main>  
@endsection