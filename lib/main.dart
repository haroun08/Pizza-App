import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pizza/simple_bloc_observer.dart';
import 'package:user_repository/user_repository.dart';

import 'app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      projectId: 'pizza-delivery-f717b',
      apiKey: 'AIzaSyD81qO-sWO8jantt47gsDVcnadK1Is4Sk0',
      appId: '1:272879722715:android:b32d7174e31b58b78bacfe',
      messagingSenderId: '272879722715',
      storageBucket: 'pizza-delivery-f717b.appspot.com',
    ),
  );
  Bloc.observer = SimpleBlocObserver();
  runApp(MyApp(FirebaseUserRepo()));
}


