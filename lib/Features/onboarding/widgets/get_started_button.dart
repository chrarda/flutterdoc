import 'package:flutter/material.dart';
import 'package:flutterdoc/core/Theming/colors.dart';
import 'package:flutterdoc/core/Theming/styles.dart';
import 'package:flutterdoc/core/rouTing/routes.dart';
import 'package:flutterdoc/core/helpers/extentions.dart'; // Assurez-vous d'importer les extensions de navigation

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // Prend toute la largeur
      child: TextButton(
        onPressed: () {
          context.pushNamed(
              Routes.loginScreen); // Navigation vers la page de connexion
        },
        style: TextButton.styleFrom(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: const Size(double.infinity, 52), // Version simplifiée
          backgroundColor: ColorsManager.mainBlue, // Couleur de fond
          foregroundColor: Colors.white, // Couleur du texte (optionnel)
          padding: const EdgeInsets.symmetric(vertical: 16),
          side: const BorderSide(
              color: ColorsManager.gray, width: 2), // Meilleur touch target
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            // Bord arrondi
          ),
        ),
        child: Text(
          'Get Started',
          style: TextStyles.font16WhiteSemiBold,
        ),
      ),
    );
  }
}
