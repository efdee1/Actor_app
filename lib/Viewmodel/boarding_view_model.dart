import 'package:actor_app/UI/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:pmvvm/pmvvm.dart';

class BoardingViewModel extends ViewModel {
   navigateToActorPage(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>DashBoard()));
  }
}
