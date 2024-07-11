import 'package:codixa/Views/ProfileView/widgets/AddEmailButton.dart';
import 'package:codixa/Views/ProfileView/widgets/CountryWidget.dart';
import 'package:codixa/Views/ProfileView/widgets/EditButton.dart';
import 'package:codixa/Views/ProfileView/widgets/GenderWidget.dart';
import 'package:codixa/Views/ProfileView/widgets/LanguageWidget.dart';
import 'package:codixa/Views/ProfileView/widgets/PlanTypeWidget.dart';
import 'package:codixa/Views/ProfileView/widgets/ProfileFormField.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController nikeNameController = TextEditingController();
    Size size = MediaQuery.sizeOf(context);
    double width = size.width;
    double height = size.height;
    return Container(
      decoration: const BoxDecoration(
        gradient: SweepGradient(
          colors: [
            Color(0xff115bbf),
            Color(0xff091e3a),
          ],
          stops: [0, 0.5],
          center: Alignment.topRight,
        ),
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('Assets/images/AppLogo.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: width * 0.75, // Adjust the width as needed
                height: height*0.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10), // Optional: to add rounded corners
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                     Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: const Color(0xff115bbf).withOpacity(0.1),
                          child: const Icon(Icons.account_circle,color: Color(0xff115bbf),size: 40,),
                        ),
                        const SizedBox(width: 16),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mohamed tarek',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text('mohamed_tarek@gmail.com'),
                          ],
                        ),
                        const Spacer(),
                        const EditButton(),
                      ],
                    ),
                    const SizedBox(height: 20),
                    ProfileFormField(controller: nameController, onChanged: (String value) {  }, hintText: 'Full Name', obscureText: false, label: 'Full Name',),
                    const SizedBox(height: 10),
                    ProfileFormField(controller: nikeNameController, onChanged: (String value) {  }, hintText: 'Nick Name', obscureText: false, label: 'Nick Name',),

                    const SizedBox(height: 10),
                    const Row(
                      children: [
                        GenderWidget(),
                        SizedBox(width: 10),
                        CountryWidget(),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      children: [
                        LanguageWidget(),
                        SizedBox(width: 10),
                        PlanTypeWidget(),
                      ],
                    ),
                    const SizedBox(height: 20),
                     ListTile(
                      leading: CircleAvatar(
                          backgroundColor:  const Color(0xff115bbf).withOpacity(0.1),
                          child: const Icon(Icons.email,color:Color(0xff115bbf))),
                      title: const Text('mohamed_tarek@gmail.com'),
                      subtitle: const Text('1 month ago'),
                    ),
                    const AddEmailButton(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}






