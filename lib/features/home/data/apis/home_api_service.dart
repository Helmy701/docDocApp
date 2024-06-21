import 'package:dio/dio.dart';
import 'package:docdoc/core/networking/api_constants.dart';
import 'package:docdoc/features/home/data/apis/home_api_constant.dart';
import 'package:docdoc/features/home/data/models/specialization_response_model.dart';
import 'package:retrofit/http.dart';

part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class HomeAPIService {
  factory HomeAPIService(Dio dio) = _HomeAPIService;

  @GET(HomeApiConstant.SpecializationEP)
  Future<SpecializationsResponseModel> getSpecialization();
}
