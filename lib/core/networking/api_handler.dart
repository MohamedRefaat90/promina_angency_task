import 'package:dio/dio.dart';
import 'package:promina_angency_task/features/login/data/models/user.dart';
import 'package:promina_angency_task/features/login/data/models/user_input_data.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'api_handler.g.dart';

@RestApi(baseUrl: 'https://technichal.prominaagency.com/api/')
abstract class ApiHandler {
  factory ApiHandler(Dio dio, {String baseUrl}) = _ApiHandler;

  @GET('my-gallery')
  Future<List<String>> getAllImages(@Header('Authorization') String userToken);

  @POST('auth/login')
  Future<User> login(@Body() UserInputData userData);

  @POST('upload')
  Future uploadImages(
      @Body() String imagePath, @Header('Authorization') String userToken);
}
