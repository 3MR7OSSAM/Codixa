import 'package:codixa/Conrollers/Widgets/SearchWidget.dart';
import 'package:codixa/Conrollers/Widgets/SideMenuTextWidget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    double width = size.width;
    double height = size.height;
    bool isDesktop = ResponsiveBreakpoints.of(context).isDesktop;
    return Padding(
      padding: const EdgeInsets.only(right: 1.0),
      child: Drawer(
        elevation: 100,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        shadowColor: Colors.grey,
        surfaceTintColor:Color(0xff115bbf),
        width: isDesktop ? width * 0.17 : width * 0.3,
        backgroundColor: const  Color(0xff091e3a),
        child: ListView(
          children: [
            const DrawerHeaderWidget(),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff115bbf),
                  ),
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'New Chat',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SearchWidget(),
            SizedBox(
              height: height * 0.01,
            ),
            SizedBox(
              height: height * 0.4,
              child: ListView(
                children: const [
                  HistoryWidget(
                    title: 'Logo code Flutter',
                  ),
                  HistoryWidget(
                    title: 'Footer bar Flutter',
                  ),
                  HistoryWidget(
                    title: 'Nav bar Flutter',
                  ),
                  HistoryWidget(
                    title: 'Dice app ',
                  ),
                  HistoryWidget(
                    title: 'Home page',
                  ),
                  HistoryWidget(
                    title: 'Button code',
                  ),
                  HistoryWidget(
                    title: 'Button code',
                  ),
                  HistoryWidget(
                    title: 'Button code',
                  ),
                  HistoryWidget(
                    title: 'Logo code Flutter',
                  ),
                  HistoryWidget(
                    title: 'Footer bar Flutter',
                  ),
                  HistoryWidget(
                    title: 'Nav bar Flutter',
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
            DrawerListTile(
              title: 'Home',
              press: () {},
            ),
            DrawerListTile(
              title: 'Pricing',
              press: () {},
            ),
            DrawerListTile(
              title: 'About Us',
              press: () {},
            ),
            DrawerListTile(
              title: 'Contact Us',
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class HistoryWidget extends StatelessWidget {
  const HistoryWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(
            Icons.image_outlined,
            color: Colors.white,
            size: 20,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 14),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerHeaderWidget extends StatelessWidget {
  const DrawerHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDesktop = ResponsiveBreakpoints.of(context).isDesktop;

    return SizedBox(
      height: 100,
      child: DrawerHeader(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            width: 10,
          ),
          CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 15,
            child: Center(
                child: Image.asset(
              'Assets/icons/userPhoto.png',
              fit: BoxFit.cover,
            )),
          ),
          Visibility(
            visible: isDesktop,
            child: const Text(
              'Amr Hoosam',
              style: TextStyle(color: Colors.white),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Visibility(
            visible: isDesktop,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(8)),
              child: const Padding(
                padding: EdgeInsets.all(2.0),
                child: Text(
                  'Basic',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          const Icon(
            Icons.settings,
            size: 20,
            color: Colors.white,
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      )),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      title: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: TextWidget(
          text: title,
          isTitle: true,
          color: Colors.white,
        ),
      ),
    );
  }
}
