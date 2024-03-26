import 'package:get/get.dart';
import 'package:socket_io_client/socket_io_client.dart';

class SocketService extends GetxService {
  static SocketService get to => Get.find();
  late Socket _socket;

  Future<SocketService> init() async {
    _socket = io(
        'http://localhost:3000',
        OptionBuilder()
            .setTransports(['websocket'])
            .enableAutoConnect()
            .build());
    _socket.onConnectError((error) {
      print("Connection error: $error");
    });

    _socket.onConnect((data) {
      print("Connected");
    });

    _socket.onDisconnect((data) => print("disconnect"));
    return this;
  }

  void addPlayer(String name) {
    _socket.emit('addPlayer', name);
  }

  void allPlayer(String name) {
    _socket.emit('allPlayer', name);
  }

  void createSession(String name) {
    _socket.emit('createSession', name);
  }
  void joinSession(String name) {
    _socket.emit('deleteSession', name);
  }

  void deletePLayer(String name) {
    _socket.emit('deleteSession', name);
  }
}
