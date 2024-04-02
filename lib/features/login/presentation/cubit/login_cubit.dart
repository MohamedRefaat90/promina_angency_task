import 'package:bloc/bloc.dart';
import 'package:promina_angency_task/features/login/data/models/user.dart';
import 'package:promina_angency_task/features/login/data/repo/login_repo.dart';

import '../../../../core/networking/network_exceptions.dart';
import '../../data/models/user_input_data.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginStates<dynamic>> {
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(const intiState());
  Future emitLoginUser(UserInputData userInputData) async {
    emit(const LoadingState());
    var response = await _loginRepo.login(userInputData);

    response.when(success: (User userData) {
      emit(LoginStates.successState(userData));
    }, failure: (NetworkExceptions networkExceptions) {
      emit(LoginStates.failureState(networkExceptions));
    });
  }
}
