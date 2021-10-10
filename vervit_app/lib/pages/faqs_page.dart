import 'package:flutter/material.dart';
import 'FAQs/qna.dart';
import 'FAQs/qna_card.dart';

class FAQsPage extends StatefulWidget {
  @override
  _FAQsPageState createState() => _FAQsPageState();
}

class _FAQsPageState extends State<FAQsPage> {

  List<Qna> qnas = [
    Qna(question: 'Co umí tato aplikace?', answer: 'V aplikaci najdete instruktážní videa, která Vás od základu naučí, jak pracovat s mobilním telefonem nebo s počítačem. V sekci \'Kurzy\' navíc můžete zhlédnout tematicky zaměřené série videí, díky kterým hlouběji porozumíte danému tématu.'),
    Qna(question: 'Jak můžu najít instruktážní video, které hledám?', answer: 'Videa si můžete třídit podle vybraných kategorií v sekci \'Domů\' nebo můžete hledat konkrétni video podle klíčových slov v sekci \'Hledat\'.'),
    Qna(question: 'Musím být připojený k internetu abych mohl používat tuto aplikaci?', answer: 'Ano. Připojení k internetu je potřeba k tomu, abyste si mohli spustit jakékoliv instruktážní video.'),
    Qna(question: 'Jak se s vámi mohu spojit?', answer: 'V sekci \'Domů\' můžete v levém horním rohu rozkliknout vysouvací menu, kde najdete odkazy na další platformy, kde nás můžete kontaktovat.')
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: qnas.map((quote) => QuoteCard(qna: quote)).toList()
    );
  }
}