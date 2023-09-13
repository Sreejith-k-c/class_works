import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: ExitAppAlert(),));
}

class ExitAppAlert extends StatelessWidget {
  const ExitAppAlert({super.key});

  @override
  Widget build(BuildContext context) {

    Future<bool> showAlert() async{
      return await showDialog(context: context, builder: (context){
        return AlertDialog(
          title: Text("Exit"),
          content: Text("Do You Really Want To Exit"),
          actions: [
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pop(true);
                }, child: Text("Yes")),
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pop(false);
                }, child: Text("No")),
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pop(false);
                }, child: Text("Cancel")),
          ],
        );
      });
    }
    return WillPopScope(
      onWillPop: showAlert,
      child:Scaffold(
        appBar: AppBar(
          title: const Text("EXIT FROM APP"),
      ),
    body: const Center(
      child: Text("Press Back Button To Exit!!!"),
    ),
      ));
  }
}
