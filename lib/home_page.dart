import 'package:flutter/material.dart';
import 'package:podcast_app/podcast_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 40,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "P",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          "o",
                          style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          "dcast",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                colors: [Color(0xffE85C19), Color(0xffFFBB82)],
                                begin: Alignment.bottomRight,
                                end: Alignment.topLeft),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              width: 3,
                              color: const Color(0xff707070),
                            ),
                          ),
                        ),
                        Image.asset("assets/images/girl.png"),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xff676B76), Color(0xffA0A4AE)],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                      ),
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff676B76).withOpacity(0.4),
                          blurRadius: 40,
                          offset: const Offset(0, 20),
                        ),
                      ]),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(20, 5, 5, 5),
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xff676B76),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Podcast...',
                              style: TextStyle(color: Colors.white),
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.deepOrange,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Icon(
                                Icons.search_sharp,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        height: 40,
                        indent: 0,
                        endIndent: 0,
                        color: Color(0xff656872),
                        thickness: 0.0,
                      ),
                      const Text(
                        'Your category',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: const [
                          CategoryWidget(
                            text: 'UI',
                            color: Colors.deepOrangeAccent,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CategoryWidget(
                            text: 'UX',
                            color: Color(0xff656872),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CategoryWidget(
                            text: 'Logo',
                            color: Color(0xff656872),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const CategoryWidget(
                            text: 'Art',
                            color: Color(0xff656872),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const CategoryWidget(
                            text: 'Idea',
                            color: Color(0xff656872),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.0),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Center(
                                child: Text(
                                  '+',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 27,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'UI Podcast',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                const PodcastWidget(
                  img: 'assets/images/image.png',
                  text: 'UI Narrative',
                  text2: 'Podtail',
                  icon: Icon(
                    Icons.pause,
                    color: Colors.white,
                  ),
                  color: Colors.deepOrangeAccent
                ),
                const SizedBox(
                  height: 15,
                ),
                const PodcastWidget(
                  img: 'assets/images/img2.png',
                  text: 'UX Podcast',
                  text2: 'Announcer Name',
                  icon: Icon(Icons.play_arrow_rounded, color: Colors.white),
                  color: Color(0xff676B76),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>
                    const PodcastScreen()));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xff676B76), Color(0xffA0A4AE)],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 20),
                          color: const Color(0xff676B76).withOpacity(0.4),
                          blurRadius: 40,
                        )
                      ],
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/image.png"),
                            const SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Empathizing With users",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "08:16 / 20:21",
                                  style: TextStyle(color: Color(0xffDEDBDB)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: const [
                          Text('Home',
                          style: TextStyle(
                            color: Colors.deepOrangeAccent,fontSize: 12
                          ),),
                          SizedBox(
                            height: 5
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.deepOrangeAccent,
                            radius: 4,
                          ),
                        ],
                      ),
                      Image.asset("assets/images/hearico.png"),
                      Image.asset("assets/images/gapico.png"),
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

class PodcastWidget extends StatelessWidget {
  const PodcastWidget({
    super.key,
    required this.img,
    required this.text,
    required this.text2,
    required this.color,
    required this.icon,
  });
  final String img;
  final String text;
  final String text2;
  final Color color;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(img),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: const TextStyle(fontSize: 15, color: Colors.black),
                ),
                Text(
                  text2,
                  style: TextStyle(fontSize: 15, color: color),
                ),
              ],
            ),
          ],
        ),
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: icon,
        ),
      ],
    );
  }
}

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
    required this.text,
    required this.color,
  });
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
