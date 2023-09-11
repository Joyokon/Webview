import 'package:flutter/material.dart';
import 'package:webview/webViewx.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text(
            'My slack profile',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          actions: [
            Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: Icon(
                  Icons.language_rounded,
                  size: 30,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Center(
                child: Container(
                  child: Column(children: [
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(100)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          'assets/images/icons/jj.jpg',
                          // width: 100,
                        ),
                      ),
                      // child: Image.asset(
                      //   'assets/images/icons/jj.jpg',
                      //   width: 100,
                      // ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Joy okon',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 200,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => MyWebview()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                            child: Text(
                              'Open Github',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                          width: 50,
                          height: 50,
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ));
  }
}
