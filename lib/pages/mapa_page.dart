import 'package:flutter/material.dart';
import 'package:qr_reader/widgets/custom_navigatorBar.dart';

class MapaPage extends StatelessWidget {
  const MapaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Historial'),
        actions: [
          IconButton(onPressed: null, icon: Icon(Icons.delete_forever)),
        ],
      ),
      body: Center(
        child: Text('Mapa Page'),
      ),
      
    );
  }
}
