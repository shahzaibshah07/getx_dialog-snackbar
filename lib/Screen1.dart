import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Dialog', textAlign: TextAlign.center,),
        backgroundColor: Colors.purple,
      ),


      body: Column(
        children: [
          Card(
            child: ListTile (
              title: Text('GetX Dialog Alert'),
              subtitle: Text('GetX Dialog Alert '),
              onTap: (){
                Get.defaultDialog(
                    title: 'Delete Chats',
                    titlePadding: EdgeInsets.only(top:20),
                    contentPadding: EdgeInsets.all(20),
                    middleText: 'Are You Sure You Want to Delete Chats',
                    // textConfirm: 'Yes',
                    // textCancel: 'No',  instead of these both if i want to make it custon then
                    confirm: TextButton(onPressed: (){
                      Navigator.pop(context);
                    },
                        child: Text('OK')),
                    cancel: TextButton(
                        onPressed: (){},
                        child: Text('Cancel'))
                );
              },
            ),
          )
        ],
      ),




      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
          child: Icon(Icons.add),
          onPressed: (){
            Get.snackbar('GetX Snackbar', 'Here is new beginning',
              // snackPosition: SnackPosition.BOTTOM,
            );
          },
      ),

    );
  }
}
