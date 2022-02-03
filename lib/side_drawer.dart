import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget{
  const SideDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      child: Drawer(child: ListView(children: [
        const UserAccountsDrawerHeader(
             accountName: Text('text@mail.com')
            ,accountEmail: Text('Julia Currie')
            ,currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://m.media-amazon.com/images/M/MV5BNzg1MTUyNDYxOF5BMl5BanBnXkFtZTgwNTQ4MTE2MjE@._V1_UX214_CR0,0,214,317_AL_.jpg'
            ),
        ),
        ),
        ListTile(
          title: Text('Home'),
          leading: Icon(Icons.home),
          onTap: ()=> Navigator.pushReplacementNamed(
              context,
              'home'
          ),
        ),
        ListTile(
          title: Text('Videos'),
          leading: Icon(Icons.personal_video),
          onTap: ()=> Navigator.pushReplacementNamed(
              context,
              'videos'
          ),
        ),
        ListTile(
          title: Text('Settings'),
          leading: Icon(Icons.settings),
          onTap: ()=> Navigator.pushReplacementNamed(
              context,
              'settings'
          ),
        )
      ],
      )
      ),
    );
  }
}