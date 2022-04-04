@extends('admin_layout')
@section('admin_content')
    <div class="row">
        <div class="col-lg-12">
            <section class="panel">
                <header class="panel-heading">
                    Thêm bài viết
                </header>
                <div class="panel-body">
                    <div class="position-center">
                        @if ($errors->any())
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        {{ $error }}
                                    @endforeach
                                </ul>
                            </div>
                        @endif
                        <form role="form" action="{{ URL::to('/save-post') }}" method="post"
                            enctype="multipart/form-data">
                            {{ csrf_field() }}
                            <div class="form-group">
                                <label for="exampleInputEmail1">Tên bài viết</label>
                                <input type="text" name="post_title" class="form-control" onkeyup="ChangeToSlug();"
                                    id="slug">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Slug</label>
                                <input type="text" name="post_slug" class="form-control" id="convert_slug">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Hình ảnh bài viết</label>
                                <input type="file" name="post_image" class="form-control" id="exampleInputEmail1"
                                    >
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Tóm tắt bài viết</label>
                                <textarea style="resize: none" rows="5" class="form-control" name="post_desc"
                                    ></textarea>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Nội dung bài viết</label>
                                <textarea style="resize: none" rows="5" class="form-control" name="post_content"
                                    id="ckeditor10" ></textarea>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Meta từ khóa </label>
                                <textarea style="resize: none" rows="5" class="form-control" name="post_meta_keywords"
                                    ></textarea>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Meta nội dung </label>
                                <textarea style="resize: none" rows="5" class="form-control" name="post_meta_desc"
                                    ></textarea>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Danh mục bài viết</label>
                                <select name="cate_post_id" class="form-control input-sm m-bot15">
                                    @foreach ($cate_post as $key => $post)
                                        <option value="{{ $post->cate_post_id }}">{{ $post->cate_post_name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Hiển thị</label>
                                <select name="post_status" class="form-control input-sm m-bot15">
                                    <option value="0">Hiển thị</option>
                                    <option value="1">Ẩn</option>
                                </select>
                            </div>
                            <button type="submit" name="add_product" class="btn btn-info">Thêm bài viết</button>
                        </form>
                    </div>
                </div>
            </section>
        </div>
    </div>
@endsection
