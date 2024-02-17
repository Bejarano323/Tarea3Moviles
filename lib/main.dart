


import 'package:flutter/material.dart';


void main(){
  runApp(
    const MaterialApp( 
      home: MyApp() 
    )
  );
}
  
class MyApp extends StatelessWidget {



    const MyApp({super.key});

  
  


  
  

















  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      
      title: 'Mc Flutter',
      theme: ThemeData(
      useMaterial3: true,
      
    // Define the default brightness and colors.
    colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.indigo,
    // background: const   Color.fromARGB(255, 33, 60, 109)
      // brightness: Brightness.dark,
    ),

    textTheme: const TextTheme(
      displayLarge:  TextStyle(
        fontSize: 72,
        fontWeight: FontWeight.bold,
      ),
    // 
     
    ),
  ),
      home:  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title:const Center(child: Text("Menu Demo",style: TextStyle(color:Colors.white))),
        ),


body: Column(

       
        children:  <Widget>[
          Container(
              
              width: MediaQuery.of(context).size.width,
              height: 100,
              margin: const EdgeInsets.only(top:5),
              padding: const EdgeInsets.only(left: 10, right: 10),
              child:  const Center(
                
                child:  Text(
                  
                  "Explore the restaurant's delicious menu items below! ",
                  style: TextStyle(
                   fontSize:20
                   
                  ),
                  
                  
                ),
              ),
              
            ),
          
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 100,
              child:const ListTile(leading: ImageIcon(AssetImage("./assets/burger.png"),size: 24,color: Colors.black, ) ,title:Text("  Burgers",style: TextStyle(color: Colors.black),),)
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 100,
              child:const ListTile(leading: ImageIcon(AssetImage("./assets/can.png"),size: 24,color: Colors.black, ) ,title:Text("Soda",style: TextStyle(color: Colors.black),),)

            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 100,
              child:const ListTile(leading: ImageIcon(AssetImage("./assets/fried-potatoes.png"),size: 24,color: Colors.black, ) ,title:Text("fried-potatoes",style: TextStyle(color: Colors.black),),)

            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 100,
              child:const ListTile(leading: ImageIcon(AssetImage("./assets/hotdog.png"),size: 24,color: Colors.black, ) ,title:Text("hotdog",style: TextStyle(color: Colors.black),),)

            ),
         
            
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 100,
              child:const ListTile(leading: ImageIcon(AssetImage("./assets/ice-cream.png"),size: 24,color: Colors.black, ) ,title:Text("ice-cream",style: TextStyle(color: Colors.black),),)

            ),
            SizedBox(
              height:50, 
              child:  Row(
                  
                  mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                  crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                
                  children: [
                      TextButton(onPressed:()=>showDialog(context: context, builder:(BuildContext context)=>AlertDialog(
                        title: const Text("Delivery"),
                        actions: [TextButton(onPressed: ()=>Navigator.pop(context,'done'), child: const Text("Done"))],
                       )), child: const Text("Delivery")),
                      const VerticalDivider(color: Colors.black ,width: 20,thickness: 2),
                      TextButton(onPressed:()=>showDialog(context: context, builder:(BuildContext context)=>AlertDialog(
                        title: const Text("PickUp"),
                        actions: [TextButton(onPressed: ()=>Navigator.pop(context,'done'), child: const Text("Done"))],
                       )), child: const Text("PickUp")),
                  ],
              )
            )

          ]

)   

      
      ),
    );
  }


}




void none(){
  
}


class forecastWidget extends StatefulWidget{

      const forecastWidget({super.key, required this.forecastData});
      final List<Map<String, dynamic>> forecastData;
      @override
      State<forecastWidget> createState() => _forecastWidgetState();


}

class _forecastWidgetState extends State<forecastWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.forecastData.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          // leading: Icon(widget.choice),
          title: Text(widget.forecastData[index]['day']),
          subtitle: Text(widget.forecastData[index]['weather']),
        );
      },
    );
  }
}


class IconButtonExampleToggle extends StatefulWidget {
  const IconButtonExampleToggle({super.key, required this.choise}); // Modified to add custom icons
  final IconData choise;
  @override
  State<IconButtonExampleToggle> createState() =>_IconButtonExampleStateToggle();
}





class _IconButtonExampleStateToggle extends State<IconButtonExampleToggle> {

  bool state0 = false;


  @override
  Widget build(BuildContext context) {
      
    return Row(  
      
      children: <Widget>[
        IconButton(
          isSelected: state0,
          icon:  Icon(widget.choise ,size: 25),
       
          onPressed: () {
            setState(() {
              state0 = !state0;
            });
          },
        ),

      ],
    );
  }
}