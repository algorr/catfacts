part of 'get_cats_cubit.dart';

abstract class GetCatsState extends Equatable {
  const GetCatsState();

  @override
  List<Object> get props => [];
}

class GetCatsInitial extends GetCatsState {}

class GetCatsSuccessfully extends GetCatsState {
  final List<Cats> cats;
  final Image newImage;

  const GetCatsSuccessfully(this.cats, this.newImage);

  @override
  List<Object> get props => [cats];
}

class GetCatsFail extends GetCatsState {
  // final Failure failure;

  //const GetCatsFail(this.failure);
}

class GetCatsLocally extends GetCatsState {
  final List<Cats> cats;
  final int id;

  const GetCatsLocally(this.cats, this.id);

  @override
  List<Object> get props => [cats, id];
}
