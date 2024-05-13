import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
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
                      color: Colors.black, fontWeight: FontWeight.w900),
                ),

                // Buttons
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple), // Purple border
                    borderRadius: BorderRadius.circular(30), // Rounded corners
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Admin",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w400), // Purple text color
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
                    color: Color.fromRGBO(
                        158, 158, 158, 1), // Set the background color to grey
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10), // Rounded top-left corner
                      bottomLeft:
                          Radius.circular(10), // Rounded bottom-left corner
                    ),
                  ),
                  child: ListTile(
                    leading: const Icon(
                      Icons.home_filled,
                      size: 30, // Icon size
                    ),
                    title: const Text(
                      'Home',
                      style: TextStyle(fontSize: 20), // Text size
                    ),
                    minLeadingWidth: 50,
                    onTap: () {
                      
                    },
                  ),
                ),

                // Employees
                const SizedBox(
                  height: 10,
                ),

                Container(
                  padding: const EdgeInsets.only(left: 23, top: 5, bottom: 5),
                  child: ListTile(
                    leading: const Icon(
                      Icons.groups_2_rounded,
                      size: 40, // Icon size
                    ),
                    title: const Text(
                      'Employees',
                      style: TextStyle(fontSize: 20), // Text size
                    ),
                    minLeadingWidth: 50,
                    onTap: () {
                      
                    }, // Minimum width for the leading icon area
                  ),
                ),

                // Attendance
                const SizedBox(
                  height: 10,
                ),

                Container(
                  padding: const EdgeInsets.only(left: 23, top: 5, bottom: 5),
                  child: ListTile(
                    leading: const Icon(
                      Icons.format_list_bulleted_rounded,
                      size: 40, // Icon size
                    ),
                    title: const Text(
                      'Attendance',
                      style: TextStyle(fontSize: 20), // Text size
                    ),
                    minLeadingWidth:
                        50,
                        
                        onTap: (){}, // Minimum width for the leading icon area
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
                      size: 40, // Icon size
                    ),
                    title: const Text(
                      'Summary',
                      style: TextStyle(fontSize: 20), // Text size
                    ),
                    minLeadingWidth:
                        50,
                        onTap: (){}, // Minimum width for the leading icon area
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
                      size: 40, // Icon size
                    ),
                    title: const Text(
                      'Information',
                      style: TextStyle(fontSize: 20), // Text size
                    ),
                    minLeadingWidth:
                        50,
                        onTap: (){}, // Minimum width for the leading icon area
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                Container(
                  padding: const EdgeInsets.only(left: 23, top: 10, bottom: 10),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(
                        255, 196, 162, 255), // Set the background color to grey
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10), // Rounded top-left corner
                      bottomLeft:
                          Radius.circular(10), // Rounded bottom-left corner
                    ), // Rounded edges
                  ),
                  child: ListTile(
                    trailing: const Icon(
                      Icons.add,
                      size: 40, // Icon size
                    ),
                    title: const Text(
                      'WORKSPACES',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900), // Text size
                    ),
                    minLeadingWidth:
                        50,
                        onTap: (){}, // Minimum width for the leading icon area
                  ),
                ),

                // Adstacks
                // const SizedBox(
                //   height: 12,
                // ),

                Container(
                  padding: const EdgeInsets.only(left: 77, top: 5, bottom: 5),
                  child: ListTile(
                    trailing: const Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 40, // Icon size
                    ),
                    title: const Text(
                      'Adstacks',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold), // Text size
                    ),
                    minLeadingWidth:
                        50,
                        onTap: (){}, // Minimum width for the leading icon area
                  ),
                ),

                // Finance
                Container(
                  padding: const EdgeInsets.only(left: 77, top: 5, bottom: 5),
                  child: ListTile(
                    trailing: const Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 40, // Icon size
                    ),
                    title: const Text(
                      'Finance',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold), // Text size
                    ),
                    minLeadingWidth:
                        50,
                        onTap: (){}, // Minimum width for the leading icon area
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: const Color.fromRGBO(158, 158, 158, 1),
          ),
        ),
      ],
    );
  }
}

// Drawer(
//   backgroundColor: Color.fromARGB(248, 255, 255, 255),
//   child: ListView(
//     padding: EdgeInsets.only(right: 1500),
//     children: [
//       UserAccountsDrawerHeader(
//         accountName: const Text(
//           'John Doe',
//           style: TextStyle(
//             color: Color.fromARGB(255, 0, 0, 0),
//             fontWeight: FontWeight.bold,
//             fontSize: 18,
//           ),
//         ),
//         accountEmail: const Text(
//           'johndoe@example.com',
//           style: TextStyle(
//             fontSize: 12,
//             fontWeight: FontWeight.w300,
//             color: Colors.black
//           ),
//         ),
//         currentAccountPicture: CircleAvatar(
//           child: ClipOval(
//             child: Image.network(
//               "https://i.pinimg.com/originals/8b/68/9e/8b689e09b7e45051e58f43afc7fa4771.jpg",
//               width: 100,
//               height: 100,
//               fit: BoxFit.fill,
//             ),
//           ),
//         ),
//         decoration: BoxDecoration(
//           color: const Color.fromARGB(255, 253, 254, 255),
//           image: DecorationImage(
//             image: const NetworkImage(
//               'https://via.placeholder.com/150',
//             ),
//             fit: BoxFit.cover,
//             colorFilter: ColorFilter.mode(
//               Color.fromARGB(255, 0, 0, 0).withOpacity(0.7),
//               BlendMode.darken,
//             ),
//           ),
//         ),
//       ),
//       Card(
//         elevation: 4,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//         color: const Color.fromARGB(228, 255, 255, 255),
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             gradient: const LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [
//                 Color.fromARGB(255, 255, 255, 255),
//                 Color.fromARGB(110, 61, 145, 255)
//               ],
//             ),
//           ),
//           child: ListTile(
//             leading: const Icon(Icons.person),
//             title: const Text('Profile'),
//             onTap: () {
//               // Navigate to Profile screen
//             },
//           ),
//         ),
//       ),
//       // Add more ListTiles for additional navigation items
//     ],
//   ),
// );
