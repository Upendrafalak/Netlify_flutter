import 'package:flutter/material.dart';
// import 'package:netflix_clone/pages/home_page.dart';
import 'package:netflix_clone/json/root_app_json.dart';
import 'package:netflix_clone/pages/main_page.dart';


class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      // bottomNavigationBar: getFooter(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return
        // SingleChildScrollView(
        //   child:
        //  IndexedStack(
        // index: activeTab,
        // children
        //     : [
        const MainPage();
    //   ],
    // );
    // ,);
  }

  // Widget getFooter() {
  //   return Container(
  //     height: 80,
  //     decoration: BoxDecoration(color: Colors.black),
  //     child: Padding(
  //       padding: const EdgeInsets.only(left:20,right: 20,top: 5),
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: List.generate(items.length, (index) {
  //           return GestureDetector(
  //            onTap: () {
  //              setState(() {
  //                activeTab=index;
  //              });
  //            },
  //             child: Column(
  //               children: [
  //                 Icon(items[index]['icon'], color: Colors.white),
  //                 SizedBox(height: 5,),
  //                 Text(items[index]['text'], style: TextStyle(color: Colors.white,fontSize: 15))
  //               ],
  //             ),
  //           );
  //         }),
  //       ),
  //     ),
  //   );
  // }
}
