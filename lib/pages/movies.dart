import 'package:flutter/material.dart';
import 'package:netflix_clone/json/home_json.dart';
import 'package:netflix_clone/pages/video_detail_page.dart';
import 'package:netflix_clone/pages/tv_shows.dart';
import 'package:netflix_clone/pages/main_page.dart';

class MoviesPage extends StatefulWidget {
  const MoviesPage({Key? key}) : super(key: key);

  @override
  _MoviesPageState createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: LayoutBuilder(builder: (BuildContext, BoxConstraints) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  SizedBox(
                    width: size.height - 80,
                    height: size.height,
                    child: ListView(
                      // mainAxisSize: MainAxisSize.min,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 500,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/banner_1.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                                height: 500,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                      Colors.black.withOpacity(0.85),
                                      Colors.black.withOpacity(0.0),
                                    ],
                                        end: Alignment.topCenter,
                                        begin: Alignment.bottomCenter))),
                            SizedBox(
                              height: 500,
                              width: size.width,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/title_img_1.jpg",
                                    width: 300,
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  const Text(
                                    "Exciting - Sci-Fi Drama - Sci-Fi Adventure",
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: const [
                                Icon(
                                  Icons.add,
                                  size: 25,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "My List",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => VideoDetailPage(
                                              videoUrl:
                                                  "https://firebasestorage.googleapis.com/v0/b/netflix-clone-dbae7.appspot.com/o/VINCENZO.mp4?alt=media&token=05ad98e0-1bdc-4a90-8d4c-1f89ba8a1a64",
                                                  title: " ",
                                                  desc: " ",
                                                  img: " "
                                            )));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(
                                      right: 13, left: 8, top: 2, bottom: 2),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.play_arrow,
                                        color: Colors.black,
                                        size: 30,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "Play",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const Column(
                              children: [
                                Icon(
                                  Icons.info_outline,
                                  color: Colors.white,
                                  size: 25,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Info",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 15, right: 15),
                              child: Text(
                                "My List",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              // child: GestureDetector(
                              //   onTap: () {
                              //     Navigator.push(
                              //         context,
                              //         MaterialPageRoute(
                              //             builder: (_) => const VideoDetailPage(
                              //                   videoUrl:
                              //                       "assets/videos/video_1.mp4",
                              //                 )));
                              //   },
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    children:
                                        List.generate(animeList.length, (index) {
                                      return Container(
                                        margin: const EdgeInsets.only(right: 8),
                                        width: 110,
                                        height: 160,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    animeList[index]['img']),
                                                fit: BoxFit.cover)),
                                                 child: GestureDetector(
                                                    onTap: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (_) =>  VideoDetailPage(
                                                                videoUrl: animeList[index]['url'] ?? " ",
                                                                title :animeList[index]['title']?? " ",
                                                                desc :animeList[index]['desc']?? " ",
                                                                img :animeList[index]['img'] ?? " "
                                                              )));
                                                    })
                                      );
                                    }),
                                  ),
                                ),
                              //),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 15, right: 15),
                              child: Text(
                                "Popular on Netflix",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              // child: GestureDetector(
                              //   onTap: () {
                              //     Navigator.push(
                              //         context,
                              //         MaterialPageRoute(
                              //             builder: (_) => const VideoDetailPage(
                              //                 videoUrl:
                              //                     "assets/videos/video_2.mp4")));
                              //   },
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: List.generate(originalList.length,
                                        (index) {
                                      return Container(
                                        margin: const EdgeInsets.only(right: 8),
                                        width: 110,
                                        height: 160,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    originalList[index]['img']),
                                                fit: BoxFit.cover)),
                                                 child: GestureDetector(
                                                    onTap: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (_) =>  VideoDetailPage(
                                                                videoUrl: originalList[index]['url'] ?? " ",
                                                                title :originalList[index]['title']?? " ",
                                                                desc :originalList[index]['desc']?? " ",
                                                                img :originalList[index]['img'] ?? " "
                                                              )));
                                                    })
                                      );
                                    }),
                                  ),
                                ),
                             // ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 15, right: 15),
                              child: Text(
                                "Trending Now",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              // child: GestureDetector(
                              //   onTap: () {
                              //     Navigator.push(
                              //         context,
                              //         MaterialPageRoute(
                              //             builder: (_) => const VideoDetailPage(
                              //                 videoUrl:
                              //                     "assets/videos/video_1.mp4")));
                              //   },
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: List.generate(popularList.length,
                                        (index) {
                                      return Container(
                                        margin: const EdgeInsets.only(right: 8),
                                        width: 110,
                                        height: 160,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    popularList[index]['img']),
                                                fit: BoxFit.cover)),
                                                 child: GestureDetector(
                                                    onTap: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (_) =>  VideoDetailPage(
                                                                videoUrl: popularList[index]['url'] ?? " ",
                                                                title :popularList[index]['title']?? " ",
                                                                desc :popularList[index]['desc']?? " ",
                                                                img :popularList[index]['img'] ?? " "
                                                              )));
                                                    })
                                      );
                                    }),
                                  ),
                                ),
                             // ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 15, right: 15),
                              child: Text(
                                "Netflix Originals",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              // child: GestureDetector(
                              //   onTap: () {
                              //     Navigator.push(
                              //         context,
                              //         MaterialPageRoute(
                              //             builder: (_) => const VideoDetailPage(
                              //                 videoUrl:
                              //                     "assets/videos/video_1.mp4")));
                              //   },
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    children:
                                        List.generate(mylist.length, (index) {
                                      return Container(
                                        margin: const EdgeInsets.only(right: 8),
                                        width: 165,
                                        height: 300,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    mylist[index]['img']),
                                                fit: BoxFit.cover)),
                                                 child: GestureDetector(
                                                    onTap: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (_) =>  VideoDetailPage(
                                                                videoUrl: mylist[index]['url'] ?? " ",
                                                                title :mylist[index]['title']?? " ",
                                                                desc :mylist[index]['desc']?? " ",
                                                                img :mylist[index]['img'] ?? " "
                                                              )));
                                                    })
                                      );
                                    }),
                                  ),
                                ),
                             // ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 15, right: 15),
                              child: Text(
                                "Anime",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              // child: GestureDetector(
                              //   onTap: () {
                              //     Navigator.push(
                              //         context,
                              //         MaterialPageRoute(
                              //             builder: (_) => const VideoDetailPage(
                              //                 videoUrl:
                              //                     "assets/videos/video_1.mp4")));
                              //   },
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: List.generate(trendingList.length,
                                        (index) {
                                      return Container(
                                        margin: const EdgeInsets.only(right: 8),
                                        width: 110,
                                        height: 160,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    trendingList[index]['img']),
                                                fit: BoxFit.cover)),
                                                 child: GestureDetector(
                                                    onTap: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (_) =>  VideoDetailPage(
                                                                videoUrl: trendingList[index]['url'] ?? " ",
                                                                title :trendingList[index]['title']?? " ",
                                                                desc :trendingList[index]['desc']?? " ",
                                                                img :trendingList[index]['img'] ?? " "
                                                              )));
                                                    })
                                      );
                                    }),
                                  ),
                                ),
                             // ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: SafeArea(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      MainPage()));
                                        },
                                        icon: const Icon(
                                          Icons.arrow_back,
                                          size: 28,
                                          color: Colors.white,
                                        )),
                                    const Text(
                                      "Movies",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      icon: const Icon(
                                        Icons.cast,
                                        size: 28,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {}),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.search,
                                        size: 28,
                                        color: Colors.white,
                                      )),
                                  IconButton(
                                      icon: Image.asset(
                                        "assets/images/netflix_profile.jpg",
                                        fit: BoxFit.cover,
                                        width: 26,
                                        height: 26,
                                      ),
                                      onPressed: () {}),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              MaterialButton(
                                child: const Text(
                                  "Home",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MainPage()));
                                },
                              ),
                              MaterialButton(
                                child: const Text(
                                  "TV Shows",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const TvShowsPage()));
                                },
                              ),
                              Row(
                                children: const [
                                  Text(
                                    "Categories",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Icon(Icons.keyboard_arrow_down,
                                      color: Colors.white)
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}


