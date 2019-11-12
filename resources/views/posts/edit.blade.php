@extends('layouts.app')
@section('content')
    
<main role="main" class="container" style="padding-top:10px;">
        <div class="jumbotron">
          <h1>Edit Posts</h1>
          <hr>
            {!! Form::open(['action' => ['PostsController@update',$post->id], 'method' => 'PUT', 'enctype'=>'multipart/form-data']) !!}
                <div class='form-group'>
                    {{Form::label('title','Title')}}
                    {{Form::text('title', $post->title, ['class' => 'form-control', 'placeholder'=> 'Article Title'])}}
                </div>
                <div class='form-group'>
                        {{Form::label('body','Article')}}
                        {{Form::textarea('body', $post->body, ['class' => 'form-control', 'placeholder'=> 'Article Description'])}}
                </div>
                <div class='form-group'>
                        {{Form::file('cover_img')}}
                    </div>
                {{Form::hidden('_method','PUT')}}
                {{Form::submit('Save Post',['class'=>'btn btn-primary'])}}
            {!! Form::close() !!}
        </div>
</main>  
@endsection