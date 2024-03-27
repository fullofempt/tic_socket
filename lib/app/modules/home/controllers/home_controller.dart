import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tic_socket/services/socket_service.dart';

class HomeController extends GetxController {
  TextEditingController playerName = TextEditingController();
  RxList<String> players = <String>[].obs;

  @override
  void onInit() {
    super.onInit();
  }

  void addPlayer() {
    SocketService.to.addPlayer(playerName.text);
  }

  void getAllPlayers() {
  SocketService.to.allPlayer('');
}
   void deletePlayer() {
  SocketService.to.deletePLayer('');
}

  void createSession(){
    SocketService.to.createSession('');
  }

  void joinSession(){
    SocketService.to.joinSession('');
  }
}
