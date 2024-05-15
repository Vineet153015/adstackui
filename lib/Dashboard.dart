import 'package:adstackui/chart.dart';
import 'package:adstackui/linechart.dart';
import 'package:adstackui/sidemenu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:table_calendar/table_calendar.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key});

  @override
  Widget build(BuildContext context) {
    DateTime today = DateTime.now();

    Widget myDatePickerContent() {
      return Column(
        children: [
          Container(
            child: TableCalendar(
              focusedDay: today,
              firstDay: DateTime.utc(2010, 12, 31),
              lastDay: DateTime.utc(2035, 12, 31),
            ),
          ),
        ],
      );
    }

    return Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      SizedBox(
        width: 380,
        child: Card(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/logo.png',
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              // border line
              Container(
                height: 2.0,
                color: const Color.fromARGB(255, 172, 172, 172),
              ),
              const SizedBox(
                height: 10,
              ),
              const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(
                  'assets/images/logo.png',
                ),
              ),
              const SizedBox(
                height: 9,
              ),
              const Text(
                "Pooja Mishra",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                ),
              ),
              // Buttons
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                width: 120,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Admin",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              // border line
              Container(
                height: 2.0,
                color: const Color.fromARGB(255, 172, 172, 172),
              ),
              // Home
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(left: 23, top: 5, bottom: 5),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(158, 158, 158, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                child: ListTile(
                  leading: const Icon(
                    Icons.home_filled,
                    size: 30,
                    color: Colors.black87,
                  ),
                  title: const Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  minLeadingWidth: 50,
                  onTap: () {},
                ),
              ),
              // Employees
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(left: 23, top: 5, bottom: 5),
                child: ListTile(
                  leading: const Icon(Icons.groups_2_rounded, size: 30),
                  title: const Text(
                    'Employees',
                    style: TextStyle(fontSize: 20),
                  ),
                  minLeadingWidth: 50,
                  onTap: () {},
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // Attendance
              Container(
                padding: const EdgeInsets.only(left: 23, top: 5, bottom: 5),
                child: ListTile(
                  leading:
                      const Icon(Icons.format_list_bulleted_rounded, size: 30),
                  title: const Text(
                    'Attendance',
                    style: TextStyle(fontSize: 20),
                  ),
                  minLeadingWidth: 50,
                  onTap: () {},
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // Summary
              Container(
                padding: const EdgeInsets.only(left: 23, top: 5, bottom: 5),
                child: ListTile(
                  leading: const Icon(
                    Icons.calendar_month_outlined,
                    size: 30,
                  ),
                  title: const Text(
                    'Summary',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  minLeadingWidth: 50,
                  onTap: () {},
                ),
              ),
              // Information
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(left: 23, top: 5, bottom: 5),
                child: ListTile(
                  leading: const Icon(
                    Icons.info_outline_rounded,
                    size: 30,
                  ),
                  title: const Text(
                    'Information',
                    style: TextStyle(fontSize: 20),
                  ),
                  minLeadingWidth: 50,
                  onTap: () {},
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(left: 23, top: 10, bottom: 10),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 196, 162, 255),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                child: ListTile(
                  trailing: const Icon(
                    Icons.add,
                    size: 40,
                  ),
                  title: const Text(
                    'WORKSPACES',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  minLeadingWidth: 50,
                  onTap: () {},
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 77, top: 5, bottom: 5),
                child: ListTile(
                  trailing: const Icon(
                    Icons.keyboard_arrow_down_rounded,
                    size: 40,
                  ),
                  title: const Text(
                    'Adstacks',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  minLeadingWidth: 50,
                  onTap: () {},
                ),
              ),
              // Finance
              Container(
                padding: const EdgeInsets.only(left: 77, top: 5, bottom: 5),
                child: ListTile(
                  trailing: const Icon(
                    Icons.keyboard_arrow_down_rounded,
                    size: 40,
                  ),
                  title: const Text(
                    'Finance',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  minLeadingWidth: 50,
                  onTap: () {},
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
                child: ListTile(
                  leading: const Icon(
                    Icons.settings_outlined,
                    size: 40,
                  ),
                  title: const Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  minLeadingWidth: 50,
                  onTap: () {},
                ),
              ),
              // LogOut
              Container(
                padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
                child: ListTile(
                  leading: const Icon(
                    Icons.logout_outlined,
                    size: 40,
                  ),
                  title: const Text(
                    'LogOut',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  minLeadingWidth: 50,
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),

      // Middle Content
      Container(
        alignment: Alignment.topCenter,
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Text("Home",
                      style: TextStyle(color: Colors.grey, fontSize: 35)),
                  SizedBox(
                    width: 650,
                  ),
                  SizedBox(
                    height: 60,
                    width: 300,
                    child: Card(
                      color: Color.fromARGB(255, 26, 22, 36),
                      child: Padding(
                          padding: EdgeInsets.only(right: 0),
                          child: Center(
                            child: ListTile(
                              title: Text(
                                "Search",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 138, 138, 138)),
                              ),
                              trailing: Icon(Icons.search),
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ),

            Row(
              children: [
                SizedBox(
                  width: 1100,
                  height: 300,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Card(
                      color: Colors.transparent,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          // Background image
                          Image.asset(
                            'assets/images/card.jpeg',
                            fit: BoxFit.cover,
                          ),
                          // Content
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 40, top: 30), // Add padding for the text
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment
                                  .start, // Align text to the top-left corner
                              children: [
                                // First text at top-left corner
                                const Text(
                                  "ETHEREUM 2.0",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                    height:
                                        8), // Add space between the two texts
                                // Second text below the first text
                                const Text(
                                  "Top Rating\nProject",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 30),
                                ),
                                const SizedBox(
                                    height:
                                        8), // Add space between the two texts
                                // Second text below the first text
                                const Text(
                                  "Trending projects and High rating\nProject Created by Team",
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                      fontSize: 15),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  width: 150,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 27, 33, 90),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      "Learn More",
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 10,
            ), // Add space between the first card and the second column
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  SizedBox(
                    width: 470,
                    height: 320,
                    child: Card(
                      color: Color.fromARGB(255, 14, 19, 65),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40, top: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "All Projects",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, right: 0),
                              child: Container(
                                padding: const EdgeInsets.only(left: 10),
                                height: 70,
                                width: 400,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 184, 12, 69),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                      child: Container(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        height: 60,
                                        width: 60,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/dp.jpg"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    const Column(
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                top: 10.5, left: 8),
                                            child: Text(
                                              "Technology behind the Blockchain\nProject #1 * See project details",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.edit,color: Colors.white,)),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, right: 0),
                              child: Container(
                                padding: const EdgeInsets.only(left: 10),
                                height: 70,
                                width: 400,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 184, 12, 69),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                      child: Container(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        height: 60,
                                        width: 60,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/dp.jpg"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    const Column(
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                top: 10.5, left: 8),
                                            child: Text(
                                              "Technology behind the Blockchain\nProject #1 * See project details",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.edit,color: Colors.white,)),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, right: 0),
                              child: Container(
                                padding: const EdgeInsets.only(left: 10),
                                height: 70,
                                width: 400,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 184, 12, 69),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                      child: Container(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        height: 60,
                                        width: 60,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/dp.jpg"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    const Column(
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                top: 10.5, left: 8),
                                            child: Text(
                                              "Technology behind the Blockchain\nProject #1 * See project details",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.edit,color: Colors.white,)),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                      width: 470,
                      height: 320,
                      child: Card(
                        color: Color.fromARGB(255, 14, 19, 65),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 470,
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 23, 30, 95),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(top: 25, left: 40),
                                child: Text("Top Creators",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                              ),
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 20),
                                    child: const CircleAvatar(
                                      radius: 20,
                                      backgroundImage: AssetImage(
                                        'assets/images/dp.jpg',
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 8, top: 20),
                                  child: Text("@maddison_c21",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12)),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 60, top: 20),
                                  child: Text("9821",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12)),
                                ),
                                SizedBox(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 100, top: 20),
                                    child: Container(
                                      height: 20,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 20),
                                    child: const CircleAvatar(
                                      radius: 20,
                                      backgroundImage: AssetImage(
                                        'assets/images/dp.jpg',
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 8, top: 20),
                                  child: Text("@maddison_c21",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12)),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 60, top: 20),
                                  child: Text("9821",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12)),
                                ),
                                SizedBox(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 100, top: 20),
                                    child: Container(
                                      height: 20,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 20),
                                    child: const CircleAvatar(
                                      radius: 20,
                                      backgroundImage: AssetImage(
                                        'assets/images/dp.jpg',
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 8, top: 20),
                                  child: Text("@maddison_c21",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12)),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 60, top: 20),
                                  child: Text("9821",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12)),
                                ),
                                SizedBox(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 100, top: 20),
                                    child: Container(
                                      height: 20,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 1100,
                  height: 250,
                  child: Card(
                    child: LinearCharWidget(points: chartui)
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      Column(children: [
        Container(
          height: 100,
          width: 352,
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 253, 253, 253)),
          child: Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add_chart,
                    size: 30,
                    color: Color.fromARGB(255, 0, 0, 0),
                  )),
              const SizedBox(width: 5),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notification_add_outlined,
                    size: 30,
                    color: Color.fromARGB(255, 0, 0, 0),
                  )),
              const SizedBox(width: 5),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.power_settings_new,
                    size: 30,
                    color: Color.fromARGB(255, 0, 0, 0),
                  )),
              const SizedBox(width: 150),
              const CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(
                  'assets/images/dp.jpg',
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 352,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 17, 16, 78), // Background color
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Text("GENERAL 10:00 AM 7:00 PM",style: TextStyle(color: Colors.white,fontSize: 15 ),),
                const SizedBox(
                            height:
                                10.0),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Card(
                    child: Content()
                  ),
                ),
                const SizedBox(height: 0.0), // Add spacing between cards
                Card(
                  color: Color.fromARGB(255, 72, 47, 105),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      // Use Column to stack elements vertically
                      children: [
                        const Center(
                          // Center the text
                          child: Text(
                            'Happy Birthday',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                            height:
                                16.0), // Add spacing between text and avatars
                        const Row(
                          // Use Row to arrange avatars horizontally
                          mainAxisAlignment:
                              MainAxisAlignment.start, // Center avatars in row
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                  'assets/images/dp.jpg'), // Replace with your image
                              radius: 30.0, // Adjust avatar size as needed
                            ),
                            SizedBox(
                                width: 16.0), // Add spacing between avatars
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                  'assets/images/card1.jpg'), // Replace with your image
                              radius: 30.0, // Adjust avatar size as needed
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Total   |  2  | ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            )
                          ],
                        ),
                        const SizedBox(height: 0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton.icon(
                              onPressed: () {
                                print('Sending birthday wishes...');
                              },
                              icon: const Icon(Icons.send,color: Colors.white,),
                              label: const Text('Birthday Wishing',style: TextStyle(color: Colors.white),),
                              style: ElevatedButton.styleFrom(
                                foregroundColor:
                                    const Color.fromARGB(255, 47, 1, 110),
                                backgroundColor: Color.fromARGB(255, 151, 47, 221), // Set text color
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),  
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                            height:
                                10.0),
                Card(
                  color: Color.fromARGB(255, 72, 47, 105),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      // Use Column to stack elements vertically
                      children: [
                        const Center(
                          // Center the text
                          child: Text(
                            'Happy Anniversary',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                            height:
                                15.0), // Add spacing between text and avatars
                        const Row(
                          // Use Row to arrange avatars horizontally
                          mainAxisAlignment:
                              MainAxisAlignment.start, // Center avatars in row
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                  'assets/images/dp.jpg'), // Replace with your image
                              radius: 30.0, // Adjust avatar size as needed
                            ),
                            SizedBox(
                                width: 16.0), // Add spacing between avatars
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                  'assets/images/card1.jpg'), // Replace with your image
                              radius: 30.0, // Adjust avatar size as needed
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Total   |  2  | ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            )
                          ],
                        ),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton.icon(
                              onPressed: () {
                                print('Sending birthday wishes...');
                              },
                              icon: const Icon(Icons.send,color: Colors.white,),
                              label: const Text('Anniversary Wishing',style: TextStyle(color: Colors.white),),
                              style: ElevatedButton.styleFrom(
                                foregroundColor:
                                    const Color.fromARGB(255, 47, 1, 110),
                                backgroundColor: Color.fromARGB(255, 151, 47, 221), // Set text color
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),  
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                
              ],
            ),
          ),
        ),
      ])
    ]);
  }
}
