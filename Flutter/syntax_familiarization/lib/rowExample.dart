import 'package:flutter/material.dart';

class Rowexample extends StatelessWidget{
  const Rowexample({super.key});
  // String spacing = "canter";
  @override
  Widget build(BuildContext buildContext){
    return Row(
      textDirection: TextDirection.ltr,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [

        
        // Text("Row Element 1 _ now writing extra stuff in it to see if it overflows  ,chekcing and testing, writing alot of stuff! writing again the text was insufficient as i am testing onn chrome, screen is big i am lazy to use some small responsive screen for mobile, still wiritng on keyboard is easy adn difficult with using mouse XD", textDirection: TextDirection.ltr),
        // // ElevatedButton(onPressed: () {}, child: Text("Button 1", textDirection: TextDirection.ltr,),
        // //  ),
        // Text("Row Element 2", textDirection: TextDirection.ltr,)
        // the above one is overflowing, so using expanded

        Expanded(child: Text("Row Element 1 _ now writing extra stuff in it to see if it overflows  ,chekcing and testing, writing alot of stuff! writing again the text was insufficient as i am testing onn chrome, screen is big i am lazy to use some small responsive screen for mobile, still wiritng on keyboard is easy adn difficult with using mouse XD", textDirection: TextDirection.ltr, style: TextStyle(color: Colors.black, fontSize: 16) )),
        // ElevatedButton(onPressed: () {}, child: Text("Button 1", textDirection: TextDirection.ltr,),
        //  ),
        Expanded(child: Text("Row Element 2", textDirection: TextDirection.ltr, style: TextStyle(color: Colors.black, fontSize: 16)))
      ]
      
    );
  }
}