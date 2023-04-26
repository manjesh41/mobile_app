import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/app.dart';

import 'view/dashboard_stateless.dart';
import 'view/name_change_person.dart';
import 'view/simple_interest_view.dart';

class MyDash extends StatelessWidget {
  const MyDash({super.key});

  @override
  Widget build(BuildContext context) {
    return newMethod();
  }

  MaterialApp newMethod() {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      initialRoute: '/',
      routes: {
        '/': (context) => const DashboardView(),

        "/SimpleInterest": (context) => const SimpleInterest(),
        "/changeNameRoute":(context) => const MyNameChange(),

//'/AreaOfCircle':(context)=> const Circle(),
      },
    );
  }
}
