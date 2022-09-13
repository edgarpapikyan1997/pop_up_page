import 'package:flutter/material.dart';
import '../bottom_sheet.dart';


class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Botton App",
      home: OnPressedButton(),
    );
  }
}

class OnPressedButton extends StatelessWidget {
  const OnPressedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text("Press The Button")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10)),
            ElevatedButton(
                onPressed: () {
                  bottomSheet(context);
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue)),
                child: const Text("PRESS")),
          ],
        ),
      ),
    );
  }
}
