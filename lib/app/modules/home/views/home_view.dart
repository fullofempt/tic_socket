import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextField(
              controller: controller.playerName,
              onSubmitted: (_) {
                controller.addPlayer();
              },
              decoration: InputDecoration(
                labelText: 'Enter player name',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                controller.addPlayer();
              },
              child: Text('Add Player'),
            ),
            ElevatedButton(
              onPressed: () {
                controller.getAllPlayers();
              },
              child: Text('Show All Players'),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     controller.deletePlayer();
            //   },
            //   child: Text('delete last Player'),
            // ),
            ElevatedButton(
              onPressed: () {
                controller.createSession();
              },
              child: Text('Session created'),
            ),
            ElevatedButton(
              onPressed: () {
                controller.joinSession();
              },
              child: Text('join session'),
            ),
            Obx(
              () => ListView.builder(
                shrinkWrap: true,
                itemCount: controller.players.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(controller.players[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
