import 'package:flutter/material.dart';
class all_in_one extends StatefulWidget {
  const all_in_one({super.key, required Color backgroundColor});

  @override
  State<all_in_one> createState() => _all_in_oneState();
}

class _all_in_oneState extends State<all_in_one> {
  List<String> fruits=['apple','banana','mango','paaya'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Center(child: Text('APP BAR')),
      ),
      
    drawer: Drawer(
  child:Container(
    color: Colors.grey,
    child:ListView(
      children:const [
        DrawerHeader(
          padding: EdgeInsets.all(20),
          child:Row(
            children: [
              CircleAvatar(
             
              backgroundImage: AssetImage('assets/oyy.jpg'), 
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('kavitha',
                  style: TextStyle(fontSize: 20),),
                  Text('kavitha@gmail.com'),
                ],
              )

            ]
            ),
          ),
          ListTile(
            leading: Icon(Icons.folder),
            title: Text('my files'),
          ),
          ListTile(
            leading: Icon(Icons.group),
            title: Text('shared with me'),
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('starred'),
          ),
          ListTile(
            leading: Icon(Icons.delete),
            title: Text('Trash'),
          ),
          ListTile(
            leading: Icon(Icons.upload),
            title: Text('uloads'),
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('share'),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('logout'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('settings'),
          ),
          ListTile(
            leading: Icon(Icons.add_circle),
            title: Text('info'),
          ),
         ], ),
  ),),
  body:
  
  
  Column(
  
    children: [
      
      Expanded(
        
        
        
      
     child: ListView.builder(
      
        
        
        
            itemCount: fruits.length,
          itemBuilder:(context,index){
            return Dismissible(
            
            
              onDismissed: (direction) {
                if(direction==DismissDirection.startToEnd){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(fruits[index]),
                    backgroundColor: Colors.red,
                    ));
      
                }
                else{
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                 content: Text(fruits[index]),
                 backgroundColor: Colors.green,
                  ));
      
                }
              },
         key: Key(fruits[index] ), 
              background: Container(
                color: Colors.red,
              ),
              secondaryBackground: Container(
                color: Colors.green,
              ),
              child: Card(
                child: ListTile(
                  title: Text(fruits[index]),
                ),
              ),
              );
          },
          ),

      ),
      Center(
        child: Container(
            child: Center(
              child: ElevatedButton(
                onPressed:  (){
                  final snackBar=SnackBar(
                    action:SnackBarAction(
                   label: 'undo',
                   textColor: Colors.blue,
                    onPressed: (){ },
                   ),
                   shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                   ),
                   behavior: SnackBarBehavior.floating,
                  padding: EdgeInsets.all(20),
                   duration: const Duration(milliseconds: 1000),
                  backgroundColor: Colors.black87,
                    content:Text('this is snack bar'),);
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
               child:Text('show snackbar')
              ),
            ),),
      ),
      SizedBox(height: 20),
      Center(
        child: ElevatedButton(
            onPressed: (){
              showModalBottomSheet(
                backgroundColor: Theme.of(context).primaryColor,
                elevation: 0,
                isDismissible: false,
                enableDrag: false,
                shape:const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
          
                  ),
                )
                ,
                context: context,
                 builder: (context) {
                   return const Column(
                    mainAxisSize: MainAxisSize.min,
                    
                    children: [
                      ListTile(
                        title:Text ('harika'),
                        subtitle: Text('haari'),
                        ),
                        ListTile(
                        title:Text ('poojitha'),
                        subtitle: Text('pooji'),
                        ),
                        ListTile(
                        title:Text ('jagadeesh'),
                        subtitle: Text('jaggu'),
                        ),
                        ListTile(
                        title:Text ('likitha'),
                        subtitle: Text('liki'),
                        ),
                        ListTile(
                        title:Text ('padmavathi'),
                        subtitle: Text('padhu'),
                        ),
                    ],
          
                   );
                 }, );
            },
            child:
            
             Text('show bottom sheet',
             style: TextStyle(
              color: Colors.grey
             ),
              ),
            
          ),
      ),
      SizedBox(height: 20),
  

   
    Center(
            child: ElevatedButton(
              onPressed: () {
                _showMyDialog(context);
              },
              child: Text('Show Alert'),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _showMyDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          elevation: 0,
          scrollable: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: const Text('This is an alert'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: [
                Text('This is a demo.'),
                Text('This is an example of a multiline message.'),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                // Add your "Approve" action logic here
              },
              child: Text('Approve'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}