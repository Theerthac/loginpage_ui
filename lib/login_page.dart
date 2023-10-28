import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  TextEditingController usernameController= TextEditingController();
  TextEditingController passwordController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.bottomLeft,
                colors: [
              Color.fromARGB(255, 91, 184, 147),
              Color.fromARGB(255, 225, 192, 71)
            ])),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 170),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.person,
                  size: 120,
                  color: Colors.white,
                  
                  
                ),
              ),
            ),
             const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                style: const TextStyle(color: Colors.white),
                controller:usernameController ,
                decoration: InputDecoration(
                  hintText: 'Username',
                  hintStyle: const TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18,),
                   borderSide: const BorderSide(color: Colors.white,width: 2.0),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                                style: const TextStyle(color: Colors.white),
                                controller:passwordController ,
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  hintStyle: const TextStyle(color: Colors.white),
                                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18,),
                                   borderSide: const BorderSide(color: Colors.white,width: 2.0),
                                  ),
                                ),
                                
                              ),
                  ),
           const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                      
                onPressed: (){},
                 
                   style: ElevatedButton.styleFrom(
                    
                    shape: const StadiumBorder(),
                    
                    foregroundColor: Colors.blue,
                    backgroundColor: Colors.white,
                    ),
                
                 child: const SizedBox(width: double.infinity,   
                  child: Center(child: Text('sign in',style: TextStyle(fontSize: 20),))),
                 ),
            ),
               
          ],
        ),
      ),
    );
  }
}
