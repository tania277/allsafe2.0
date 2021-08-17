import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            _Fondologin(),
            _ImagenAll(),
            _ContenidoLogin(),
          ],
        ),
      ),
    );
  }
}

class _ImagenAll extends StatelessWidget{
  const _ImagenAll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 20),
        child: Image(image: AssetImage('assets/images/logopng.png',),
        ),
      ),
    );
  }
}


class _ContenidoLogin extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(top: 250.0),
      child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 0.2),
              child: Text('', 
              style: TextStyle( 
                color: Colors.white, 
                fontSize: 24.0, 
                fontStyle: FontStyle.normal 
                ), 
              ),
            ),
           
            Container(
              width: 345.0,
              height: 350.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 18),
                  child: Form(
                    child: Column(children: [
                      Text('Inicio de Sesión', style: TextStyle(color: Colors.teal, fontSize: 20),),
                      SizedBox(height: 30,),
                      _inputEmail(),
                      SizedBox(height: 30,),
                      _inputPassword(),
                      SizedBox(height: 50,),
                      MaterialButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        disabledColor: Colors.grey,
                        elevation: 0,
                        color: Colors.teal,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                          child: Text('Ingresar',
                          style: TextStyle(color: Colors.white)
                             ),
                          ),

                        onPressed: (){}, )
                    ],
                    ),
                    ),
                ),
            )
        ],
      ),
    
    );
  }

  Widget _inputEmail() {
    return TextFormField(
              autocorrect: false,
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.teal
                    ),
                    ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide (
                    color: Colors.teal,
                    width: 2)),
                hintText: 'example@gmail.com',
                labelText: 'Correo electronico',
                prefixIcon: Icon(Icons.email_sharp, color: Colors.teal,)
                
              ),
    );
  }
}




Widget _inputPassword() {
  return TextFormField(
              autocorrect: false,
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.teal)
                    ),
                
                hintText: '',
                labelText: 'Contraseña',
                prefixIcon: Icon(Icons.lock_outline_sharp, color: Colors.teal,)
              ),
    );
  
}

class _Fondologin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      width: double.infinity,
      color: Color.fromRGBO(2, 48, 71, 1),
    ) ;
  }
}

