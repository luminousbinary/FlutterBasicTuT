import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

class MyHomeApp extends StatefulWidget {
  const MyHomeApp({Key? key}) : super(key: key);

  @override
  State<MyHomeApp> createState() => _MyHomeAppState();
}

class _MyHomeAppState extends State<MyHomeApp> {
  List<int> _listItem = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    0,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Home'),
        backgroundColor: Colors.greenAccent, //bottom: Icon(Icons.add
      ),

      // // images and scrolling on listviews
      body: Container(
        // height: 50.0,
        width: double.infinity,
        child: ListView.separated(
            padding: const EdgeInsets.all(19.0),
            itemBuilder: (BuildContext context, index) {
              return ListTile(
                title: Text('Number ${_listItem[index]}'),
              );
            },
            separatorBuilder: (BuildContext contex, index) => Divider(
                  color: Colors.blue,
                ),
            itemCount: _listItem.length),
        // // listBuilder with cjuild title and icin
        // child: ListView.builder(
        //   itemCount: _listItem.length,
        //   itemBuilder: (context, index) {
        //     return ListTile(
        //       title: Text('count ${_listItem[index]}'),
        //       subtitle: Text('pk'),
        //       leading: Icon(Icons.done),
        //       trailing: Icon(Icons.safety_divider),
        //       onTap: () {
        //         print('pressed ${_listItem[index]}');
        //       },
        //     );
        // return Text('Count: ${_listItem[index]}');
        // },
        // ),
        // listview to be able to scroll
        // child: ListView(
        //     scrollDirection: Axis.horizontal,
        //     // padding: const EdgeInsets.all(10.0),
        //     children: _listItem.map((e) {
        //       return Padding(
        //         padding: const EdgeInsets.all(18.0),
        //         child: Text('count: $e '),
        //       );
        //     }).toList())
        // // this is adding an image through decoration
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     // padding would not affect the image here since it is not a child but a decoration
        //     image: AssetImage('asset/suitman.jpg'),
        //   ),
        // ),
      ),
      // child: Image.network(
      //     // url of image goes in here
      //     ),
      // This is the immage assest extedded version
      //  // image asset with error handeling and loading builder

      //   child: Image.asset(
      //     'asset/bigirl.jpg',
      //     frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
      //       return Padding(
      //         padding: const EdgeInsets.all(40.0),
      //         child: child,
      //       );
      //       //this is not working
      //       // ImageLoadingBuilder(
      //       //     context, child, ImageChunkEvent loadingProgress) {
      //       //   return Center(
      //       //     child: Text("Loading image"),
      //       //   );
      //       // }
      //       // ImageErrorWidgetBuilder(context, Object , StackTrace){

      //       // }
      //     },
      //     // loadingBuilder: (){
      //     //   return Center(),
      //     // }

      //     errorBuilder: (context, error, stackTrace) {
      //       return Center(
      //         child: Text("I love Jesus"),
      //       );
      //     },

      //     // repeat: ImageRepeat.repeat,
      //     // alignment: Alignment.topCenter,
      //     // fit: BoxFit.contain, // check the flutter>painting > BoxFit enum on the fluter website for more info
      //     // height: 100.0,
      //     // if we do not add width the width will shrink automatically
      //     // width: 200.0,
      //     // // this has to do with manipulationg the boarders and adding decorations to them

      //     // frameBuilder: (BuildContext context, Widget child, _,
      //     //     bool wasSynchronouslyLoaded) {
      //     // return Container(
      //     //   padding: const EdgeInsets.all(21),
      //     //   child: child,
      //     //   // color: Colors.deepPurpleAccent,
      //     //   decoration: BoxDecoration(
      //     //     shape: BoxShape.rectangle,
      //     //     color: Colors.cyanAccent,
      //     //   ),
      //     // );
      //     // },
      //   ),
      // ),

      // // This is about padding and container widget
      // body: Center(
      //   child: Container(
      //     width: double.infinity,
      //     height: 212,
      //     // color: Colors.grey,
      //     // margin: const EdgeInsets.all(value), //margin means you are separating a widget forma nother by the given value
      //     padding: const EdgeInsets.all(10.2),
      //     decoration: BoxDecoration(
      //       color: Colors.cyan,
      //       borderRadius: BorderRadius.circular(10.5),
      //     ),
      //     child: Text(
      //       "I am the best",
      //       textAlign: TextAlign.center,
      //     ),
      //   ),
      // ),
      // // This part is on Ink and IconButton
      // body: Center(
      //   child: Ink(
      //     // Ink accepts a method callled decoration which can be used to create decorations and manipulate iconss
      //     decoration:
      //         ShapeDecoration(shape: CircleBorder(), color: Colors.yellow),
      //     // extended feature of a textButtom thsi includes the label: attribute. this can also be implemented on elevatedButton
      //     child: TextButton.icon(
      //       onPressed: () => print("Cool"),
      //       icon: Icon(Icons.abc),
      //       label: Text("cool"),
      //     ),
      //     // // other things can be done on ink as well such as, height width and color {try it for the others}
      //     // // note that if you are using decoration atributr in Ink you cannot adjust color
      //     // child: IconButton(
      //     //   onPressed: () => "I am still cool",
      //     //   icon: Icon(Icons.add),
      //     // ),
      //   ),

      //   // // IconButton without ink widget to change backgound colour
      //   //child: IconButton(
      //   //   onPressed: () => print("I am cool"),
      //   //   icon: Icon(Icons.add),
      //   //   color: Colors.red,
      //   //   iconSize: 34.2,
      //   //   splashColor: Colors.green,
      //   //   padding: EdgeInsets.all(22.1),
      //   //   tooltip: 'discription of a button',

      //   // ),
      // ),

      // This part is on floatingActionButton
      floatingActionButton: FloatingActionButton.extended(
        label: Text(''),
        icon: Icon(Icons.add),
        onPressed: () => print("coolest man alive"),
        backgroundColor: Colors.amber[200],
      ),

      // // outlinedButton replacad outlinebutton
      // body: Center(
      //   child: OutlinedButton(
      //     onPressed: () => print("Cool"),
      //     child: Icon(Icons.abc),
      //     // borderSide   go learn about this
      //   ),
      // ),
      // // this is ElevatedButton() which replaced RaisedButton
      //body: Center(
      //   child: ElevatedButton(
      //     onPressed: () => print("pressed"),
      //     child: Icon(Icons.timelapse),
      //     // learn elevation
      //   ),
      // ),
      // // This is on TextButton which replaced FlatButton() Method
      // body: Center(
      //   child: TextButton(
      //     child: Icon(Icons.add),
      //     onPressed: /*null, // <= used to disable button*/ () =>
      //         ShowToast("Luminous"), // print(' I am Happy'),
      //     // go and learn how to change textButton's colour... sience color is not a method in TextButton
      //     // also learn text/background brightness and how to add text
      //     // learn disabled color and  disable button
      //     onLongPress: () => print("button is pressed for long"),
      //   ),
      // ),
      // // this is resizing diffrent words in a text
      // body: Center(
      //   child: RichText(
      //     text: TextSpan(
      //       text: "Programming is fun",
      //       style: TextStyle(color: Colors.cyan, fontSize: 20),
      //       children: <TextSpan>[
      //         TextSpan(
      //           text: " and I love you",
      //           style: TextStyle(color: Colors.orange, fontSize: 25),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      // //How to manipulate text
      //body: Center(
      //   child: Text(
      //     "I love Data",
      //     maxLines: 3,
      //     style: TextStyle(
      //       backgroundColor: Colors.blue,
      //       color: Colors.white,
      //       fontWeight: FontWeight.normal,
      //       fontSize: 28,
      //     ),
      //   ),
      // ),
      // // how to add toast message 'showToast()' method
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       TextButton(
      //         child: Text("press"),
      //         onPressed: () => ShowToast(),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}

// void ShowToast(String name) => Fluttertoast.showToast(
//       msg: "Always be Happy, " + name + "\n choose to smile till the end",
//       toastLength: Toast.LENGTH_SHORT,
//       gravity: ToastGravity.CENTER,
//       backgroundColor: Colors.brown,
//     );

// */

/* To Do list 
import './screens/home_screen.dart';

void main(List<String> args) {
  MyApp();
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
*/

/* some thought
   is it not better to impliment the appbar in the stateless widget if we dont want it to change?
*/
/* Important Shortcut Reference

 key binding shorcut is:
ctrl + shift + R


*/
