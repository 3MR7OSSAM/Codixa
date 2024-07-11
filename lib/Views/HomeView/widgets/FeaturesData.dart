import 'package:codixa/Views/HomeView/widgets/FeatuersData.dart';
import 'package:flutter/material.dart';

class FeaturesDataSecondColumn extends StatelessWidget {
  const FeaturesDataSecondColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(

      children: [
        FeaturesData(
          title: 'Instant Code Generation',
          subTitle:
          'Speed in processing images and generating code in a few seconds.',
          image: 'Assets/icons/code.png',
        ),
        FeaturesData(
          title: 'Save and share codes',
          subTitle:
          'The ability to save and easily share extracted codes via email or social media',
          image: 'Assets/icons/save.png',
        ),
      ],
    );
  }
}

class FeaturesDataFirstColumn extends StatelessWidget {
  const FeaturesDataFirstColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(

      children: [

        FeaturesData(
          title: 'Accurate image analysis',
          subTitle:
          'Use advanced artificial intelligence techniques to analyze images with high accuracy and extract the appropriate software code.',
          image: 'Assets/icons/accurecy.png',
        ),
        FeaturesData(
          title: 'Data Security',
          subTitle:
          'Emphasize the protection of users data and images and ensure that they are not used for unauthorized purposes.',
          image: 'Assets/icons/cloud.png',
        ),
      ],
    );
  }
}
