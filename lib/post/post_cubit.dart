import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:cubit_test/models/post-model.dart';
import 'package:cubit_test/network/myHttp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'post_states.dart';

class PostCubit extends Cubit<PostStates> {
  PostCubit() : super(PostInitial());

  static PostCubit getPostCubitObject (BuildContext context)=>BlocProvider.of(context);

  Future<List<Post>> getPosts()async{
   // emit(PostLoadingState());
    try{
    // emit(PostLoadingState());
    List<Post> posts=await MyHttp.getposts();
      emit(PostSuccessfulGetPostState());
     return posts ;

    }
    catch(error){
      return [];
      emit(PostFailureGetPostState());
      log(error.toString());
    }

  }
  void addPosts()async{
    try{
      await MyHttp.postPost();
      emit(PostSuccessfulAddPostState());
    }
    catch(error){
      emit(PostFailureAddPostState());
      log(error.toString());
    }

  }

  void delPosts()async{
    try{
      await MyHttp.deletePost();
      emit(PostSuccessfulDelPostState());
    }
    catch(error){
      emit(PostFailureDelPostState());
      log(error.toString());
    }

  }



}
