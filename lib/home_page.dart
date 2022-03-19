import 'package:assignment_flutter_ui_2/responsive.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    print('-------------->$size');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Portrait'),
      ),
      drawer: Responsive.isPortrait(context)
          ? Drawer(
        backgroundColor: Colors.white.withOpacity(.5),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 80,
                      ),
                      _textWidget(context, 'FIRST ELEMENT'),
                      _textWidget(context, 'SECOND ELEMENT'),
                      _textWidget(context, 'THIRD ELEMENT'),
                      _textWidget(context, 'FOUTH ELEMENT'),
                      _textWidget(context, 'FIFTHE ELEMENT'),
                    ],
                  ),
                ),
              ),
            )
          : Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                title: const Text('landscape'),
              ),
              drawer: null,
              body: SafeArea(
                child: Container(
                  width: size * 0.5,
                  color: Colors.white,
                  child: Column(
                    children: [
                      const SizedBox(height: 20,),
                      _textWidget(context, 'FIRST ELEMENT'),
                      _textWidget(context, 'SECOND ELEMENT'),
                      _textWidget(context, 'THIRD ELEMENT'),
                      _textWidget(context, 'FOUTH ELEMENT'),
                      _textWidget(context, 'FIFTHE ELEMENT'),
                    ],
                  ),
                ),
              ),
            ),
    );
  }

  Widget _textWidget(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .headline6!
            .copyWith(fontWeight: FontWeight.w500),
      ),
    );
  }
}
