import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class ConfigScreen extends StatelessWidget {
  ConfigScreen({super.key});

  final TextEditingController _inputIp =
      TextEditingController(text: "192.168.");
  final TextEditingController _inputPuerto =
      TextEditingController(text: "5000");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Dance(
                  delay: const Duration(seconds: 3),
                  child: Hero(
                    tag: "logo",
                    child: Image.asset(
                      'assets/general/logo.png',
                      height: 150,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Configuración inicial',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Flexible(
                    flex: 5,
                    child: TextFormField(
                      controller: _inputIp,
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.language), hintText: 'Ip'),
                    )),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                    flex: 3,
                    child: TextFormField(
                      controller: _inputPuerto,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.numbers), hintText: 'Puerto'),
                    )),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () async {
                    try {
                      if (_inputIp.text.isEmpty) {
                        Get.snackbar(
                            "¡Ups!", "El campo ip no puede estar vacío");
                        return;
                      }
                      if (_inputPuerto.text.isEmpty) {
                        Get.snackbar(
                            "¡Ups!", "El campo puerto no puede estar vacío");
                        return;
                      }

                      final Uri url = Uri(
                          scheme: 'http',
                          host: _inputIp.text,
                          port: int.tryParse(_inputPuerto.text));

                      await launchUrl(url, mode: LaunchMode.inAppWebView);
                    } catch (e) {
                      Get.snackbar("¡Ups!", e.toString());
                    }
                  },
                  child: const Text('Iniciar'))
            ],
          ),
          const Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('© 2024 Karen M '),
                  SizedBox(
                    height: 10,
                  )
                ],
              ))
        ],
      ),
    );
  }
}
