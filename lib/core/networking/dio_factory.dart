// c’est une bibliothèque Flutter/Dart pour faire des requêtes
//HTTP (GET, POST, PUT, DELETE, etc.).
import 'package:dio/dio.dart';
//pretty_dio_logger : c’est un “interceptor” (un espion) qui affiche joliment
//dans la console les requêtes et réponses (utile pour le débogage).
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

/* DioFactory est une factory (fabrique) pour configurer 
  un client HTTP avec la librairie Dio.
 */
//Cette classe sert à créer et configurer un seul objet Dio,
//que l'on peut utiliser partout dans l'app
class DioFactory {
  ///private constructor
  ///Le constructeur est privé (_) pour empêcher
  ///la création d'instances multiples de DioFactory.
  DioFactory._();
  static Dio? dio;
  static Dio getDio() {
    //délai maximal (timeout) de 30 secondes pour les connexions et les
    //réceptions de données.
    Duration timeOut = const Duration(seconds: 30);
    if (dio == null) {
      dio = Dio();
      //configure les options de Dio
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      //On ajoute un interceptor pour le log (grâce à addDioInterceptor())
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  ///Cette méthode ajoute un interceptor (PrettyDioLogger)
  ///à l'objet Dio pour afficher joliment les requêtes
  ///et réponses HTTP dans la console.
  static void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
}
//on peut pas faire:var client = DioFactory();
//mais on fait:var client = DioFactory.getDio();
