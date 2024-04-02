import 'package:promina_angency_task/core/networking/api_handler.dart';
import 'package:promina_angency_task/core/networking/api_result.dart';
import 'package:promina_angency_task/core/networking/network_exceptions.dart';

import '../models/user.dart';
import '../models/user_input_data.dart';

class LoginRepo {
  final ApiHandler _apiHandler;

  LoginRepo(this._apiHandler);

  Future<ApiResult<User>> login(UserInputData userInputData) async {
    try {
      var userData = await _apiHandler.login(userInputData);

      return ApiResult.success(userData);
    } catch (error) {
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }
}
