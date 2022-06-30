import 'dart:io';
import 'dart:async';
import 'dart:math';

import 'package:f10_aut_and_push/core/models/chat_user.dart';
import 'package:f10_aut_and_push/core/services/auth/auth_service.dart';

//Simula o serviço de autenticação
class AuthMockService implements AuthService {
  static final _defaultUser = ChatUser(
    id: '456',
    name: 'Ana',
    email: 'ana@cod3r.com.br',
    imageURL: 'assets/images/avatar.png',
  );

  //static - associado a classe e não a instancia
  //varias instancias de AuthMockService - Mesma lista de usuários
  //varias instancias de AuthMockService - Mesmo usuário
  static Map<String, ChatUser> _users = {
    _defaultUser.email: _defaultUser,
  };

  static ChatUser? _currentUser;

  static MultiStreamController<ChatUser?>? _controller;

  //stream - lidando com usuários
  //Stream - valores gerados por demanda - iteração na aplicação
  // - não logado: usuario nulo
  // - logado: usuario valido
  // - logoff: nulo
  static final _userStream = Stream<ChatUser?>.multi((controller) {
    _controller = controller;
    _updateUser(_defaultUser);
  });

  ChatUser? get currentUser {
    return _currentUser;
  }

  Stream<ChatUser?> get userChanges {
    return _userStream;
  }

  Future<void> signup(
    String name,
    String email,
    String password,
    File? image,
  ) async {
    final newUser = ChatUser(
      id: Random().nextDouble().toString(),
      name: name,
      email: email,
      imageURL: image?.path ?? 'assets/images/avatar.png',
    );

    _users.putIfAbsent(email, () => newUser);
    _updateUser(newUser);
  }

  Future<void> login(String email, String password) async {
    _updateUser(_users[email]);
  }

  Future<void> logout() async {
    _updateUser(null);
  }

  static void _updateUser(ChatUser? user) {
    _currentUser = user;
    _controller?.add(_currentUser);
  }
}
