import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:for_pets/firebase_options.dart';
import 'src/pages/home.dart';
import 'src/pages/profile.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ForPets Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(title: 'ForPets Home Page'),
        '/profile': (context) => const ProfilePage(title:'Profile')
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
        useMaterial3: true,
      )
    );
  }
}
