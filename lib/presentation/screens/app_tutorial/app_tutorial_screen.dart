import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>{
  SlideInfo('Busca la comida', 'Est nulla deserunt velit officia id ea do.',
      'assets/images/1.png'),
  SlideInfo(
      'Entrega rapida',
      'Non cupidatat proident commodo aliquip deserunt voluptate sunt.',
      'assets/images/2.png'),
  SlideInfo(
      'Disfruta la comida',
      'Ipsum anim duis sint in consequat laborum et sunt consectetur.',
      'assets/images/3.png'),
};

class AppTutorialScreen extends StatelessWidget {
  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: PageView(
            physics: const BouncingScrollPhysics(),
            children: slides
                .map((e) => _Slide(e.title, e.caption, e.imageUrl))
                .toList(),
          ),
        ),
        Positioned(
            right: 20,
            top: 50,
            child: TextButton(
                onPressed: () => context.pop(), child: const Text('Salir')))
      ],
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;
  const _Slide(this.title, this.caption, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodyLarge;
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(imageUrl),
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
              ]),
        ));
  }
}
