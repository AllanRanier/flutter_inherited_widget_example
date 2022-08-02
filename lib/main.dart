import 'package:flutter/material.dart';
import 'package:flutter_example/home/home_page.dart';
import 'package:flutter_example/model/user_model.dart';
import 'package:flutter_example/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return UserModel(
      name: 'Allan',
      imgAvatar: 'https://scontent.frec7-1.fna.fbcdn.net/v/t1.6435-9/127129931_3457441594311125_2074527825564565741_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=g987HuVsaxwAX8FsUjJ&_nc_ht=scontent.frec7-1.fna&oh=00_AT8UZ9Ld8VLsLO0Dibzrchhnt0Sv_2v2wlaLLQEUE-Pcwg&oe=630C79B2',
      birthData: '18/04/1999',
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/': (_) => const SplashPage(),
          '/home': (_) => const HomePage(),
        },
      ),
    );
  }
}
