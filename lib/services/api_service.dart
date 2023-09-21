import 'package:car_app1/core/models/login_model.dart';
import 'package:dio/dio.dart';
// ignore: depend_on_referenced_packages
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  static ApiService init() {
    final dio = Dio();
    dio.options.baseUrl = 'https://reqres.in';

    return ApiService(dio);
  }

  @POST('/api/login')
  Future<LoginResponse> login(@Body() LoginRequest loginRequest);

  // @GET('/api/users?page=2')
  // Future<List<AllotResponse>> getAllotView();
}
