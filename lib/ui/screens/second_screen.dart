import 'package:assignment1/data/dummy_data.dart';
import 'package:assignment1/ui/widgets/post_widget.dart';
import 'package:assignment1/ui/widgets/user_widget.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      drawer: Drawer(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/greenbackground2.jpg'),
              fit: BoxFit.cover),
        ),
        child: Container(
          margin: EdgeInsets.only(top: 130),
          height: 730,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadiusDirectional.only(
              topEnd: Radius.circular(60),
              topStart: Radius.circular(60),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Text(
                  "Handpicked",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    letterSpacing: 2.0,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:25),
                  width: 50,
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadiusDirectional.all(Radius.circular(50)),
                    border: Border(
                      bottom: BorderSide(color: Colors.amber, width: 8.0),
                    ),
                  ),
                ),
                Column(
                  children: Posts.map((e) => PostWidget(e)).toList(),

                ),
                SizedBox(height: 100,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Top Authors",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: users.map((e) => UserWidget(e)).toList(),

                ),
              ],
            ),

          ),
        ),
      ),
    );
  }
}
