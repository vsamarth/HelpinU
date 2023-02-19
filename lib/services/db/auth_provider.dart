import 'package:flutter_mongodb_realm/flutter_mongo_realm.dart';
import 'package:helpin_u/models/auth_model.dart';

class AuthProvider {

  final RealmApp app = RealmApp();

  Future<CoreRealmUser> login(String email, String password) async {
    try {
      return await app.login(Credentials.emailPassword(email, password));
      
    } catch (e) {
      print(e);
      return Future.error(e);
    
    }
  }

  Future<bool?> register(String email, String password) async {
    try {
       return await app.registerUser(email, password);
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<void> logout() async {
    
  }

  Future<CoreRealmUser?> get currentUser async {
    return app.currentUser;
  }
}