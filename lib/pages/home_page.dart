import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/pages/direcciones_page.dart';
import 'package:qr_reader/pages/mapasHistorial_pages.dart';
import 'package:qr_reader/provider/ui_provider.dart';
import 'package:qr_reader/widgets/custom_navigatorBar.dart';
import 'package:qr_reader/widgets/scan_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Historial'),
        actions: [Icon(Icons.delete_forever)],
      ),
      body: _HomePageBody(),
      bottomNavigationBar: CustomNavigationBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  const _HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ///obtener el seleted
    final iuProvider=Provider.of<UiProvider>(context);


    final currentIndex = iuProvider.selectedMenuOpt;
    switch (currentIndex) {
      case 0:
        return MapaHistialPage();
      case 1:
        return DireccionesPage();
      default:
        return MapaHistialPage();
    }
  }
}
