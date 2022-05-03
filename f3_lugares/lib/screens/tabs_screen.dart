import 'package:f3_lugares/components/main_drawer.dart';
import 'package:f3_lugares/screens/countries_screen.dart';
import 'package:f3_lugares/screens/favoritos_screen.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _indexSelectedScreen = 0;

  List<Widget> _screens = [CountriesScreen(), FavoritosScreen()];

  _selectScreen(int index) {
    setState(() {
      _indexSelectedScreen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    /*
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Bora Vijar?'),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.category),
                text: 'Categoria',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Favoritos',
              )
            ],
          ),
        ),
        body: TabBarView(children: <Widget>[
          CountriesScreen(),
          FavoritosScreen(),
        ]),
      ),
    );*/

    return Scaffold(
      appBar: AppBar(title: Text('Bora Viajar?')),
      body: _screens[_indexSelectedScreen],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        unselectedItemColor: Colors.white,
        currentIndex: _indexSelectedScreen,
        backgroundColor: Theme.of(context).colorScheme.primary,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Países'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favoritos'),
        ],
      ),
      /*
      drawer: Drawer(
        child: Container(
          height: 120,
          padding: EdgeInsets.all(40),
          child: Text('Menu Principal'),
        ),
      ), */
      drawer: MainDrawer(),
    );
  }
}
