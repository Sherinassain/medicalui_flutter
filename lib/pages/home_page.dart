import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:medicalui_flutter/pages/Doctor_deatils.dart';
import 'package:medicalui_flutter/pages/specilist_container.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
     body: SafeArea(child: Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [

            Text('Hello,',style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w400),),
            Text('Shernas S',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 19),)
    
    
          ],),
          
        ),
        
        
      ),
      Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: 33,
          width: 33,
          decoration: BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(7)),
          child: Container(
            height: 20,
            decoration: BoxDecoration(color: Colors.deepPurple[100],borderRadius: BorderRadius.circular(7)),
            child: Icon(Icons.person,color: Colors.black,))),
      )
      ],),
      SizedBox(height: 25,),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          height: 140,
          width: 320,
          decoration: BoxDecoration(color: Colors.deepPurple[100],borderRadius: BorderRadius.circular(20)),
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(height: 100,
            width: 90,
    child: Lottie.asset('assets/images/101860-find-a-doctor.json'),
     ),
          ),
     Expanded(
       child: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 13),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 22,),
          Text('How do you feel?',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
         SizedBox(height: 7,),
         Text('Fill out your medical card right now'),
         SizedBox(height: 10,),
         Container(height: 35,
         width: 145,
         decoration: BoxDecoration(color: Colors.deepPurple[300],borderRadius: BorderRadius.circular(10)),
         child: Center(child: Padding(
           padding: const EdgeInsets.all(10),
           child: Text('Get Started',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
         )),
         )
         ],),
       ),
     ),
   
      ],),
        ),
      ),
      SizedBox(height: 25,),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          decoration: BoxDecoration(color: Colors.deepPurple[100],borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: TextField(decoration: InputDecoration(border: InputBorder.none,hintText: 'How can we help you?',hintStyle: TextStyle(fontSize: 14,color: Colors.black45,fontWeight: FontWeight.bold,)
            ,prefixIcon: Icon(Icons.search),
            ),
            
            ),
          )),
      ),
      SizedBox(height: 20,),
      Padding(
        padding: const EdgeInsets.all(14),
        child: Container(
          height: 80,
          
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
         
Category_container(iconpath: 'assets/icons/tooth (1).png', textpath: 'Dentist')   ,
Category_container(iconpath: 'assets/icons/surgeon.png', textpath: 'Surgen'),
Category_container(iconpath: 'assets/icons/cardiology.png', textpath: 'Cardio'), 
Category_container(iconpath: 'assets/icons/neurologist.png', textpath: 'Neurologist'),
Category_container(iconpath: 'assets/icons/pediatrics.png', textpath: 'Pediatrics'),
Category_container(iconpath: 'assets/icons/gynecologist.png', textpath: 'Gynecologist'),
          ],),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text('Doctor list',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
          Text('See all',style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.bold,fontSize: 16),),
        ],),
      ),
      SizedBox(height: 15,),
     Expanded(
       child: Container(child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
     
      Doctor_deatils(imagepaths: 'assets/images/download.jpeg', starrating: '4.5', doctorname: 'Dr.Gokul Jb', experience: '5 Year Exp', profession: 'Gynacologist'),
      Doctor_deatils(imagepaths: 'assets/images/images.jpeg', starrating: '3.8', doctorname: 'Dr. Sajan Bhasil', experience: '2 Year Exp', profession: 'pediatrition'),
      Doctor_deatils(imagepaths: 'assets/images/download.jpeg', starrating: '4.8', doctorname: 'Dr. Venki', experience: '6 Year Exp', profession: 'Cardiologist'),
      Doctor_deatils(imagepaths: 'assets/images/images.jpeg', starrating: '3.0', doctorname: 'Dr. Adiythan', experience: '5 Year Exp', profession: 'Neurologist'),
      Doctor_deatils(imagepaths: 'assets/images/download.jpeg', starrating: '3.8', doctorname: 'Dr. Anshad Ar', experience: '4 Year Exp', profession: 'Dentist'),
      Doctor_deatils(imagepaths: 'assets/images/images.jpeg', starrating: '3.2', doctorname: 'Dr. Shanil', experience: '7 Year Exp', profession: 'Surgen'),
       ],),),
     )

     ],)),
      
    );
  }
}
