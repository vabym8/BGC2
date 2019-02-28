import 'package:bloodgroup_compatibility/blood_data.dart';
import 'package:bloodgroup_compatibility/blood_grid.dart';
import 'package:bloodgroup_compatibility/text_style.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> with SingleTickerProviderStateMixin {

  List<String> data = BloodData.bloodGroup;
  static String myBloodGroup = 'B+';

  final List<Tab> myTabs = <Tab>[
    Tab(
      text: '$myBloodGroup CAN DONATE',
    ),
    Tab(text: '$myBloodGroup CAN RECEIVE'),
  ];

  List<bool> currentDonateList = BloodData.bpd;
  List<bool> currentReceiveList = BloodData.bpr;

  List<bool> donateOrReceive(bool donate) {
    return donate ? currentDonateList : currentReceiveList;
  }

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BloodGroup Compatibility',
      theme: ThemeData(
        primaryColor: Color(0xFFD0021B),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'BloodGroup Compatibility',
            style: TextStyle(
              fontFamily: 'Roboto',
            ),
          ),
          bottom: TabBar(
            controller: _tabController,
            tabs: <Tab>[
              Tab(
                text: '$myBloodGroup CAN DONATE',
              ),
              Tab(
                text: '$myBloodGroup CAN RECEIVE',
              ),
            ],
            indicatorColor: Colors.white,
          ),
        ),
        body: Container(
          color: Color(0xFFD0021B),
          child: Column(
            children: <Widget>[
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Container(
                      child: BloodGrid(donateOrReceive(true)),
                    ),
                    Container(
                      child: BloodGrid(donateOrReceive(false)),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        circleButton(BloodData.bloodGroup[0]),
                        circleButton(BloodData.bloodGroup[2]),
                        circleButton(BloodData.bloodGroup[4]),
                        circleButton(BloodData.bloodGroup[6]),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        circleButton(BloodData.bloodGroup[1]),
                        circleButton(BloodData.bloodGroup[3]),
                        circleButton(BloodData.bloodGroup[5]),
                        circleButton(BloodData.bloodGroup[7]),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget circleButton(String type) {

    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 10.0),
      child: FloatingActionButton(
        onPressed: () {
          setState(() {
            switch (type) {
              case 'A+':
                myBloodGroup = BloodData.bloodGroup[0];
                currentDonateList = BloodData.apd;
                currentReceiveList = BloodData.apr;
                break;
              case 'A-':
                myBloodGroup = BloodData.bloodGroup[1];
                currentDonateList = BloodData.and;
                currentReceiveList = BloodData.anr;
                break;
              case 'B+':
                myBloodGroup = BloodData.bloodGroup[2];
                currentDonateList = BloodData.bpd;
                currentReceiveList = BloodData.bpr;
                break;
              case 'B-':
                myBloodGroup = BloodData.bloodGroup[3];
                currentDonateList = BloodData.bnd;
                currentReceiveList = BloodData.bnr;
                break;
              case 'AB+':
                myBloodGroup = BloodData.bloodGroup[4];
                currentDonateList = BloodData.abpd;
                currentReceiveList = BloodData.abpr;
                break;
              case 'AB-':
                myBloodGroup = BloodData.bloodGroup[5];
                currentDonateList = BloodData.abnd;
                currentReceiveList = BloodData.abnr;
                break;
              case 'O+':
                myBloodGroup = BloodData.bloodGroup[6];
                currentDonateList = BloodData.opd;
                currentReceiveList = BloodData.opr;
                break;
              case 'O-':
                myBloodGroup = BloodData.bloodGroup[7];
                currentDonateList = BloodData.ond;
                currentReceiveList = BloodData.onr;
                break;
            }
          });
        },
        child: Text(
          type,
          style: StyleText.textStyle,
        ),
        backgroundColor: Colors.white,
      ),
    );
  }

}
