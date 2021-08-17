import 'package:allsafe/src/models/models.dart';
import 'package:allsafe/src/providers/users.provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageUser extends StatelessWidget{
  final _userProvider = Get.put(UsersProvider());
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Seccion Usuarios'),
      ),
      body: GetBuilder<UsersProvider>(builder: (UsersProvider usuarioProvider){
        return ListView.builder(
          itemCount: usuarioProvider.usuario.length,
          itemBuilder: (context, i){
           return _ListTileUser(usuarioProvider.usuario[i]);
          },
        );
      },
      ),
    );
  }
}
class _ListTileUser extends StatelessWidget{
  final UsersModel usuario;
  _ListTileUser(this.usuario);
  @override 
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(usuario.name),
      subtitle: Text(usuario.email) ,);
  }
}