import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:promina_angency_task/features/login/data/models/user.dart';
import 'package:promina_angency_task/features/login/data/repo/login_repo.dart';

import '../../data/models/user_input_data.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  User user = User();
  LoginCubit(this._loginRepo) : super(LoginInitial());
  Future login(UserInputData userInputData) async {
    emit(LoginLoading());

    user = await _loginRepo.login(userInputData);

    emit(LoginSuccess());
  }
}
