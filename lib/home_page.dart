import 'package:ai_voice/pallete.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Ai Thing'),
          leading: const Icon(Icons.menu),
          centerTitle: true,
        ),
        body: Column(
          children: [
            //virtual picture photo part
            Stack(
              children: [
                Center(
                  child:Container(
                    height: 120,
                    width: 120,
                    margin: const EdgeInsets.only(top: 4),
                    decoration: const BoxDecoration(
                      color: Pallete.assistantCircleColor,
                      shape: BoxShape.circle,
                    )
                    )
                    ),
                    Container(
                      height: 123,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage('assets/images/virtualAssistant.png'))
                      ),
                    )
              ],
            ),
            //chat containers
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              margin: const EdgeInsets.symmetric(
                horizontal: 40,
              ).copyWith(
                top:30
              ),
              decoration: BoxDecoration( 
                border: Border.all(
                  color: Pallete.borderColor,
                ),
              ),
              child: const Text('Good Morning, How can i help you',style:  TextStyle(
                       color: Pallete.mainFontColor,
                       fontFamily: 'Cera Pro',
                       fontSize: 25,
              ),),
            )
          ],
        ));
  }
}
