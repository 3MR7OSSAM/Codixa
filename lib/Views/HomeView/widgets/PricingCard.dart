import 'package:flutter/material.dart';


class PricingCard extends StatelessWidget {
  const PricingCard({super.key, required this.width, required this.height, required this.planeName, required this.subtitle, required this.price, required this.features, required this.bgColor, required this.textColor});
  final double width;
  final double height;
  final String planeName;
  final String subtitle;
  final String price;
  final List<String> features;
  final Color bgColor;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Top Icon
           Image.asset('Assets/icons/AppSymbolGrayColor.png',color: textColor,),
          const SizedBox(height: 16.0),
          // Title
           Text(
            planeName,
            style:  TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
          const SizedBox(height: 4.0),
          // Subtitle
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey[700],
            ),
          ),
          const SizedBox(height: 16.0),
          // Price
          Row(
            children: [
               Text(
                "\$${price}",
                style:  TextStyle(
                  fontSize: 36.0,
                  color: textColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                " / per month",
                style: TextStyle(
                  fontSize: 16.0,
                  color: textColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          // Button
          Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black, backgroundColor: Colors.white,
                side: const BorderSide(color: Colors.grey),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: const Text("Get Started"),
            ),
          ),
          const SizedBox(height: 16.0),
          const Divider(color: Colors.grey),
          const SizedBox(height: 16.0),
          // Features
           Text(
            "Features",
            style: TextStyle(
              color: textColor,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8.0),
          // Feature List
          SizedBox(
            height: height /3.5,
            child: ListView.builder(
                itemCount: features.length,
                itemBuilder: (context ,index){
              return FeatureItem(text: features[index], color: textColor,);
            }),
          ),
        ],
      ),
    );
  }
}

class FeatureItem extends StatelessWidget {
  final String text;
  final Color color;
  FeatureItem({required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
           Icon(
            Icons.check_circle,
            color:Colors.grey[700],
            size: 20,
          ),
          const SizedBox(width: 8.0),
          Text(
            text,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey[700],
            ),
          ),
        ],
      ),
    );
  }
}
