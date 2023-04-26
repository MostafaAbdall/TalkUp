import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
List<int> buttons =[0,1,2];
int selectedButton =0;
int buttonClicked=0;



bool isClicked = false;
bool isLight = false;
var dateController = TextEditingController();
List<bool> _selections = [false, false, false];
List<Color> _buttonColors = [Colors.grey, Colors.grey, Colors.grey];

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double appBarHeight = 100.0;
  final VoidCallback onPressed;
  final VoidCallback onClicked;
  Color mainColor = Color(0xff7fa6b7);

  MyAppBar({
    required this.onPressed,
    required this.onClicked,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: SafeArea(
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back_ios_new_sharp, color: Colors.white),
              onPressed: onPressed,
            ),
            SizedBox(
              width: 90,
            ),
            Expanded(
              child: isClicked
                  ? Text('')
                  : Text(
                      'Doctors',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
            ),
            MaterialButton(
              onPressed: onClicked,
              child: isClicked
                  ? Container(
                      width: isClicked ? 190 : 0,
                      height: isClicked ? 50 : 0,
                      decoration: BoxDecoration(
                          boxShadow: [BoxShadow()],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          color: Colors.white),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white.withOpacity(0),
                            child: Image(
                              image: AssetImage('assets/images/morsi.png'),
                              width: 50,
                              height: 50,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Mahmoud Morsi',
                                style: TextStyle(fontSize: 10),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Egypt',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.settings_outlined,
                                size: 20,
                                color: Color(0xff7fa6b7),
                              )),
                        ],
                      ),
                    )
                  : Image(
                      image: AssetImage('assets/images/ph2.png'),
                      width: 40,
                      height: 50,
                    ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100.0);
}

class DoctorProfile extends StatefulWidget {
  const DoctorProfile({Key? key}) : super(key: key);

