import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

final FirebaseAuth auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();

Future<bool> googleSignInmethod() async {
  GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();

  if (googleSignInAccount != null) {
    GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken);

    UserCredential result = await auth.signInWithCredential(credential);

    User? user = auth.currentUser;
    print(user);

    return Future.value(true);
  } else {
    return false;
  }
}

// Future<bool> signInWithGoogle() async {
//   GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
//   GoogleSignInAuthentication googleSignInAuthentication =
//       await googleSignInAccount.authentication;
//   AuthCredential credential = GoogleAuthProvider.getCredential(
//     accessToken: googleSignInAuthentication.accessToken,
//     idToken: googleSignInAuthentication.idToken,
//   );
//   AuthResult authResult = await _auth.signInWithCredential(credential);
//   _user = authResult.user;

//   FirebaseUser currentUser = await _auth.currentUser();

//   print("User Name: ${_user.displayName}");
//   print("User Email ${_user.email}");
// }

Future<bool> signOutUser() async {
  User? user = auth.currentUser;

  if (user?.providerData[1].providerId == 'google.com') {
    await googleSignIn.disconnect();
  }
  await auth.signOut();
  return Future.value(true);
}
