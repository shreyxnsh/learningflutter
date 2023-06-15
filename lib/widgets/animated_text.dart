import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Text Widgets'),

      ),
      body: Column(
        children: [
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText('Shreyansh Jain',
               textStyle: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            speed: Duration(milliseconds: 100),
              ),
          
          ],
          totalRepeatCount: 5,
          pause: Duration(milliseconds: 200),
          displayFullTextOnTap: true,
          stopPauseOnTap: true,
          ),
        
        ],
      ),
    );
  }
}