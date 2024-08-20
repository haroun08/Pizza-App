import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

import '../pizza_repository.dart';

class FirebasePizzaRepo implements PizzaRepo {
  final pizzaCollection = FirebaseFirestore.instance.collection('pizzas');

  Future<List<Pizza>> getPizzas() async {
    try {
      final querySnapshot = await pizzaCollection.get();

      return querySnapshot.docs.map((doc) {
        return Pizza.fromEntity(PizzaEntity.fromDocument(doc.data()));
      }).toList();

    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
