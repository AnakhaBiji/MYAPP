import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class listview_custom extends StatelessWidget{
  var  name=["Anu" ,'Ammu','Pallu','Appu','Kichu','Vichu'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: AppBar(title: Text("Listview_custom"),),
    body:ListView.custom(childrenDelegate:SliverChildListDelegate([ Card(
      color: Colors.cyanAccent,
      child: ListTile(
        title: Text("PetStore 1"),
        subtitle: Text("description"),
        leading:CircleAvatar(backgroundImage: NetworkImage(
            "https://media.istockphoto.com/id/1387621866/photo/english-cocker-spaniel-in-cute-hat-near-suitcase-indoors-pet-friendly-hotel.jpg?s=612x612&w=is&k=20&c=XBPDQUI6ZAV060EuSHf9_WYLLN34KAleEQnXxQbdj_o="),
        ),
        trailing: Wrap(
          children: const [
            Icon(Icons.message),
            SizedBox(width: 30),
            Icon(Icons.phone),
          ],
        ),
      ),
    ),
      Card(
        color: Colors.cyan,
        child: ListTile(
          title: Text("PetStore 2"),
          subtitle: Text("description"),
          leading: CircleAvatar(backgroundImage: NetworkImage(
              "https://media.istockphoto.com/id/1324099927/photo/friends-red-cat-and-corgi-dog-walking-in-a-summer-meadow-under-the-drops-of-warm-rain.jpg?s=612x612&w=is&k=20&c=FSQUKwLc_6Ce17hdnsQE3P2g041OrgNWb0Eazasd_0c="),
          ),
          trailing: Wrap(
            children: const [
              Icon(Icons.message),
              SizedBox(width: 30),
              Icon(Icons.phone),
            ],
          ),
        ),
      ),
      Card(
        color: Colors.blue,
        child: ListTile(
          title: Text("PetStore 3"),
          subtitle: Text("description"),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1623387641168-d9803ddd3f35?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGV0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
          ),
          trailing: Wrap(
            children: const [
              Icon(Icons.message),
              SizedBox(width: 30),
              Icon(Icons.phone),
            ],
          ),
        ),
      ),
      Card(
        color: Colors.blueAccent,
        child: ListTile(
          title: Text("PetStore 4"),
          subtitle: Text("description"),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1583511655826-05700d52f4d9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8cGV0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
          ),
          trailing: Wrap(
            children: const [
              Icon(Icons.message),
              SizedBox(width: 30),
              Icon(Icons.phone),
            ],
          ),
        ),
      ),
    ]
    )
    //SliverChildBuilderDelegate((context,index){
     // return Card(
      //child: Text(name[index]),
      //);
   // },childCount: name.length,
    ),
    );
  }

}



