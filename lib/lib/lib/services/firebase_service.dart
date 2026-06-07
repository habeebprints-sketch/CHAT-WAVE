
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore db = FirebaseFirestore.instance;

  // AUTH
  Future<User?> signUp(String email, String password) async {
    final res = await auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return res.user;
  }

  Future<User?> login(String email, String password) async {
    final res = await auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return res.user;
  }

  // CHAT
  Future<void> sendMessage(String text, String userId) async {
    await db.collection("messages").add({
      "text": text,
      "userId": userId,
      "time": FieldValue.serverTimestamp(),
    });
  }

  Stream<QuerySnapshot> getMessages() {
    return db.collection("messages")
        .orderBy("time", descending: false)
        .snapshots();
  }
}
