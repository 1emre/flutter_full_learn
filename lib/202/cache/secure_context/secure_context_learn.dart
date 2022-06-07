import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

enum _SecureKeys { token }

class ShareContextLearn extends StatefulWidget {
  ShareContextLearn({Key? key}) : super(key: key);

  @override
  State<ShareContextLearn> createState() => _ShareContextLearnState();
}

class _ShareContextLearnState extends State<ShareContextLearn> {
  final storage = FlutterSecureStorage();
  String tittle = '';
  TextEditingController controller = TextEditingController();

  void saveItems(String data) {
    setState(() {
      tittle = data;
    });
  }

  @override
  void initState() {
    super.initState();
    getSecureItems();
  }

  Future<void> getSecureItems() async {
    tittle = await storage.read(key: _SecureKeys.token.name) ?? '';

    if (tittle.isNotEmpty) {
      print('bu adam tokenı kullanmıs daha once');
      controller.text = tittle;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tittle),
      ),
      body: TextField(
        controller: controller,
        onChanged: saveItems,
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton.extended(
            onPressed: () async {
              await storage.write(key: _SecureKeys.token.name, value: tittle);
            },
            label: const Text('Save'),
          ),
          FloatingActionButton.extended(onPressed: () async {
            await storage.delete(key: _SecureKeys.token.name);
          }, label: const Text('Remove'))
        ],
      ),
    );
  }
}