  @override
  State<DoctorProfile> createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(
          onPressed: () {
            Navigator.pop(context);
          },
          onClicked: () {
            setState(() {
              isClicked = !isClicked;
            });
          },
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 30, bottom: 15.0, right: 15, left: 15),
                          child: SingleChildScrollView(
                            child: Container(
                              width: double.infinity,
                              height: 635,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffECCFC8).withOpacity(0.5)),
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: 220,
                                              ),
                                              Center(
                                                child: Container(
                                                  width: 65,
                                                  height: 23,
                                                  decoration: BoxDecoration(
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey
                                                            .withOpacity(0.6),
                                                        spreadRadius: 1,
                                                        blurRadius: 5,
                                                        offset: Offset(0, 5),
                                                      ),
                                                    ],
                                                  ),
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                DoctorProfile()),
                                                      );
                                                    },
                                                    child: Text(
                                                      'Book Session',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 5.0),
                                                    ),
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      primary:
                                                          Color(0xff7fa6b7),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            width: 65,
                                            height: 17,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Color(0xff7fa6b7)
                                                  .withOpacity(0.7),
                                            ),
                                            child: Center(
                                                child: Text(
                                              'Psychiatrist',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.white),
                                            )),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Sara Zidan',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Color(0xff7fa6b7)),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Image(
                                                image: AssetImage(
                                                    'assets/images/tick.png'),
                                                width: 14,
                                                height: 14,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Master's degree in Neurology and Psychiatry",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xff7fa6b7)),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                  Image(
                                                    image: AssetImage(
                                                        'assets/images/star2.png'),
                                                    width: 61,
                                                    height: 10,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 75,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      SizedBox(
                                                        width: 20,
                                                      ),
                                                      Text(
                                                        "Reviews",
                                                        style: TextStyle(
                                                            fontSize: 11,
                                                            color: Color(
                                                                0xff1B3662)),
                                                      ),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Text(
                                                        "( 315 )",
                                                        style: TextStyle(
                                                            fontSize: 11,
                                                            color: Color(
                                                                0xff7fa6b7)),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "price per session",
                                                    style: TextStyle(
                                                        fontSize: 11,
                                                        color:
                                                            Color(0xff7fa6b7)),
                                                  ),
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 30,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      SizedBox(
                                                        width: 20,
                                                      ),
                                                      Text(
                                                        "250 EGP /",
                                                        style: TextStyle(
                                                            fontSize: 11,
                                                            color: Color(
                                                                0xff7fa6b7)),
                                                      ),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Text(
                                                        "30 mins",
                                                        style: TextStyle(
                                                            fontSize: 11,
                                                            color: Color(
                                                                0xff1B3662)),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            "Next Available session",
                                            style: TextStyle(
                                                fontSize: 11,
                                                color: Color(0xff3AC917)),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            "19 Mar, Saturday, 12:00 AM",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xff7fa6b7)),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            "      _________________________________________ ",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xff7fa6b7)),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            "About the expert",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Color(0xff7fa6b7)),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                  Text(
                                                    "Certificates",
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color:
                                                            Color(0xff7fa6b7)),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SizedBox(
                                                            width: 20,
                                                          ),
                                                          Column(
                                                            children: [
                                                              Container(
                                                                height: 50,
                                                                width: 1.0,
                                                                color: Color(
                                                                    0xffECAB99),
                                                              ),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Schema Therapy Diploma\nInstitute for Schema Therapy of Switherland",
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                      Text(
                                                        "Jun 2022 - Jun 2022",
                                                        style: TextStyle(
                                                            fontSize: 11,
                                                            color: Color(
                                                                0xff468195)),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SizedBox(
                                                            width: 20,
                                                          ),
                                                          Column(
                                                            children: [
                                                              Container(
                                                                height: 50,
                                                                width: 1.0,
                                                                color: Color(
                                                                    0xffECAB99),
                                                              ),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Art in medicine fellowship Program\nArts in Medicine Fellowship",
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                      Text(
                                                        "Feb 2022 - May 2022",
                                                        style: TextStyle(
                                                            fontSize: 11,
                                                            color: Color(
                                                                0xff468195)),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            "      _________________________________________ ",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xff7fa6b7)),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                  Text(
                                                    "Experience",
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color:
                                                            Color(0xff7fa6b7)),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SizedBox(
                                                            width: 20,
                                                          ),
                                                          Column(
                                                            children: [
                                                              Container(
                                                                height: 50,
                                                                width: 1.0,
                                                                color: Color(
                                                                    0xffECAB99),
                                                              ),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Licensed Physician\nEgyptian Medical Syndicate",
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                      Text(
                                                        "Mar 1992 - Present",
                                                        style: TextStyle(
                                                            fontSize: 11,
                                                            color: Color(
                                                                0xff468195)),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SizedBox(
                                                            width: 20,
                                                          ),
                                                          Column(
                                                            children: [
                                                              Container(
                                                                height: 50,
                                                                width: 1.0,
                                                                color: Color(
                                                                    0xffECAB99),
                                                              ),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Humanitarian Coordinator\nThe United Nations Population Fund -UNFPA",
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                      Text(
                                                        "Sep 2015 - Apr 2016",
                                                        style: TextStyle(
                                                            fontSize: 11,
                                                            color: Color(
                                                                0xff468195)),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SizedBox(
                                                            width: 20,
                                                          ),
                                                          Column(
                                                            children: [
                                                              Container(
                                                                height: 50,
                                                                width: 1.0,
                                                                color: Color(
                                                                    0xffECAB99),
                                                              ),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Manager of Trafficking Victim Support Unit\nInternational Organization for Migration (IOM)",
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                      Text(
                                                        "Feb 2010 - Mar 2012",
                                                        style: TextStyle(
                                                            fontSize: 11,
                                                            color: Color(
                                                                0xff468195)),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 40,
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Text(
                                                'Select date',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Color(0xff7fa6b7)),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Container(
                                            width: 300,
                                            child: TextFormField(
                                              onTap: () {
                                                showDatePicker(
                                                        context: context,
                                                        initialDate:
                                                            DateTime.now(),
                                                        firstDate:
                                                            DateTime.now(),
                                                        lastDate:
                                                            DateTime.parse(
                                                                '2024-12-30'))
                                                    .then((value) {
                                                  dateController.text =
                                                      DateFormat.yMMMd()
                                                          .format(value!);
                                                });
                                              },
                                              textAlign: TextAlign.center,
                                              keyboardType:
                                                  TextInputType.datetime,
                                              controller: dateController,
                                              decoration: InputDecoration(
                                                labelText: 'Date',
                                                prefixIcon:
                                                    Icon(Icons.calendar_month),
                                                border: OutlineInputBorder(),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Text(
                                                'Select time',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Color(0xff7fa6b7)),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Container(
                                                width: 55,
                                                height: 23,
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(0.6),
                                                      spreadRadius: 1,
                                                      blurRadius: 5,
                                                      offset: Offset(0, 5),
                                                    ),
                                                  ],
                                                ),
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      selectedButton=0;
                                                    });
                                                  },
                                                  child: Text(
                                                    '12:00 AM',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 5.0,
                                                        color: Colors.black),
                                                  ),
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    primary:  selectedButton==0? Color(0xffECAB99):Colors.white
                                                        ,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 30,
                                              ),
                                              Container(
                                                width: 55,
                                                height: 23,
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(0.6),
                                                      spreadRadius: 1,
                                                      blurRadius: 5,
                                                      offset: Offset(0, 5),
                                                    ),
                                                  ],
                                                ),
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      selectedButton=1;
                                                    });
                                                  },
                                                  child: Text(
                                                    '1:00 PM',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 5.0,
                                                        color: Colors.black),
                                                  ),
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    primary: selectedButton==1? Color(0xffECAB99):Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 30,
                                              ),
                                              Container(
                                                width: 55,
                                                height: 23,
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(0.6),
                                                      spreadRadius: 1,
                                                      blurRadius: 5,
                                                      offset: Offset(0, 5),
                                                    ),
                                                  ],
                                                ),
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      selectedButton=2;
                                                    });
                                                  },
                                                  child: Text(
                                                    '2:00 PM',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 5.0,
                                                        color: Colors.black),
                                                  ),
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    primary: selectedButton==2? Color(0xffECAB99):Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Text(
                                                'Select session duration',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Color(0xff7fa6b7)),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Container(
                                                width: 55,
                                                height: 23,
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(0.6),
                                                      spreadRadius: 1,
                                                      blurRadius: 5,
                                                      offset: Offset(0, 5),
                                                    ),
                                                  ],
                                                ),
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    setState(() {
                                                     buttonClicked=1;
                                                    });
                                                  },
                                                  child: Text(
                                                    '30 Mins',
                                                    style: TextStyle(
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 5.0,
                                                        color: Colors.black),
                                                  ),
                                                  style:
                                                  ElevatedButton.styleFrom(
                                                    primary:  buttonClicked==1? Color(0xffECAB99):Colors.white
                                                    ,
                                                    shape:
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          30),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 30,
                                              ),
                                              Container(
                                                width: 55,
                                                height: 23,
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(0.6),
                                                      spreadRadius: 1,
                                                      blurRadius: 5,
                                                      offset: Offset(0, 5),
                                                    ),
                                                  ],
                                                ),
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      buttonClicked=0;
                                                    });
                                                  },
                                                  child: Text(
                                                    '60 Mins',
                                                    style: TextStyle(
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 5.0,
                                                        color: Colors.black),
                                                  ),
                                                  style:
                                                  ElevatedButton.styleFrom(
                                                    primary: buttonClicked==0? Color(0xffECAB99):Colors.white,
                                                    shape:
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          30),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 30,
                                              ),

                                            ],
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            top: 0,
                            left: 145,
                            child: Container(
                                width: 72,
                                height: 72,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white.withOpacity(0),
                                  child: Image(
                                    image: AssetImage('assets/images/dr2.png'),
                                    width: 80,
                                    height: 80,
                                  ),
                                ))),
                      ],
                    ),
                  )
                ],
              ),
              Positioned(
                  top: 0,
                  left: 154,
                  child: Container(
                    width: isClicked ? 190 : 0,
                    height: isClicked ? 170 : 0,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.6),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: Offset(0, 5),
                          )
                        ],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 25,
                          child: Row(
                            children: [
                              //SizedBox(width: 5,),
                              MaterialButton(
                                  height: 10,
                                  onPressed: () {},
                                  child: Text(
                                    'Profile settings',
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Color(0xff7fa6b7),
                                        decoration: TextDecoration.underline),
                                  )),
                            ],
                          ),
                        ),
                        Container(
                          height: 25,
                          child: Row(
                            children: [
                              //SizedBox(width: 5,),
                              MaterialButton(
                                  height: 10,
                                  onPressed: () {},
                                  child: Text(
                                    'Language',
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Color(0xff7fa6b7),
                                        decoration: TextDecoration.underline),
                                  )),
                            ],
                          ),
                        ),
                        Container(
                          height: 25,
                          child: Row(
                            children: [
                              //SizedBox(width: 5,),
                              MaterialButton(
                                  height: 10,
                                  onPressed: () {},
                                  child: Text(
                                    'Payment info',
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Color(0xff7fa6b7),
                                        decoration: TextDecoration.underline),
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 25,
                          child: Row(
                            children: [
                              //SizedBox(width: 10,),
                              MaterialButton(
                                  height: 10,
                                  onPressed: () {
                                    setState(() {
                                      isLight = !isLight;
                                    });
                                  },
                                  child: isLight
                                      ? Text(
                                          'Dark Mode',
                                          style: TextStyle(
                                            fontSize: 11,
                                            color: Color(0xff7fa6b7),
                                          ),
                                        )
                                      : Text(
                                          'Light Mode',
                                          style: TextStyle(
                                            fontSize: 11,
                                            color: Color(0xff7fa6b7),
                                          ),
                                        )),

                              isLight
                                  ? Icon(
                                      Icons.shield_moon_outlined,
                                      color: Color(0xff7fa6b7),
                                    )
                                  : Icon(Icons.sunny, color: Color(0xff7fa6b7)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ));
  }
}
