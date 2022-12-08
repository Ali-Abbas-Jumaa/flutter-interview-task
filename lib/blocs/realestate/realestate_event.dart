part of 'realestate_bloc.dart';

abstract class RealestateEvent extends Equatable {
  const RealestateEvent();

  @override
  List<Object> get props => [];
}

class GetRealestateList extends RealestateEvent {
  final int pageKey;
  final int pageSize;
  final PagingController pageController;

  const GetRealestateList(
      {required this.pageKey,
      required this.pageSize,
      required this.pageController});
}
