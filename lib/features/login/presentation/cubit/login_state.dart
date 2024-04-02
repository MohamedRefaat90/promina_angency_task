import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/network_exceptions.dart';

part 'login_state.freezed.dart';

@freezed
class LoginStates<T> with _$LoginStates<T> {
  const factory LoginStates.initState() = intiState<T>;
  const factory LoginStates.loadingState() = LoadingState<T>;
  const factory LoginStates.successState(T data) = SuccessState<T>;
  const factory LoginStates.failureState(NetworkExceptions networkExceptions) =
      FailureState<T>;
}


// @immutable
// sealed class LoginState {}

// final class LoginInitial extends LoginState {}

// final class LoginLoading extends LoginState {}

// final class LoginSuccess extends LoginState {
//   final User user;

//   LoginSuccess({required this.user});
// }

// final class LoginFailure extends LoginState {}
