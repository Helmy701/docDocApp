import 'package:dio/dio.dart';
import 'package:docdoc/core/networking/api_constants.dart';
import 'package:docdoc/features/login/data/models/login_request_body.dart';
import 'package:docdoc/features/login/data/models/login_response.dart';
import 'package:retrofit/http.dart';
part 'api_service.g.dart';

// rerofit anotation
@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,

    // @Body() Map<String, dynamic> body,
  );
}
