import 'package:class_works/listview/list%20view%20builder.dart';
import 'package:class_works/listview/listview%20custom.dart';
import 'package:class_works/stateful%20login%20with%20validation.dart';
import 'package:class_works/user%20register.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(home: TabEx(),));
}
class TabEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: const Text("WhatsApp"),
            actions: [
              const Icon(Icons.search),
              const Icon(Icons.camera_alt),
              PopupMenuButton(itemBuilder: (context) {
                return [
                  const PopupMenuItem(
                      child: Text("Settings"))
                ];
              })
            ],
            bottom:  TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                //isScrollable: true,
                labelPadding: EdgeInsets.zero,
                tabs: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width *.1,
                      child: FaIcon(FontAwesomeIcons.peopleGroup)),
                  SizedBox(
                      width: MediaQuery.of(context).size.width *.3,
                      child: Text("Chat")),
                  SizedBox(
                      width: MediaQuery.of(context).size.width *.3,
                      child: Text("Status")),
                  SizedBox(
                      width: MediaQuery.of(context).size.width *.3,
                      child: Text("Call"))
                ]),
          ),
          body: TabBarView(
            children: [
              Listview_with_builder(),
              RegistrationPage(),
              Login2(),
              ListView_Custom(),

            ],
          ),
        ));
  }
}