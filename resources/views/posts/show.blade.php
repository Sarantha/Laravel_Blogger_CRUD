@extends('layouts.app')
@section('content')
    
<main role="main" class="container" style="padding-top:10px;">
        <div class="jumbotron">
            <center>
                <h1>{{$post->title}}</h1>
            </center>
            <img style="width:50%;height:auto;align:center" src="/storage/cover_images/{{$post->cover_img}}">
            <br>
            <br>
            <div>
                <p>{{$post->body}}</p>
            </div>
            <br>
            <small>Witten on {{$post->created_at}} by {{$post->user->name}}</small>
            <br>
            @if(!Auth::guest())
                @if(Auth::user()->id == $post->user_id)
                    <table>
                        <tr><td><a href="/posts/{{$post->id}}/edit" class="btn btn-primary">Edit Post</a></td><td> {!!Form::open(['action'=>['PostsController@destroy',$post->id],'method'=>'POST','class'=>'pull-right'])!!}
                                {{Form::hidden('_method','DELETE')}}
                                {{Form::submit('Delete',['class'=>'btn btn-danger'])}}
                            {!!Form::close()!!}</td></tr>
                    </table>
                    
                    <br>
                    <br>
                   
                @endif
            @endif
        </div>
</main>  
@endsection