import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class ElementosSobreNosScreen extends StatefulWidget {
  const ElementosSobreNosScreen({Key? key}) : super(key: key);

  @override
  State<ElementosSobreNosScreen> createState() => _ElementosSobreNosScreenState();
}

class _ElementosSobreNosScreenState extends State<ElementosSobreNosScreen> {

  final Uri _url = Uri.parse('https://wa.me/5569993576167');

  void _launchUrl() async {
    if (!await launchUrl(_url)) throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 30),
          child: Container(
              width: 300,
              child: Text('Sobre a A 11deFev Tecnology.', style: TextStyle(fontWeight: FontWeight.bold),)),
        ),
        Text('Empresa de consultoria tecnologia, voltada para Back-End e Data Base. Fundada no IFRO por J.Hadukem.'),
        Container(
          width: 330,
          height: 80,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton.icon(onPressed: _launchUrl, icon: Icon(Icons.whatsapp), label: Text("WhatsApp")),
          ),
        )
      ],
    );
  }
}