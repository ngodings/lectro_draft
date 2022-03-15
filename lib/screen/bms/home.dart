import 'package:flutter/material.dart';
import 'package:lectro_draft/constants.dart';
import 'package:lectro_draft/widgets/monitor.dart';
import 'package:lectro_draft/widgets/profil_card.dart';
import 'package:lectro_draft/widgets/progress_bar.dart';
import 'package:lectro_draft/widgets/switch_battery.dart';
import 'package:lectro_draft/widgets/title_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BMSHome extends StatefulWidget {
  const BMSHome({Key? key}) : super(key: key);

  @override
  State<BMSHome> createState() => _BMSHomeState();
}

class _BMSHomeState extends State<BMSHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: background,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: const Color(0xFF18573A),
          elevation: 3.0,
          title: const Text(
            "Home",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18.0,
              letterSpacing: 1.2,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: darkGreen,
        body: Stack(
          children: <Widget>[
            Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  AspectRatio(
                    aspectRatio: 2.0,
                    child: Image.asset('assets/images/welcome.png'),
                  ),
                ],
              ),
            ),
            Positioned(
              top: (MediaQuery.of(context).size.width / 1.2) - 94.0,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: background,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(32.0),
                      topRight: Radius.circular(32.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        offset: const Offset(1.1, 1.1),
                        blurRadius: 10.0),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(
                          height: 6,
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(top: 12.0, left: 18, right: 16),
                          child: Text(
                            'Dasboard BMS',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              letterSpacing: 0.5,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16, right: 16, bottom: 10),
                          child: ProfilCard(
                            images: "assets/images/p1.jpg",
                            titleCard: "Profil",
                            titleText: "User Beta",
                            subText: "username",
                            status: "Active",
                            press: () {},
                          ),
                        ),
                        const TitleView(
                          titleTxt: "Pick one for monitoring",
                          icons: Icon(FontAwesomeIcons.laptopHouse),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          child: Wrap(
                            spacing: 20,
                            runSpacing: 20,
                            children: const <Widget>[
                              Monitor(
                                title: "Power",
                                batasAtas: 100,
                                batasBawah: 500,
                                satuan: "watt",
                              ),
                              Monitor(
                                title: "Arus",
                                batasAtas: 400,
                                batasBawah: 500,
                                satuan: "A",
                              ),
                              Monitor(
                                title: "Voltage",
                                batasAtas: 250,
                                batasBawah: 500,
                                satuan: "Volt",
                              ),
                              Monitor(
                                title: "Percentage",
                                batasAtas: 100,
                                batasBawah: 500,
                                satuan: "%",
                              ),
                            ],
                          ),
                        ),

                        const SimpleProgressBar(
                          title: "Temperature 1 ",
                          value: 50,
                          batasBawah: 100,
                        ),

                        const SimpleProgressBar(
                          title: "Temperature 2 ",
                          value: 60,
                          batasBawah: 100,
                        ),

                        const SimpleProgressBar(
                          title: "Temperature 3 ",
                          value: 30,
                          batasBawah: 100,
                        ),
                        // const SizedBox(
                        //   height: 6,
                        //   width: 16,
                        // ),
                        const SwitchBattery(),
                        const SizedBox(
                          height: 26,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: (MediaQuery.of(context).size.width / 1.2) - 24.0 - 105,
              right: 35,
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                elevation: 10.0,
                child: const SizedBox(
                  width: 60,
                  height: 60,
                  child: Center(
                    child: Icon(
                      Icons.home,
                      color: darkGreen,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
