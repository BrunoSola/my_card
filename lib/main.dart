import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:auto_size_text/auto_size_text.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

void abrirUrls(String perfilInstagram) async {
  final Uri urlInstagram = Uri.parse(perfilInstagram);
  
  // Verifica se pode abrir o link
  if (!await canLaunchUrl(urlInstagram)) {
    await launchUrl(
      urlInstagram, 
      mode: LaunchMode.externalApplication, // Tenta abrir o link em um app externo, como o Instagram
    );
  } else {
    debugPrint('Could not launch $urlInstagram');
  }
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
      String telefone = dotenv.env['TELEFONE']?? 'telefone padrão';
      String email = dotenv.env['EMAIL']?? 'E-mail padrão';


    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(69, 56, 255, 1),
        body: Center(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/perfil_avatar.jpg'),
                  radius: 50.0,
                ),
                const AutoSizeText(
                  'Bruno dos Reis Sola', 
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico',
                  ),
                  maxLines: 1,
                  minFontSize: 12.0,
                ),
                const Text(
                  'DESENVOLVEDOR FLUTTER',
                  style: TextStyle(              
                    fontFamily: 'SourceCodePro',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                    letterSpacing: 2,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                  width: 280.0, 
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                Card( //LinkedinIn
                  margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                  child: ListTile(
                    leading: TextButton.icon(
                      icon: const FaIcon(FontAwesomeIcons.linkedin),
                      label: const Text('LinkedinIn',                        
                      ),
                      onPressed: () {                        
                       abrirUrls('https://www.linkedin.com/in/bruno-sola/');
                      }
                    ),
                  ),                  
                ),
                Card( //GitHub
                  margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                  child: ListTile(
                    leading: TextButton.icon(
                      icon: const FaIcon(FontAwesomeIcons.github),
                      label: const Text('GitHub',                        
                      ),
                      onPressed: () {                        
                       abrirUrls('https://github.com/BrunoSola');
                      }
                    ),
                  ),                  
                ),
                Card( //Instagram
                  margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                  child: ListTile(
                    leading: TextButton.icon(
                      icon: const FaIcon(FontAwesomeIcons.instagram),
                      label: const Text('Instagram',                        
                      ),
                      onPressed: () {                        
                       abrirUrls('https://www.instagram.com/bruno_rsola');
                      }
                    ),
                  ),
                ),
                Card( //Whatsapp
                  margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                  child: ListTile(
                    leading: TextButton.icon(
                      icon: const FaIcon(FontAwesomeIcons.whatsapp),
                      label: const Text('WhatsApp'),
                      onPressed: () {
                        abrirUrls('https://wa.me/$telefone?text=Gostei%20da%20apresentação%20digital');
                      }
                    ),
                  ),
                ),
                Card( //E-mail
                  margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                  child: ListTile(
                    leading: TextButton.icon(
                      icon: const Icon(Icons.email),
                      label: const Text('E-mail'),
                      onPressed: () {
                        abrirUrls('mailto:$email');
                      }
                    ),
                  ),
                ),
 
              ]
            ),
          ),
        ),
      ),
    );
  }
}