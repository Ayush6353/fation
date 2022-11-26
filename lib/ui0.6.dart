import 'package:flutter/material.dart';
import 'package:flutter1/fation.dart';
import 'package:flutter1/ui0.0.0.6.dart';
import 'package:flutter1/ui6.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_button/sign_button.dart';

class UI_0_6 extends StatefulWidget{
  @override
  State<UI_0_6> createState() => _UI_0_6State();
}
 var ls = [
   Image.network('https://events.flutter.dev/engage/assets/img/home/Flutter_MarketingAssets_Web__0007_GetInvolved.png?v=1617392235'),
   Image.network('https://miro.medium.com/max/801/1*RaLW5kA_2I2WmYz5sx0srA.png'),
   Image.network('https://events.flutter.dev/engage/assets/img/post-graphics/01-folio.png?v=1617392235'),
   Image.network('https://miro.medium.com/max/406/1*YkWeEU6ii0k_DW0bmrD0Ig.png'),
 ];
TabController? tabController;
class _UI_0_6State extends State<UI_0_6> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: ls.length,
        child: Builder(
          builder: (context) {
            return Center(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Center(
                      child: TabPageSelector(),
                    ),
                    Expanded(
                        child: TabBarView(
                          children: ls,
                        )
                    ),
                    FloatingActionButton(
                        onPressed: (){
                          TabController? tabController =
                              DefaultTabController.of(context);
                          if(!tabController!.indexIsChanging){
                            tabController.animateTo(ls.length-1);
                          }
                        },
                      child: Text('SKIP'),
                    ),
                    FloatingActionButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => FATION()));
                      },
                      child: Icon(Icons.arrow_back_rounded),
                    ),
                  ],
                ),
              ),
            );
          },
        )
    );
  }
}