import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingState();
}

class _SettingState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Setting"),
      ),
      body: const Center(
        child: Text('Kembali')
        // OutlinedButton(
            // onPressed: () {
            //   Navigator.pop(context);
            // },
            // child: const Text('Kembali')),
      ),
    );
  }
}