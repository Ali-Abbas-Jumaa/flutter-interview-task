// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:al_jad_test/models/response_model.dart';
import 'package:al_jad_test/resources/api_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

part 'realestate_event.dart';
part 'realestate_state.dart';

class RealestateBloc extends Bloc<RealestateEvent, RealestateState> {
  RealestateBloc() : super(RealestateInitial()) {
    final ApiRepository apiRepository = ApiRepository();

    on<GetRealestateList>((event, emit) async {
      try {
        emit(RealestateLoading());
        final mList = await apiRepository.fetchList(
          pageKey: event.pageKey,
          pageSize: event.pageSize,
          controller: event.pageController,
        );
        emit(RealestateLoaded(mList));
        // if (mList.error != null) {
        //   emit(RealestateError(mList.error));
        // }
      } on NetworkError {
        emit(const RealestateError(
            "Failed to fetch data. is your device online?"));
      }
    });
  }
}
