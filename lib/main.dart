import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ToDoList(),
  ));
}

class ToDoList extends StatefulWidget {
  @override
  _ToDoListState createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  CalendarController _controller = CalendarController();

  TextStyle dayStyle(FontWeight fontWeight) {
    return TextStyle(color: Colors.black, fontWeight: fontWeight);
  }

  @override
  void initState() {
    _controller = CalendarController();
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, //TODO: Masukan INSERT DATA
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  child: TableCalendar(
                    startingDayOfWeek: StartingDayOfWeek
                        .monday, // calendar dimulai dari hari senin
                    calendarStyle: CalendarStyle(
                      weekdayStyle: dayStyle(FontWeight.normal),
                      selectedColor: Color(0xff2ebbaf),
                      todayColor: Colors.purple[200],
                    ),
                    daysOfWeekStyle: DaysOfWeekStyle(
                      weekdayStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                      weekendStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    headerStyle: HeaderStyle(
                      formatButtonVisible: false,
                      leftChevronIcon: Icon(Icons.chevron_left, size: 28),
                      rightChevronIcon: Icon(Icons.chevron_right, size: 28),
                      titleTextStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontFamily: 'InterBold',
                          fontWeight: FontWeight.bold),
                    ),
                    calendarController: _controller,
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  padding: EdgeInsets.only(left: 30.0),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0)),
                    color: Color(0xff202546), // wanna bagian bawah
                  ),
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 30.0),
                            child: Text("Schedule",
                                style: new TextStyle(
                                    fontFamily: 'PopinsExBold',
                                    fontSize: 24,
                                    color: Colors.white)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 2.0),
                            child: Text("Created by: @achriz_mobdev",
                                style: new TextStyle(
                                    fontFamily: 'PopinsLight',
                                    fontSize: 14,
                                    color: Colors.white)),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 20.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.local_phone,
                                  color: Colors.white,
                                  size: 30.0,
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10.0),
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Daily Meeting",
                                        style: new TextStyle(
                                            fontSize: 18.0,
                                            fontFamily: 'PopinsBold',
                                            color: Colors.white),
                                      ),
                                      Text(
                                        "09:00 - 10:30",
                                        style: new TextStyle(
                                            fontSize: 12.0,
                                            fontFamily: 'PopinsLight',
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 20.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.music_note,
                                  color: Colors.white,
                                  size: 30.0,
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10.0),
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Practice Vocal",
                                        style: new TextStyle(
                                            fontSize: 18.0,
                                            fontFamily: 'PopinsBold',
                                            color: Colors.white),
                                      ),
                                      Text(
                                        "11:00 - 12:30",
                                        style: new TextStyle(
                                            fontSize: 12.0,
                                            fontFamily: 'PopinsLight',
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 20.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.video_call_rounded, //TODO:
                                  color: Colors.white,
                                  size: 30.0,
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10.0),
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Design Review",
                                        style: new TextStyle(
                                            fontSize: 18.0,
                                            fontFamily: 'PopinsBold',
                                            color: Colors.white),
                                      ),
                                      Text(
                                        "13:00 - 15:30",
                                        style: new TextStyle(
                                            fontSize: 12.0,
                                            fontFamily: 'PopinsLight',
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 20.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.wc, //TODO:
                                  color: Colors.white,
                                  size: 30.0,
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10.0),
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Date",
                                        style: new TextStyle(
                                            fontSize: 18.0,
                                            fontFamily: 'PopinsBold',
                                            color: Colors.white),
                                      ),
                                      Text(
                                        "18:00 - 22:00",
                                        style: new TextStyle(
                                            fontSize: 12.0,
                                            fontFamily: 'PopinsLight',
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
