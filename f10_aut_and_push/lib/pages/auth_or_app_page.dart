import 'package:f10_aut_and_push/core/models/chat_user.dart';
import 'package:f10_aut_and_push/core/services/auth/auth_service.dart';
import 'package:f10_aut_and_push/pages/auth_page.dart';
import 'package:f10_aut_and_push/pages/chat_page.dart';
import 'package:f10_aut_and_push/pages/loading_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthOrAppPage extends StatelessWidget {
  const AuthOrAppPage({Key? key}) : super(key: key);

  /* APP FIREBASE */
  Future<void> init(BuildContext context) async {
    await Firebase.initializeApp();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: init(context),
      builder: (ctx, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingPage();
        } else {
          return StreamBuilder<ChatUser?>(
            stream: AuthService().userChanges,
            builder: (ctx, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const LoadingPage();
              } else {
                return snapshot.hasData ? const ChatPage() : const AuthPage();
              }
            },
          );
        }
      },
    );
  }

  /*
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<ChatUser?>(
        //gera elementos ChatUser
        stream: AuthService()
            .userChanges, //stream de dados - com essa stream vai escolher a tela que deve ser carregada
        builder: (ctx, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return LoadingPage(); //autenticando
          } else {
            //se tem usuario vai para ChatPage, caso contrario AuthPage
            return snapshot.hasData ? ChatPage() : AuthPage();
          }
        },
      ),
    );
  }
  */
}
