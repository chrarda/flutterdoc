import 'package:flutterdoc/core/networking/api_error_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_state.freezed.dart';

@freezed
class SignUpState<T> with _$SignUpState<T> {
  const factory SignUpState.initial() = _Initial;

  const factory SignUpState.signupLoading() = SignupLoading;
  const factory SignUpState.signupSuccess(T data) = SignupSuccess<T>;
  const factory SignUpState.signupError({required String error}) = SignupError;
}
