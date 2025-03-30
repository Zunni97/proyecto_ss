import 'dart:collection';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ss2025/colors.dart';
import 'package:ss2025/widgets/bottom_custom_navigation_bar.dart';
import 'package:ss2025/pages/register_page.dart';
import 'package:ss2025/pages/login_page.dart';
import 'package:ss2025/pages/forgot_pw_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTabIndex = 0;

  void onTabChanged(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  List<Widget> getCardsForTab(int index) {
    switch (index) {
      case 0:
        return [
          ProgramCard(
            title: "Empresa: INTELEC",
            description:
                "Ofrece productos de control y automatización eléctricos, así como la integración eléctrica de tableros de control.",
            imagePath: "lib/images/INTELEC.png",
          ),
          ProgramCard(
            title: "Empresa: Plenimex",
            description:
                "Fabricación de persianas, dirigida a licenciados en administración y áreas relacionadas.",
            imagePath: "lib/images/plenimex.png",
          ),
          ProgramCard(
            title: "Empresa: Schlage de Mexico",
            description:
                "Líderes en seguridad para el hogar, oficinas y propiedades comerciales.",
            imagePath: "lib/images/schlage.png",
          ),
          ProgramCard(
            title: "Empresa: Dallio",
            description:
                "Soluciones digitales optimizadas en tecnología avanzada.",
            imagePath: "lib/images/dallio.jpg",
          ),
        ];
      case 1:
        return [
          ProgramCard(
            title: "Dependencia: Guardería del IMSS",
            description:
                "Proceso administrativo de una empresa, dirigido a Ingenierías en sistemas y gestión empresarial.",
            imagePath: "lib/images/imss.png",
          ),
          ProgramCard(
            title: "Dependencia: Caracol Museo de Ciencias",
            description:
                "Guías educadores de salas de exhibición y talleres didácticos.",
            imagePath: "lib/images/museo.jpg",
          ),
          ProgramCard(
            title: "Dependencia: Instituto Tecnológico de Ensenada",
            description:
                "Generación de un sistema para el control de documentos escolares.",
            imagePath: "lib/images/ite.jpg",
          ),
        ];
      case 2:
        return [
          ProgramCard(
            title: "Empresa: Navico",
            description:
                "Líder en la transformación de las industrias marinas, dirigido a Administración e Ingeniería.",
            imagePath: "lib/images/navico.jpg",
          ),
          ProgramCard(
            title: "Empresa: Crown",
            description:
                "Posición única para apoyar el crecimiento del mercado de latas de bebidas.",
            imagePath: "lib/images/crown.jpg",
          ),
          ProgramCard(
            title: "Empresa: Clever Tiny Homes",
            description:
                "Fabricación de casas pequeñas, dirigido a Ingenieros industriales.",
            imagePath: "lib/images/clever.jpg",
          ),
          ProgramCard(
            title: "Empresa: Fender Musical Instruments",
            description:
                "Fabricación de instrumentos musicales, íconos de la cultura musical.",
            imagePath: "lib/images/fender.jpeg",
          ),
        ];
      default:
        return [];
    }
  }

  void navigateToLoginPage(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(
          showRegisterPage: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RegisterPage(
                  showLoginPage: () {
                    Navigator.pop(context); // Regresa al LoginPage
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void navigateToRegisterPage(BuildContext context) {
    if (!mounted) return;

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => RegisterPage(
          showLoginPage: () {
            navigateToLoginPage(context);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text('Bienvenido a Servitec'),
        backgroundColor: AppColors.background,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              FirebaseAuth.instance.signOut();
              navigateToLoginPage(context);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: ListView(children: getCardsForTab(currentTabIndex))),
          BottomCustomNavigationBar(onTabChange: onTabChanged),
        ],
      ),
    );
  }
}

class ProgramCard extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const ProgramCard({
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 4,
      child: ListTile(
        leading: ClipRRect(
        borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            imagePath,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(description),
      ),
    );
  }
}
