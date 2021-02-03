import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

//Mis dependencias
import 'package:reto_1/src/components/navigation_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

enum BottonIcons {
  Home,
  Favorite,
  Search,
  Account,
}

class _HomePageState extends State<HomePage> {
  BottonIcons bottonIcons = BottonIcons.Home;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Stack(
        children: [
          bottonIcons == BottonIcons.Home
              ? Center(
                  child: Text(
                    'Hola desde Home',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                )
              : Container(),
          bottonIcons == BottonIcons.Account
              ? Center(
                  child: Text(
                    'Hola desde Account',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                )
              : Container(),
          bottonIcons == BottonIcons.Search
              ? Center(
                  child: Text(
                    'Hola desde Seach',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                )
              : Container(),
          bottonIcons == BottonIcons.Favorite
              ? Center(
                  child: Text(
                    'Hola desde Favorite',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                )
              : Container(),
          Align(  
            alignment: Alignment.bottomLeft,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NavigationBar(
                    onPressed: (){
                      setState(() {
                        bottonIcons = BottonIcons.Home;
                      });
                    },
                    bottonIcons: bottonIcons == BottonIcons.Home ? true : false,
                    icon: EvaIcons.home,
                    text: 'Hola',
                  ),
                  NavigationBar(
                    onPressed: (){
                      setState(() {
                        bottonIcons = BottonIcons.Favorite;
                      });
                    },
                    bottonIcons: bottonIcons == BottonIcons.Favorite ? true : false,
                    icon: EvaIcons.heartOutline,
                    text: 'Hola',
                  ),
                  NavigationBar(
                    onPressed: (){
                      setState(() {
                        bottonIcons = BottonIcons.Search;
                      });
                    },
                    bottonIcons: bottonIcons == BottonIcons.Search ? true : false,
                    icon: EvaIcons.search,
                    text: 'Searh',
                  ),
                  NavigationBar(
                    onPressed: (){
                      setState(() {
                        bottonIcons = BottonIcons.Account;
                      });
                    },
                    bottonIcons: bottonIcons == BottonIcons.Account ? true : false,
                    icon: EvaIcons.peopleOutline,
                    text: 'Account',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
