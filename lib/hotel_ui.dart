import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Hotel_ui(),
    debugShowCheckedModeBanner: false,
  ));
}

final List room=[{'image':'https://cdn.loewshotels.com/loewshotels.com-2466770763/cms/cache/v2/5f5a6e0d12749.jpg/1920x1080/fit/80/86e685af18659ee9ecca35c465603812.jpg','title':'New Villa at Vytila' },
  {'image':"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRs5XSJ4WEOl1CxLRT-7V4AXmTS63v1amGFIg&usqp=CAU",'title':'Beautiful Apartment near Aluva'},
  {'image':"https://www.theleela.com/prod/content/assets/styles/hero_banner_1920x980/public/2021-10/Grande-Deluxe-Room-Header-optn.jpg?VersionId=5GP.SG2s796ryzaZtdP_LbAaSZOdBuiU&itok=BwZU_uyu",'title': 'Beautiful room near kakkanad'},
  {'image':"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVWLAJqplp979ZeEhPlpZ3B25-ZFENiQFntrFrhDLlGJ1zRTcDLByCOiOi6PxFFE5r0I8&usqp=CAU",'title':'Luxury room in Ernakulam'}];

  class Hotel_ui extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: CustomScrollView(
         slivers:[
           SliverAppBar(
             expandedHeight: 180,
             backgroundColor: Colors.cyan,
             leading: IconButton(icon:Icon(Icons.menu,color: Colors.white,), onPressed: () {  },
             ),
             actions: [
               IconButton( icon: Icon(Icons.favorite_border,color: Colors.white,), onPressed: () {  },)
             ],
             floating: true,
             flexibleSpace: ListView(
               children: [
                 SizedBox(
                   height: 60,
                 ),
                 Text('Type Your Location',
                 textAlign: TextAlign.center,
                 style: TextStyle(fontWeight: FontWeight.bold,
                 fontSize: 20,
                 color: Colors.white),
                  ),
                 Container(
                 margin:
                 const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                 padding: const EdgeInsets.all(5.0),
                 decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(40.0)),
                 child: TextField(
                 decoration: InputDecoration(
                 hintText: "Kakkanad ,Kochi",
                 border: InputBorder.none,
                 icon: IconButton(
                 onPressed: () {}, icon: Icon(Icons.search)),
                 ),
                 ),
                 ),
    const SliverToBoxAdapter(
    child: SizedBox(
    height: 10.0,
    ),
    ),
    SliverToBoxAdapter(
    child: _buildCategories(),
    ),
    SliverList(
    delegate:
    SliverChildBuilderDelegate((BuildContext context, int index) {
    return _buildRooms(context, index);
    }, childCount: 100),
    )
    ],
    ),
    ),
      ]
    ),
    );
  }

  Widget _buildRooms(BuildContext context, int index) {
    var rooms = room[index % room.length];  //room[image][index]

    return Container(
      margin: const EdgeInsets.all(20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: Container(
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Image.asset(rooms['image']),
                    Positioned(
                      right: 10,
                      top: 10,
                      child: Icon(
                        Icons.star,
                        color: Colors.grey.shade800,
                        size: 20.0,
                      ),
                    ),
                    const Positioned(
                      right: 8,
                      top: 8,
                      child: Icon(
                        Icons.star_border,
                        color: Colors.white,
                        size: 24.0,
                      ),
                    ),
                    Positioned(
                      bottom: 20.0,
                      right: 10.0,
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        color: Colors.white,
                        child: const Text("\$40"),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        rooms['title'],
                        style: const TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      const Text("Kakkanad,Kochi"),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                          Icon(
                            Icons.star,
                            //color: Colors.green,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "(220 reviews)",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      )
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

  Widget _buildCategories() {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          SizedBox(
            width: 15.0,
          ),
          Category(
            backgroundColor: Colors.pink,
            icon: Icons.hotel,
            title: "Hotel",
          ),
          SizedBox(
            width: 15.0,
          ),
          Category(
            backgroundColor: Colors.blue,
            title: "Restaurant",
            icon: Icons.restaurant,
          ),
          SizedBox(
            width: 15.0,
          ),
          Category(
            icon: Icons.local_cafe,
            backgroundColor: Colors.orange,
            title: "Cafe",
          )
        ],
      ),
    );
  }
  }

class Category extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color? backgroundColor;

  const Category({Key? key, required this.icon, required this.title, this.backgroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: const BorderRadius.all(Radius.circular(5.0))),
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        padding: const EdgeInsets.all(10.0),
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: Colors.white,
            ),
            const SizedBox(
              height: 5.0,
            ),
            Text(title, style: const TextStyle(color: Colors.white))
          ],
        ),
      ),
    );
  }
}
