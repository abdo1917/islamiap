import 'package:flutter/material.dart';
import 'package:islami/hadeth/hadetah_tab.dart';

import 'package:islami/quran/quran_tab.dart';
import 'package:islami/radio/radio_tab.dart';
import 'package:islami/sebha/sebha_tab.dart';

class HomeScreen extends StatefulWidget {

  static String routename= 'homescreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static final Color goldColor = Color(0xFFB7935F);
  int selectedIndex =0 ;
  List<Widget> tabs=[quran(),hadeth(),sebha(),radio()];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('images/default_bg.png')
          )
      ),
      child: Scaffold(

        appBar: AppBar(

          title: Text('                 islami  ' ,
          ),
        ),
        body: tabs[selectedIndex],
        bottomNavigationBar:
        Theme(data: Theme.of(context).copyWith(canvasColor:goldColor ),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index){
              selectedIndex = index;
              setState(() {});
            },


            items:[
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('images/icon_quran.png')),label: 'Quran'),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('images/icon_hadeth.png')),label: 'hadeth '),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('images/icon_sebha.png') ),label: 'sebha'),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('images/icon_radio.png') ),label: 'radio')
          ],
          ),
        ),

      ),

    );
  }
}
