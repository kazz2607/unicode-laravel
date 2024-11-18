<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Support\Facades\Gate;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Posts;



class PostController extends Controller
{
    public function index(){
        $user = Auth::user();
        if($user->can('viewAny', Posts::class)){
            return 'Được phép';
        }
        if($user->cant('viewAny', Posts::class)){
            abort(403);
            // return 'Không được phép';
        }
        return view('admin.posts.index');
    }

    public function show(Request $request, Posts $post){
        $user = $request->user();
        if($user->can('view',$post)){
            return 'Được phép';
        }
        if($user->cant('view',$post)){
            abort(403);
            // return 'Không được phép';
        }
    }

    public function add(){
        $this->authorize('posts.add');

        if (Gate::allows('posts.add')) {
            return '<h2>Có quyền thêm bài viết</h2>';
        }
        //Kiểm tra không được phép
        if (Gate::denies('posts.add')) {
            return '<h2>Không có quyền thêm bài viết</h2>';
        }
        return '<h2>Thêm bài viết</h2>';
    }

    public function edit(Posts $post){
        if (Gate::allows('posts.edit',$post)) {
            return '<h2>Có quyền sửa bài viết '.$post->id.'</h2>';
        }
        //Kiểm tra không được phép
        if (Gate::denies('posts.edit',$post)) {
            return '<h2>Không có quyền sửa bài viết '.$post->id.'</h2>';
        }
        return '<h2>Sửa bài viết '.$post->id.'</h2> ';
    }

    public function delete($id){
        return '<h2>Xoá bài viết</h2> '.$id;
    }
}
