import 'package:dio/dio.dart';
import 'package:flutterdoc/Features/login/data/models/login_response.dart';
import 'package:flutterdoc/Features/login/data/models/login_request_body.dart';
import 'package:flutterdoc/Features/sign_up/data/models/sign_up_request_body.dart';
import 'package:flutterdoc/Features/sign_up/data/models/sign_up_response.dart';
import 'package:retrofit/retrofit.dart';
//retrofit: c'est une librairie qui génère du code pour appeler ton API de manière
//simple, en utilisant des annotations.
import 'package:flutterdoc/core/networking/api_constants.dart';

part 'api_service.g.dart';

//@RestApi: instruction pour le générateur de code (build_runner) afin qu’il
//crée automatiquement une implémentation _ApiService
//dans le fichier api_service.g.dart.
//baseUrl: C'est l'URL de base pour toutes les requêtes API définies
// dans cette interface.
@RestApi(baseUrl: ApiConstants.baseUrl)
//Cette classe est un service d’API et son URL de base
// est defini par ApiConstants.baseUrl
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  //@POST(ApiConstants.login): Elle indique que la méthode juste en dessous
  //va envoyer une requête HTTP POST.
  //ApiConstants.login est la route ou l’endpoint sur le serveur.
  @POST(ApiConstants.login)
  /*
  Future<LoginResponse> → La méthode est asynchrone, elle renvoie un Future qui 
  contiendra un objet LoginResponse (ta réponse du serveur).
  @Body() → Le paramètre sera envoyé dans le corps de la requête (JSON).
  LoginRequestBody loginRequestBody → Objet contenant les champs à envoyer 
  (par ex. email et mot de passe).
  */
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);
  //signUp method
  @POST(ApiConstants.signUp)
  Future<SignUpResponse> signUp(@Body() SignUpRequestBody signUpRequestBody);
}
