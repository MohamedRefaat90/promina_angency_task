import 'package:promina_angency_task/core/networking/api_handler.dart';

import '../models/user.dart';
import '../models/user_input_data.dart';

class LoginRepo {
  ApiHandler _apiHandler;

  LoginRepo(this._apiHandler);

  Future<User> login(UserInputData userInputData) async {
    var response = await _apiHandler.login(userInputData);

    return User.fromJson(response.toJson());
  }
}
