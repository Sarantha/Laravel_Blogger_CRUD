@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">
                    <b>Dashboard</b>
                    <a class="btn btn-primary" style="margin-left:400px" href="/posts/create">Create Post</a>
                </div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    Your Blog Posts
                </div>
                @if(count($posts)>0)
                    <table class="table table-striped">
                        <thead>
                          <tr>
                            <th scope="col">Title</th>
                            <th scope="col">Edit Post</th>
                            <th scope="col">Delete Post</th>
                          </tr>
                        </thead>
                        <tbody>
                          @foreach($posts as $post)
                          <tr>
                            <td>{{$post->title}}</td>
                            <td><a href="/posts/{{$post->id}}/edit" class="btn btn-primary">Edit</a></td>
                            <td>{!!Form::open(['action'=>['PostsController@destroy',$post->id],'method'=>'POST','class'=>'pull-right'])!!}
                                    {{Form::hidden('_method','DELETE')}}
                                    {{Form::submit('Delete',['class'=>'btn btn-danger'])}}
                                {!!Form::close()!!}
                            </td>
                          </tr>
                          @endforeach
                        </tbody>
                    </table>
                    @else 
                    <p style="text-align: center">You have no posts..! Click on the "Create Post" button to create your first post.</p>
                @endif
            </div>
        </div>
    </div>
</div>
@endsection
