import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


import '../MyTheme.dart';
import '../category_tab/category_tab.dart';
import '../components/FormFild.dart';
import '../fav_tab/fav_tab.dart';
import '../home_tab/home_tab.dart';
import '../profile_tab/profile_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/Route_Title.png'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 15),
            child: Container(
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      child: Custom_Form(
                        preIcon: Icon(
                          CupertinoIcons.search,
                          color: MyTheme.primeColor,
                        ),
                        onChanged: (value) {
                          print(value);
                        },
                        Label: 'what do you search for?',
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.cart,
                          color: MyTheme.primeColor,
                        ))
                  ],
                )),
          ),
          Expanded(
            child: Container(
              child: tabs[currentIndex],
            ),
          )

        ],
      ),
      bottomNavigationBar:Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
              borderRadius: BorderRadiusDirectional.only(topEnd: Radius.circular(30),topStart: Radius.circular(30))
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: GNav(
            backgroundColor: MyTheme.primeColor,
            color: MyTheme.whiteColor,
            activeColor: MyTheme.primeColor,
            selectedIndex: currentIndex,
            tabBackgroundColor: MyTheme.whiteColor,
            padding: EdgeInsets.all(15),
            onTabChange: (value) {
              currentIndex = value;
              setState(() {
              });
            },


            tabs: const [
              GButton(icon: Icons.home,),
              GButton(icon: Icons.category,),
              GButton(icon: Icons.favorite_border,),
              GButton(icon: CupertinoIcons.person,)
            ],
          ),
        ),
      )
    );
  }
  List<Widget> tabs = [
    Home_tab(),
    Category_tab(),
    Fav_tab(),
    Profile_tab()
  ];
}
