import 'package:flutterdoc/core/networking/api_error_handler.dart';
import 'package:flutterdoc/core/networking/api_result.dart';
import 'package:flutterdoc/Features/login/data/models/login_request_body.dart';
import 'package:flutterdoc/Features/login/data/models/login_response.dart';
import 'package:flutterdoc/core/networking/api_service.dart';

/*
  Le LoginRepo (Repository) est une couche intermédiaire entre :
  le service API (ApiService), qui sait comment parler au serveur HTTP,
  et le ViewModel / Cubit / Bloc, qui gère la logique d’affichage.
*/
class LoginRepo {
  final ApiService _apiService;
  LoginRepo(this._apiService);
  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
