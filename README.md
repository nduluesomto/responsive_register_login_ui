A responsive UI for Register and Login Pages (responsive_register_login_ui)

## Getting Started
This project is a simple aesthetic UI for Flutter Apps using Navigator.push to navigate between pages.

## Folder Structure
Here is the core folder structure which flutter provides.
<code>
flutter-app/
 |- android
 |- build
 |- ios
 |- lib
 |- test
 </code>

Here is the folder structure we have been using in this project
<code> 
lib/
|- images/
|- pages/
|- util/
|- widgets/
|- main.dart</code>

## Main
<code>
import 'package:flutter/material.dart';
import 'package:responsive_register_login_ui/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    ); }}
</code>

## Signup Screen
<img src="https://user-images.githubusercontent.com/120676400/209547733-8ec98228-5353-48ee-b747-19b354cafdc6.png" width="800" height="1200">


![Signup Screen](https://user-images.githubusercontent.com/120676400/209547733-8ec98228-5353-48ee-b747-19b354cafdc6.png)

## Login Screen
![Login Screen](https://user-images.githubusercontent.com/120676400/209547795-787b031f-e8a7-471a-b71a-dbf14b043e34.png)
