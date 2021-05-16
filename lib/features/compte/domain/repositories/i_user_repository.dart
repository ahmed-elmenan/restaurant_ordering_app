import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/core/models/user.dart';
import 'package:flutter_application_1/core/services/user.dart';
import 'package:flutter_application_1/core/user_session_management/shared_pref.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

class UserRepository {
  FirebaseAuth firebaseAuth;
  UserServices userServices;
  SharedPref sharedPref;

  UserRepository() {
    this.firebaseAuth = FirebaseAuth.instance;
    this.userServices = UserServices();
    this.sharedPref = SharedPref();
  }

  Future<User> signInUser(String email, String password) async {
    var result = await firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);

    return result.user;
  }

  Future<void> signOut() async {
    await sharedPref.remove('userModel');
    await firebaseAuth.signOut();
  }

  bool isSignIn() {
    return firebaseAuth.currentUser != null;
  }

  User getCurrentUser() {
    return firebaseAuth.currentUser;
  }

  Future<UserModel> verifyUserInfo(String societyName,
      String partenariatUserName, String emailOrPhone) async {
    try {
      return userServices.getUserByInfo(
          societyName, partenariatUserName, emailOrPhone);
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future changeUserPassword(User user, String newPassword) async {
    try {
      await user.updatePassword(newPassword);
    } catch (e) {
      print(e);
    }
  }

  Future sendCodeToEmail(String verificationCode, String email) async {
    String username = 'coemco12@gmail.com';
    String password = 'Coemco@123@@';
    print(">>>>>>>>" + email);
    // ignore: deprecated_member_use
    final smtpServer = gmail(username, password);
    // Use the SmtpServer class to configure an SMTP server:
    // final smtpServer = SmtpServer('smtp.domain.com');
    // See the named arguments of SmtpServer for further configuration
    // options.

    // Create our message.
    final message = Message()
      ..from = Address(username, 'Coemco')
      ..recipients.add(email)
      // ..ccRecipients.addAll(['destCc1@example.com', 'destCc2@example.com'])
      // ..bccRecipients.add(Address(email))
      ..subject = 'Coemco Code de Verification'
      ..text = 'Votre code de verification:\n $verificationCode';
    // ..html = "<h1>Test</h1>\n<p>Hey! Here's some HTML content</p>";

    try {
      final sendReport = await send(message, smtpServer);
      print('Message sent: ' + sendReport.toString());
    } on MailerException catch (e) {
      print('Message not sent.');
      for (var p in e.problems) {
        print('Problem: ${p.code}: ${p.msg}');
      }
    }
  }

  Future sendFirebaseForgottenPasswordEmail(String email) async {
    try {
      await this.firebaseAuth.sendPasswordResetEmail(email: email);
      print("repo email >>" + email);
    } catch (e) {
      print('repo : >>' + e);
    }
  }
}
