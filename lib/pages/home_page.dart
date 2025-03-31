import 'dart:collection';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ss2025/colors.dart';
import 'package:ss2025/widgets/bottom_custom_navigation_bar.dart';
import 'package:ss2025/pages/register_page.dart';
import 'package:ss2025/pages/login_page.dart';
import 'package:ss2025/pages/forgot_pw_page.dart';
import 'package:ss2025/widgets/detail_screen.dart';

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
                "Ofrece productos de control y automatización eléctricos, así como la integración eléctrica de tableros de control."
                "\n\n• Informes: 646 120 5605 con Isaac Montalvo para programar una entrevista",
            imagePath: "lib/images/INTELEC.png",
            vacante: "Vacantes: \n• Ing. Gestion \n• Ing. Sistemas \n• Ing. Electronica"
          ),
          ProgramCard(
            title: "Empresa: Plenimex",
            description:
                "Fabricación de persianas, dirigida a licenciados en administración y áreas relacionadas."
                "\n\n• Informes: Mandar CV a Michelle.Toscano@3day.com",
            imagePath: "lib/images/plenimex.png",
            vacante: "Vacantes: \n• Ing. Administracion \n• Ing. Sistemas \n• Ing. Industrial \n• Ing. Gestion"
          ),
          ProgramCard(
            title: "Empresa: Schlage de Mexico",
            description:
                "Líderes en seguridad para el hogar, oficinas y propiedades comerciales."
                "\n\n• Informes: 646 120 5605 con Isaac Montalvo para programar una entrevista",
            imagePath: "lib/images/schlage.png",
            vacante: "Vacantes: \n• Ing. Gestion \n• Ing. Sistemas"
          ),
          ProgramCard(
            title: "Empresa: Dallio",
            description:
                "Soluciones digitales optimizadas en tecnología avanzada."
                "\n\n• Informes: Enviar CV a luis.espinoza@dallio.io",
            imagePath: "lib/images/dallio.jpg",
            vacante: "Vacantes: \n• Ing. Sistemas"
          ),
        ];
      case 1:
        return [
          ProgramCard(
            title: "Dependencia: Guardería del IMSS",
            description:
                "•Actividades: Apoyo Administrativo, cotejo de facturas, plantilla de personal, archivo de documentos y expedientes, intercalar archivos,formulacion de formatos de servicios etc"
                "\n\n• Informes: 6461788726 con Evelyn Anahi Dominguez Verduzco",
            imagePath: "lib/images/imss.png",
            vacante: "Vacantes: \n• Ing. Gestion \n• Ing. Sistemas \n• Ing. Administracion"
          ),
          ProgramCard(
            title: "Dependencia: Caracol Museo de Ciencias",
            description:
                "•Actividades: Cursar una capacitación de inducción y teoría de las exhibiciones. Apoyar en el área de servicios educativos en actividades de divulgación cientifica. Brindar recorridos guiados a traves de las exhibiciones y actividades. "
                "\n\n• Informes: 6461521993 con Jesús Leonardo Heiras Aguirre",
            imagePath: "lib/images/museo.jpg",
            vacante: "Vacantes: \n• Ing. Gestion \n• Ing. Administracion"
          ),
          ProgramCard(
            title: "Dependencia: Instituto Tecnológico de Ensenada",
            description:
                "•Actividades: Apoyar en proyectos de investigación de la línea Robótica y Control. Apoyar en el laboratorio de Robótica Avanzada. Apoyar al docente en actividades administrativas ligadas con los proyectos de investigación."
                "\n\n• Informes: 6461775682 con Valentín Arquímides Sánchez Beltrán",
            imagePath: "lib/images/ite.jpg",
            vacante: "Vacantes: \n• Ing. Mecatronica \n• Ing. Sistemas \n• Ing. Mecatronica \n• Ing. Electromecanica"
          ),
        ];
      case 2:
        return [
          ProgramCard(
            title: "Empresa: Navico",
            description:
                "Líder en la transformación de las industrias marinas, dirigido a Administración e Ingeniería."
                "\n\n• Informes: 6461531630 con Elvia Miranda Rubio",
            imagePath: "lib/images/navico.jpg",
            vacante: "Vacantes: \n• Ing. Gestion \n• Ing. Sistemas \n• Ing. Mecatronica"
          ),
          ProgramCard(
            title: "Empresa: Crown",
            description:
                "Posición única para apoyar el crecimiento del mercado de latas de bebidas."
                "\n\n• Informes: 6461775682 con Ana Maria Vera Esquivias",
            imagePath: "lib/images/crown.jpg",
            vacante: "Vacantes: \n• Ing. Mecatronica \n• Ing. Sistemas \n• Ing. Industrial"
          ),
          ProgramCard(
            title: "Empresa: Clever Tiny Homes",
            description:
                "Fabricación de casas pequeñas, dirigido a Ingenieros industriales."
                "\n\n• Informes: 6461560451 con Ismael Abraham Pule Ramirez",
            imagePath: "lib/images/clever.jpg",
            vacante: "Vacantes: \n• Ing. Gestion \n• Ing. Industrial \n• Ing. Administracion"
          ),
          ProgramCard(
            title: "Empresa: Fender Musical Instruments",
            description:
                "Fabricación de instrumentos musicales, íconos de la cultura musical."
                "\n\n• Informes: 6462568580 con Fernando Luis Chavira Alvarez",
            imagePath: "lib/images/fender.jpeg",
            vacante: "Vacantes: \n• Ing. Gestion \n• Ing. Sistemas \n• Ing. Electronica"
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
  final String vacante;

  const ProgramCard({
    required this.title,
    required this.description,
    required this.imagePath,
    required this.vacante
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
        subtitle: Text(vacante),
          onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(
                title: title,
                description: description,
                imagePath: imagePath,
              ),
            ),
          );
        },
      ),
    );
  }
}
