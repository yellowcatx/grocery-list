import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconly/iconly.dart';
import 'package:supermarketing/database/data_base.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final db = toDoDataBase();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(253, 249, 236, 1),
      body: Center(),
      bottomNavigationBar: GNav(
        mainAxisAlignment: MainAxisAlignment.center,
        backgroundColor: Color.fromRGBO(243, 211, 188, 100),
        gap: 4,
        tabs: const [
          GButton(
            icon: IconlyBroken.home,
            text: 'Home',
          ),
          GButton(
            icon: IconlyBroken.plus,
            text: 'Criar Lista',
          ),
          GButton(
            icon: IconlyBroken.document,
            text: 'Listas',
          ),
          GButton(
            icon: IconlyBroken.setting,
            text: 'Configurações',
          )
        ],
        selectedIndex: 0,
        onTabChange: (index) {},
      ),
    );
  }
}
