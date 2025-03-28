import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ss2025/colors.dart';
import 'package:ss2025/widgets/bottom_custom_navigation_bar.dart';
import 'package:ss2025/pages/register_page.dart';
import 'package:ss2025/pages/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  int currentTabIndex = 0; // Track the current tab index
  List<Widget> currentCards = []; // List to hold the current cards

  @override
  void initState() {
    super.initState();
    currentCards = getCardsForTab(
        currentTabIndex); // Initialize with the first tab's cards
  }

  List<Widget> getCardsForTab(int index) {
    switch (index) {
      case 0:
        return [
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.all(20),
            child: Card(
              color: AppColors.lightBlue,
              elevation: 5,
              shadowColor: AppColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Empresa: INTELECT',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(
                        'Carrera que va dirigido: Ingeneria en Sistemas / Gestion empresarial'),
                    Text('Contacto: Isaac Montalvo'),
                    Text('Contacto: 646-120-5605'),
                    Text('Descripción: Ofrece a la venta productos de control y'
                        ' automatización eléctricos, así como la integración eléctrica '
                        ' de tableros de control según las necesidades del cliente. '),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 2),
          Padding(
            padding: EdgeInsets.all(20),
            child: Card(
              color: AppColors.lightBlue,
              elevation: 5,
              shadowColor: AppColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Empresa: Plenimex',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(
                        'Carrera que va dirigido: Lic. Administración / Ing. Gestión Empresarial'),
                    Text('Contacto: michelle.toscano@3day.com'),
                    Text('Descripción: Somos una empresa dedicada a la fabricación de persianas'),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 2),
          Padding(
            padding: EdgeInsets.all(20),
            child: Card(
              color: AppColors.lightBlue,
              elevation: 5,
              shadowColor: AppColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Empresa: Schlage de Mexico',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Carrera que va dirigido: Ing. Mecatronica / Ing. Electromecanica'
                    'Ing. Industrial / Ing. Gestión Empresarial'),
                    Text('Contacto: osirema.morales@alligion.com'),
                    Text('Descripción: En Allegion, ayudamos a mantener a la gente segura'
                    ' y segura donde vive, aprende, trabaja y conecta.'),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 2),
          Padding(
            padding: EdgeInsets.all(20),
            child: Card(
              color: AppColors.lightBlue,
              elevation: 5,
              shadowColor: AppColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Empresa: Dallio',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Carrera que va dirigido: Ingeniería en Sistemas'),
                    Text('Contacto: luis.espinoza@dallio.io'),
                    Text('Descripción: Enfocados en soluciones digitales optimizadas,'
                    ' usamos tecnología de vanguardia para simplificar procesos complejos y'
                    ' transformar experiencias de usuario en viajes eficientes y atractivos.'),
                  ],
                ),
              ),
            ),
          ),
        ];
      case 1:
        return [
          SizedBox(height: 2),
          Padding(
            padding: EdgeInsets.all(20),
            child: Card(
              color: AppColors.lightBlue,
              elevation: 5,
              shadowColor: AppColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Dependencia: Guarderia del IMSS',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Tipo de programa: Externo'),
                    Text('Carrera que va dirigido: Ingeneria en Sistemas / Gestion empresarial'),
                    Text('Contacto: alberto.ovalle@imss.gob.mx'),
                    Text('Descripción: Conocimiento del proceso administrativo de una empresa'),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 2),
          Padding(
            padding: EdgeInsets.all(20),
            child: Card(
              color: AppColors.lightBlue,
              elevation: 5,
              shadowColor: AppColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Dependencia: Caracol Museo de Ciencias ',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Tipo de programa: Externo'),
                    Text('Carrera que va dirigido: Todas las carreras'),
                    Text('Contacto: paola@caracolbc.org'),
                    Text('Descripción: Los estudiantes apoyaran como guías educadores de salas de exhibición y'
                    ' conductores de talleres didácticos que apoyen la atención de visitantes escolares y'
                    ' público general de Caracol Museo de Ciencias. '),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 2),
          Padding(
            padding: EdgeInsets.all(20),
            child: Card(
              color: AppColors.lightBlue,
              elevation: 5,
              shadowColor: AppColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Dependencia: Instituto Tecnologico de Ensenada',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Tipo de programa: Interno'),
                    Text('Carrera que va dirigido: Ingenieria en Sistemas Computacionales'),
                    Text('Contacto: escolares@ite.edu.mx'),
                    Text('Descripción: Generar un sistema de para el control de los documentos del'
                    ' Departamento de Servicios Escolares, utilizando técnicas de ingeniería de software'
                    ' para apoyo a nuestra institución. '),
                  ],
                ),
              ),
            ),
          ),

        ];
      case 2:
        return [
         SizedBox(height: 2),
          Padding(
            padding: EdgeInsets.all(20),
            child: Card(
              color: AppColors.lightBlue,
              elevation: 5,
              shadowColor: AppColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Empresa: Navico',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(
                        'Carrera que va dirigido: Lic. Administración / Ing. Electronica / Ing. Industrial'),
                    Text('Contacto: karen.almaguer@navicogroup.com'),
                    Text('Descripción: El Grupo Navico es única posición para liderar la transformación '
                    ' de las industrias marinas y móviles y más allá.'),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 2),
          Padding(
            padding: EdgeInsets.all(20),
            child: Card(
              color: AppColors.lightBlue,
              elevation: 5,
              shadowColor: AppColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Empresa: Crown',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(
                        'Carrera que va dirigido: Lic. Administración / Ing. Gestión Empresarial'),
                    Text('Contacto: marcela.cota@crown.com'),
                    Text('Descripción: Con 200 plantas en 40 países, estamos en una posición única para apoyar a los clientes'
                    ' en la expansión de los mercados de latas de bebidas en las Américas y el Sudeste Asiático,'
                    ' así como geografías históricamente fuertes como Europa, Oriente Medio y África del Norte. '),
                  ],
                ),
              ),
            ),
          ),SizedBox(height: 2),
          Padding(
            padding: EdgeInsets.all(20),
            child: Card(
              color: AppColors.lightBlue,
              elevation: 5,
              shadowColor: AppColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Empresa: Clever Tiny Homes',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(
                        'Carrera que va dirigido:  Ing. Industrial'),
                    Text('Contacto: michelle.toscano@3day.com'),
                    Text('Descripción: Somos una empresa dedicada a la fabricación de persianas'),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 2),
          Padding(
            padding: EdgeInsets.all(20),
            child: Card(
              color: AppColors.lightBlue,
              elevation: 5,
              shadowColor: AppColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Empresa: Fender Musical Instruments',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(
                        'Carrera que va dirigido: Ing. Industrial / Ing. Gestión Empresarial'),
                    Text('Contacto: reclutamiento@fender.com'),
                    Text('Descripción: Empresa estadounidense de instrumentos musicales que se ha convertido en un icono cultural'),
                  ],
                ),
              ),
            ),
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
      builder: (context) => Loginpage(
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
          Expanded(
            child: ListView(
              children:
                  currentCards, // Use the variable to hold the current list of cards
            ),
          ),
          BottomCustomNavigationBar(
            onTabChange: (index) {
              setState(() {
                currentTabIndex = index; // Update the current tab index
                currentCards = getCardsForTab(
                    index); // Update the displayed cards based on the selected tab
              });
            },
          ),
        ],
      ),
    );
  }
}

/*
Log out button
            SizedBox(height: 30),
          
MaterialButton(onPressed: () {
              FirebaseAuth.instance.signOut();
            },*/
