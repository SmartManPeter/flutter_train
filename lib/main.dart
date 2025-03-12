import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          elevation: 4,
          leading: Transform.translate(
            offset: Offset(-8, 0),
            child: Icon(
              Icons.chevron_left,
              color: Colors.lightBlue,
              size: 50,
            ),
          ),
          actions: [
            Row(
              children: [
                Icon(
                  Icons.add_circle_outline,
                  color: Colors.lightBlue,
                  size: 32,
                ),
                SizedBox(
                  width: 25,
                ),
                Icon(
                  Icons.more_horiz,
                  color: Colors.lightBlue,
                  size: 37,
                ),
                SizedBox(
                  width: 8,
                ),
              ],
            )
          ],
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Container(
                  color: Colors.grey,
                  height: 0.3,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 0, left: 18.0, right: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FlutterLogo(
                        size: 25, // 設定大小
                        style: FlutterLogoStyle.markOnly, // 可選 markOnly / horizontal / stacked
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "flutter",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 0, left: 18.0, right: 18.0),
                  child: Row(
                    children: [
                      Text(
                        "flutter",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 0, left: 18.0, right: 18.0),
                  child: Wrap(
                    children: [
                      Text(
                        "Flutter makes it easy and fast to build beautiful apps for mobile and beyond",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 0, left: 18.0, right: 18.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.link,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "flutter.dev",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, bottom: 0, left: 18.0, right: 18.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star_outline_sharp,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "169k ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        "stars",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 21,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.fork_left,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "28.1k ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        "forks",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 21,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 0, left: 18.0, right: 18.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0xFF373A41),
                            borderRadius: BorderRadius.all(Radius.circular(8.0)), // 設置圓角半徑
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star_outline_sharp,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                'Star',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 21,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xFF373A41),
                          borderRadius: BorderRadius.all(Radius.circular(8.0)), // 設置圓角半徑
                        ),
                        child: Icon(
                          Icons.fork_left,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xFF373A41),
                          borderRadius: BorderRadius.all(Radius.circular(8.0)), // 設置圓角半徑
                        ),
                        child: Icon(
                          Icons.notification_add,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  color: Colors.grey,
                  height: 0.3,
                ),
                Container(
                  color: Color(0xFF17181C),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10, left: 18.0, right: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius: BorderRadius.all(Radius.circular(8.0)), // 設置圓角半徑
                          ),
                          child: Icon(
                            Icons.adjust,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Issuse',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Text(
                                '13,154',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 24,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.chevron_right,
                                color: Colors.grey,
                                size: 26,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      color: Colors.grey,
                      width: 75,
                      height: 0,
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.grey,
                        height: 0.2,
                      ),
                    ),
                  ],
                ),
                Container(
                  color: Color(0xFF17181C),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10, left: 18.0, right: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color(0xFF2190FF),
                            borderRadius: BorderRadius.all(Radius.circular(8.0)), // 設置圓角半徑
                          ),
                          child: Icon(
                            Icons.share,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Pull Requests',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Text(
                                '219',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 24,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.chevron_right,
                                color: Colors.grey,
                                size: 26,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      color: Colors.grey,
                      width: 75,
                      height: 0,
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.grey,
                        height: 0.2,
                      ),
                    ),
                  ],
                ),
                Container(
                  color: Color(0xFF17181C),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10, left: 18.0, right: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color(0xFFFED74C),
                            borderRadius: BorderRadius.all(Radius.circular(8.0)), // 設置圓角半徑
                          ),
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Actions',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Text(
                                '',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 24,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.chevron_right,
                                color: Colors.grey,
                                size: 24,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      color: Colors.grey,
                      width: 75,
                      height: 0,
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.grey,
                        height: 0.2,
                      ),
                    ),
                  ],
                ),
                Container(
                  color: Color(0xFF17181C),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10, left: 18.0, right: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color(0xFF9195A1),
                            borderRadius: BorderRadius.all(Radius.circular(8.0)), // 設置圓角半徑
                          ),
                          child: Icon(
                            Icons.terminal,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Projects',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Text(
                                '25',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 24,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.chevron_right,
                                color: Colors.grey,
                                size: 24,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      color: Colors.grey,
                      width: 75,
                      height: 0,
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.grey,
                        height: 0.2,
                      ),
                    ),
                  ],
                ),
                Container(
                  color: Color(0xFF17181C),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10, left: 18.0, right: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color(0xFF41434F),
                            borderRadius: BorderRadius.all(Radius.circular(8.0)), // 設置圓角半徑
                          ),
                          child: Icon(
                            Icons.bookmark,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Releases',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Text(
                                '7',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 26,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.chevron_right,
                                color: Colors.grey,
                                size: 24,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Color(0xFF17181C),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10, left: 18.0, right: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 65,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF2B2C31),
                              borderRadius: BorderRadius.all(Radius.circular(8.0)), // 設置圓角半徑
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8, bottom: 8, left: 8.0, right: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Flutter 3.16 bata (October 11,2,5)',
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'A year ago ',
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      Icon(
                                        Icons.radio_button_off,
                                        color: Colors.grey,
                                        size: 8,
                                      ),
                                      Text(
                                        ' Latest',
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      color: Colors.grey,
                      width: 75,
                      height: 0,
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.grey,
                        height: 0.2,
                      ),
                    ),
                  ],
                ),
                Container(
                  color: Color(0xFF17181C),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10, left: 18.0, right: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color(0xFF201F25),
                            borderRadius: BorderRadius.all(Radius.circular(8.0)), // 設置圓角半徑
                          ),
                          child: Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'More',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_up,
                                color: Colors.grey,
                                size: 24,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      color: Colors.grey,
                      width: 75,
                      height: 0,
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.grey,
                        height: 0.2,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
