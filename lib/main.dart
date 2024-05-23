import 'package:teste/keywords_response.dart';
import 'package:flutter/material.dart';
import 'package:ikchatbot/ikchatbot.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final chatBotConfig = IkChatBotConfig(
      //SMTP Rating to your mail Settings
      ratingIconYes: const Icon(Icons.star),
      ratingIconNo: const Icon(Icons.star_border),
      ratingIconColor: Colors.black,
      ratingBackgroundColor: Colors.white,
      ratingButtonText: 'Enviar nota',
      thankyouText: 'Obrigado pela sua opinião!',
      ratingText: 'De uma nota para sua experiência utilizando o nosso chatbot',
      ratingTitle: 'Obrigado por usar o nosso chatbot!',
      body: 'This is a test email sent from Flutter and Dart.',
      subject: 'Test Rating',
      recipient: 'recipient@example.com',
      isSecure: false,
      senderName: 'Your Name',
      smtpUsername: 'Your Email',
      smtpPassword: 'your password',
      smtpServer: 'stmp.gmail.com',
      smtpPort: 587,
      //Settings to your system Configurations
      sendIcon: const Icon(Icons.send, color: Colors.black),
      userIcon: const Icon(Icons.animation, color: Colors.white),
      botIcon: const Icon(Icons.android, color: Colors.white),
      botChatColor: Color.fromARGB(255, 97, 160, 85),
      delayBot: 100,
      closingTime: 1,
      delayResponse: 1,
      userChatColor: Color.fromARGB(255, 214, 144, 82),
      waitingTime: 1,
      keywords: keywords,
      responses: responses,
      backgroundColor: Color.fromARGB(255, 209, 210, 215),
      backgroundImage:
          'https://i.pinimg.com/736x/d2/bf/d3/d2bfd3ea45910c01255ae022181148c4.jpg',
      backgroundAssetimage: "lib/assets/bg.jpeg",
      initialGreeting:
          "👋 Ola! \n Bem Vindo! \n Como posso lhe ajudar hoje?",
      defaultResponse: "Desculpa, não entendi a sua pergunta",
      inactivityMessage: "Tem mais algo que posso lhe ajudar?",
      closingMessage: "A conversa irá fechar automaticamente devido a inatividade",
      inputHint: 'Mande uma mensagem',
      waitingText: 'Pensando na sua resposta, favor aguardar',
      useAsset: false,
    );

    return MaterialApp(
      title: '1º ChatBot em Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(chatBotConfig: chatBotConfig),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final IkChatBotConfig chatBotConfig;

  const MyHomePage({super.key, required this.chatBotConfig});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final bool _chatIsOpened = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('ChatterMax Trial'),
        ),
        // floatingActionButton: FloatingActionButton(onPressed: () {
        //   if(_chatIsOpened =  false) {
        //     setState(() {
        //     _chatIsOpened = true;
        //     });
        //   }else {
        //     setState(() {
        //       _chatIsOpened = false;
        //     });
        //   }
        //
        // },
        // child: Icon(Icons.chat),),
        body: _chatIsOpened
            ? const Center(
                child: Text('ChatterMax Trial'),
              )
            : ikchatbot(config: widget.chatBotConfig));
  }
}