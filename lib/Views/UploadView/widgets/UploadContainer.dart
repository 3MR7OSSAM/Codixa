import 'package:codixa/Conrollers/Widgets/SideMenuTextWidget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class UploadContainer extends StatelessWidget {
  const UploadContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDesktop = ResponsiveBreakpoints.of(context).isDesktop;

    Size size = MediaQuery.sizeOf(context);
    double width = size.width;
    double height = size.height;
    return Container(
      width: isDesktop ? width * .29 : width*0.6,
      height: height * .26,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.white),
      child: Column(
        children: [
          const Spacer(flex: 2,),
          SizedBox(
            width: isDesktop ? width*0.13:width*0.24,
            height: 50,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    surfaceTintColor: Colors.white, elevation: 10),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Icon(
                      Icons.cloud_upload_outlined,
                      color: Colors.blueAccent,
                      size: width*0.015,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    FittedBox(child: Text('Select a file',style: TextStyle(color: Colors.blueAccent,fontSize:isDesktop ?  width*0.01 :  width*0.02),))

                  ],
                )),
          ),
          const Spacer(),
          const Text('or',style: TextStyle(color: Colors.grey,fontSize: 13),),
          const Spacer(),
          TextWidget(text: 'Drag and drop a file here', color:Colors.grey),
          const Spacer(flex: 2,),
        ],
      ),
    );
  }
}
