import 'package:flutterdoc/Features/sign_up/data/models/sign_up_request_body.dart';
import 'package:flutterdoc/Features/sign_up/data/models/sign_up_response.dart';
import 'package:flutterdoc/core/networking/api_error_handler.dart';
import 'package:flutterdoc/core/networking/api_result.dart';
import 'package:flutterdoc/core/networking/api_service.dart';

class SignUpRepo {
  final ApiService _apiService;
  SignUpRepo(this._apiService);
  Future<ApiResult<SignUpResponse>> signUp(
      SignUpRequestBody signUpRequestBody) async {
    try {
      final response = await _apiService.signUp(signUpRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
