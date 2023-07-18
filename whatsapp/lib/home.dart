import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  static const String id='home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, 
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text('WhatsApp'),
          bottom:const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.groups),
              ),
                Tab(
                child: Text('Chats'), 
              ),
              Tab(
                child: Text('Status'),
              ),
                Tab(
                child:  Text('Call'),
              ),   
            ]),
          actions: [
          const  Icon(Icons.camera_alt_outlined),
          const  SizedBox(width: 10,),
            Icon(Icons.search),
              SizedBox(width: 10,),
            PopupMenuButton(
              icon: Icon(Icons.more_vert_outlined),
              itemBuilder: (context) =>const[
                PopupMenuItem(
                value: '1',
                child: Text('New Group'),
                ),
                PopupMenuItem(value:'2' ,
                child: Text('Setting')),

                PopupMenuItem(
                  value:'3', child:Text('Logout')),
              ]
            ),
            
              SizedBox(width: 10,)
          ],
        ),
     
        body:  TabBarView(
          children: [
          Text('Community'),
          ListView.builder(
            itemBuilder: (context, index){
              return const ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://images.pexels.com/photos/1040881/pexels-photo-1040881.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                ),
                title: Text('John Wick'),
                subtitle: Text('Where is my dog?'),
                trailing: Text('6:26 PM'),
              );
            },
          ),
          ListView.builder(
            itemCount: 5,
            itemBuilder: (constant, index){

              if (index == 0){
                        return  Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('New Updates'),
                            ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.green,
                      width: 3
                    )
                  ),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage('https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                ),
                title: Text("Jenny"),
                subtitle: Text('45m ago'),
              ),
                          ],
                        );
           
              }
              else{
             return  ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.green,
                      width: 3
                    )
                  ),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage('https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                ),
                title: Text("Jenny"),
                subtitle: Text('45m ago'),
              );
           
              }
              },
            ),


         ListView.builder(
            itemBuilder: (context, index){
              return  ListTile(

                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://images.pexels.com/photos/1040881/pexels-photo-1040881.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                ),
                title: Text('John Wick'),
                subtitle: Text(index /2 ==0 ? 'You missed audio call':'call time is 12:25'),  
                trailing: Icon(index /2 ==0 ?  Icons.call: Icons.video_call),
              );
            },
          ),

        ]),
     )   
    );
  }
}