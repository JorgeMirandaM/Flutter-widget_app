import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final List<SlideInfo> slides = [
  SlideInfo(
      'Busca la comida',
      'Cillum deserunt sit non non aute mollit aliquip quis ea elit.',
      'assets/images/1.png'),
  SlideInfo(
      'Entrega ràpida',
      'Consectetur ipsum ipsum occaecat reprehenderit est Lorem nulla pariatur officia.',
      'assets/images/2.png'),
  SlideInfo(
      'Disfruta la comida',
      'Aliqua veniam culpa non duis ex minim veniam officia nostrud aliqua ex commodo consequat.',
      'assets/images/3.png'),
];

class AppTutorialScreen extends StatefulWidget {
  static const name = 'tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController pageviewController = PageController();

  bool endReached=false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    pageviewController.addListener(() {

      final page= pageviewController.page ?? 0;

      if( !endReached && page>=(slides.length -1.5)){
        setState(() {
          endReached=true;
        });
      }
      
      
    });
  }


  @override
  void dispose() {
    // TODO: implement dispose
    pageviewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
              controller: pageviewController,
              physics: const BouncingScrollPhysics(),
              children: slides
                  .map((slideData) => _Slide(
                      title: slideData.title,
                      caption: slideData.caption,
                      imageUrl: slideData.imageUrl))
                  .toList()),
          Positioned(
              right: 20,
              top: 50,
              child: TextButton(
                  onPressed: () => context.pop(), child: const Text('Salir'))),
          endReached ? Positioned(
            right: 30,
            bottom: 30,
              child: FadeInRight(
                from: 15,
                delay: const Duration(seconds: 1),
                child: FilledButton(
                    onPressed: () => context.pop(),
                    child: const Text('Comenzar')),
              )) : const SizedBox()
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide(
      {super.key,
      required this.title,
      required this.caption,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl)),
            const SizedBox(
              height: 20,
            ),
            Text(
              title,
              style: titleStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              caption,
              style: captionStyle,
            ),
          ],
        ),
      ),
    );
  }
}
