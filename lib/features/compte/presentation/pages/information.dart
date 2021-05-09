import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_application_1/core/widgets/header_with_back_arrow.dart';
import 'package:flutter_application_1/features/compte/presentation/widgets/user_info.dart';

class Information extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 40.0, left: 30, right: 30),
        child: ListView(
          children: [
            HeaderWithBackArrow(title: "Informations", flag: true),
            SizedBox(height: 16),
            Divider(color: GlobalTheme.kDeviderColor),
            SizedBox(height: 40),
            UserInfo(
                imageUrl: "assets/images/building.svg",
                title: "Nom de société",
                imageSize: 19.79),
            SizedBox(height: 40),
            UserInfo(
                imageUrl: "assets/images/avatar_account.svg",
                title: "Identifiant de partenariat",
                imageSize: 17.5),
            SizedBox(height: 40),
            UserInfo(
              imageUrl: "assets/images/mail.svg",
              title: "lorem.ipsum@email.com",
              imageSize: 14.4,
            ),
            SizedBox(height: 40),
            UserInfo(
              imageUrl: "assets/images/lock.svg",
              title: "Changer le mot de passe",
              flag: true,
              imageSize: 21.01,
            ),
            SizedBox(height: 40),
            UserInfo(
                imageUrl: "assets/images/phone.svg",
                title: "+212 539 220 000",
                imageSize: 19.08),
          ],
        ),
      ),
    );
  }
}
