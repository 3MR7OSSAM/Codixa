import 'package:codixa/Views/HomeView/widgets/EclipseContainer.dart';
import 'package:codixa/GlobalWidgets/GlassContainer.dart';
import 'package:codixa/Views/HomeView/widgets/SliderGlassWidget.dart';
import 'package:flutter/material.dart';

class ExamplesSection extends StatefulWidget {
  const ExamplesSection({super.key});

  @override
  _ExamplesSectionState createState() => _ExamplesSectionState();
}

class _ExamplesSectionState extends State<ExamplesSection> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    double width = size.width;
    double height = size.height;
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(color: Colors.black),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Center(
            child: Image.asset(
              'Assets/images/Background02.jpg',
              width: width,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            width: width,
            height: height,
            color: Colors.black.withOpacity(0.8),
          ),
          Positioned(top: 0, left: 0, child: EclipseContainer()),
          Positioned(bottom: 0, right: 0, child: EclipseContainer()),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 100,),
              const Center(
                child: Text(
                  'Examples of our tool',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                     
                  ),
                ),
              ),
              const SizedBox(height: 50,),
              Row(
                children: [
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GlassContainer(
                      width: 400,
                      height: 500,
                      blur: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Spacer(flex: 5,),
                          const Padding(
                            padding: EdgeInsets.only(left: 15.0),
                            child: Text('Service \nexamples', style: TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                               
                            ),),
                          ),
                          const Spacer(flex: 4,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('Assets/icons/AppSymbol.png', width: 50,),
                          ),
                          const Spacer(flex: 1,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 1000,
                    height: 500,
                    child: GestureDetector(
                      onPanUpdate: (details) {
                        _scrollController.jumpTo(
                          _scrollController.offset - details.delta.dx,
                        );
                      },
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        controller: _scrollController,
                        child: const Row(
                          children: [
                            SliderGlassWidget(title: 'image gallery code', image: 'Assets/images/Slider1.png',),
                            SliderGlassWidget(title: 'Nav bar code', image: 'Assets/images/Slider2.png',),
                            SliderGlassWidget(title: 'Dice code', image: 'Assets/images/Slider3.png',),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('Assets/icons/mouseIcon.png',width: 50,),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
