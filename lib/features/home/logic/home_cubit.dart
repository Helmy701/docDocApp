import 'package:docdoc/features/home/data/repos/home_repo.dart';
import 'package:docdoc/features/home/logic/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());
  void getSpecializations() async {
    emit(const HomeState.specializationsLoading());
    final result = await _homeRepo.getSpecialization();
    result.when(success: (specializationsResponseModel) {
      emit(HomeState.specializationsSuccess(specializationsResponseModel));
    }, failure: (errorHandler) {
      HomeState.specializationsError(errorHandler);
    });
  }
}
