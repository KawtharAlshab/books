part of 'post_cubit.dart';

@immutable
abstract class PostStates {}

class PostInitial extends PostStates {}
class PostSuccessfulGetPostState extends PostStates {}
class PostFailureGetPostState extends PostStates {}
class PostSuccessfulAddPostState extends PostStates {}
class PostFailureAddPostState extends PostStates {}
class PostSuccessfulDelPostState extends PostStates {}
class PostFailureDelPostState extends PostStates {}

