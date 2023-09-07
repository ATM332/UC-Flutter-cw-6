import 'package:cw6/models/buildings.dart';
import 'package:cw6/pages/details.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatelessWidget {
   MainApp({super.key});


   var buildings = [
  Buildings(
    name: 'أبراج الكويت',
    description: "descripiton1",
    imgUrl:
        "https://user-images.githubusercontent.com/24327781/188260105-52be6a2e-a6d3-4ceb-86c0-ddc83e0aa5b6.jpeg",
  ),
  Buildings(
    name: 'برج التحرير',
    description: "description2",
    imgUrl:
        "https://user-images.githubusercontent.com/24327781/188260123-28de85b4-d272-4ebb-b2ad-22a9582079bf.jpeg",
  ),
  Buildings(
    name: 'المسجد الكبير',
    description: "description3",
    imgUrl:
        "https://user-images.githubusercontent.com/24327781/188260137-021d865a-625e-4941-ad75-6427c690e0cf.jpeg",
  ),
];



  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Kuwait City LandMarks"),),

        body: Center(
          child: ListView.builder(itemCount: buildings.length, itemBuilder: (context, index){
            return ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailsPage(building: buildings[index])));
        
                
              },
        
             leading: CircleAvatar(
               backgroundImage: NetworkImage((buildings[index].imgUrl))),
               
        
             title: Text(buildings[index].name),
             subtitle: Text(buildings[index].description),
        
            );
          }
              ),
        ),
    )
    );
  }
}
