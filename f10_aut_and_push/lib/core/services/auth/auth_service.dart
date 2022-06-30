import 'dart:io';

import 'package:f10_aut_and_push/core/models/chat_user.dart';
import 'package:f10_aut_and_push/core/services/auth/auth_firebase_service.dart';
import 'package:f10_aut_and_push/core/services/auth/auth_mock_service.dart';

//Poderia usar o ChaangeNotificer?
//Provider par amonitorar as mudanças? SIM
abstract class AuthService {
  //métodos abstratos

  ChatUser? get currentUser; //opcional

  //sequencia de dados (lança mudança quando alguma mudnaça sobre o usuário acontecer)
  Stream<ChatUser?> get userChanges; //opcional

  Future<void> signup(
    String name,
    String email,
    String password,
    File? image,
  );

  Future<void> login(
    String email,
    String password,
  );

  Future<void> logout();

  //Retorna uma implementação a partir da classe mais genérica
  factory AuthService() {
    //return AuthMockService();
    return AuthFirebaseService();
  }
}
