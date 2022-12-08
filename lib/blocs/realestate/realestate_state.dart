part of 'realestate_bloc.dart';

abstract class RealestateState extends Equatable {
  const RealestateState();

  @override
  List<Object?> get props => [];
}

class RealestateInitial extends RealestateState {}

class RealestateLoading extends RealestateState {}

class RealestateLoaded extends RealestateState {
  // final ResponseModel responseModel;
  // const RealestateLoaded(this.responseModel);
  const RealestateLoaded(dynamic);
}

class RealestateError extends RealestateState {
  final String? message;
  const RealestateError(this.message);
}
