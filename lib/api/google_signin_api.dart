import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInApi{
   static final _clientIDWeb='783670221810-q2752f4710krc3d758h6h6iugv5kdsde.apps.googleusercontent.com';
   static final _googleSignIn=GoogleSignIn(clientId: _clientIDWeb);
   static Future<GoogleSignInAccount?> login()=>_googleSignIn.signIn();
}