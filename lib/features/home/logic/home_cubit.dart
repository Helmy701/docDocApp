import 'package:docdoc/core/helpers/extensions.dart';
import 'package:docdoc/core/networking/api_error_handler.dart';
import 'package:docdoc/features/home/data/models/specialization_response_model.dart';
import 'package:docdoc/features/home/data/repos/home_repo.dart';
import 'package:docdoc/features/home/logic/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  List<SpecializationsData?>? specializationsList = [];
  void getSpecializations() async {
    emit(const HomeState.specializationsLoading());
    final result = await _homeRepo.getSpecialization();
    result.when(success: (specializationsResponseModel) {
      specializationsList =
          specializationsResponseModel.specializationDataList ?? [];
      getDoctorsList(specializationId: specializationsList?.first?.id);
      emit(HomeState.specializationsSuccess(specializationsList));
    }, failure: (errorHandler) {
      HomeState.specializationsError(errorHandler);
    });
  }

  void getDoctorsList({required int? specializationId}) {
    List<Doctors?>? specializationsDoctorsList =
        getDoctorsListBySpecializationId(specializationId);
    if (!specializationsDoctorsList.isNullOrEmpty()) {
      emit(HomeState.doctorSuccess(specializationsDoctorsList));
    } else {
      emit(HomeState.doctorsError(ErrorHandler.handle('No Doctors Found')));
    }
  }

  List<Doctors?>? getDoctorsListBySpecializationId(int? specializationId) {
    return specializationsList
            ?.firstWhere(
                (specialization) => specialization?.id == specializationId)
            ?.doctorsList ??
        [];
  }
}
