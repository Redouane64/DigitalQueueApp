import 'package:digital_queue/controllers/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyAuthPage extends StatelessWidget {
  const VerifyAuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<RegisterController>();

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: constraints.maxHeight,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                    "assets/sign_up.png",
                    height: 300,
                    width: 300,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                  ),
                  child: Form(
                    key: const Key("verify_auth_form"),
                    child: Column(
                      children: [
                        const Text(
                          "Enter code sent your inbox",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        TextFormField(
                          controller: null,
                          autocorrect: false,
                          enableSuggestions: false,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                              labelText: "Code",
                              prefixIcon: Icon(
                                Icons.numbers,
                              ),
                              fillColor: Colors.white,
                              filled: true),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        SizedBox(
                          width: 192,
                          height: 48,
                          child: ElevatedButton(
                            onPressed: () {
                              Get.toNamed("/setName");
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Text(
                                  'Verify',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.login,
                                  size: 32.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
