import 'package:flutter/material.dart';
import 'package:jsskos_app/drawer_contents/drawer_item.dart';
import 'package:jsskos_app/drawer_pages.dart/Calendar.dart';
import 'package:jsskos_app/drawer_pages.dart/Faculties.dart';
import 'package:jsskos_app/drawer_pages.dart/Syllabus.dart';
import 'package:jsskos_app/drawer_pages.dart/Videos.dart';
import 'package:jsskos_app/drawer_pages.dart/profile.dart';

class SideNavBar extends StatelessWidget {
  const SideNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 40, 24, 0),
          child: Column(
            children: [
              headerWidget(),
              const SizedBox(
                height: 40,
              ),
              const Divider(
                thickness: 1,
                height: 10,
                color: Colors.black,
              ),
              drawerItems(
                  name: 'Edit Profile',
                  icon: Icons.edit,
                  onPressed: () => OnItemPressed(context, index: 0)),
              const SizedBox(
                height: 30,
              ),
              drawerItems(
                  name: 'Syllabus',
                  icon: Icons.book,
                  onPressed: () => OnItemPressed(context, index: 1)),
              const SizedBox(
                height: 30,
              ),
              drawerItems(
                  name: 'Calendar',
                  icon: Icons.calendar_view_day_outlined,
                  onPressed: () => OnItemPressed(context, index: 2)),
              const SizedBox(
                height: 30,
              ),
              drawerItems(
                  name: 'Faculties',
                  icon: Icons.person,
                  onPressed: () => OnItemPressed(context, index: 3)),
              const SizedBox(
                height: 30,
              ),
              drawerItems(
                  name: 'Videos',
                  icon: Icons.video_library_outlined,
                  onPressed: () => OnItemPressed(context, index: 4))
            ],
          ),
        ),
      ),
    );
  }

  void OnItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);
    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Profile()));
        break;

      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Syllabus()));
        break;

      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Calendar()));
        break;

      case 3:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Faculties()));
        break;

      case 4:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Videos()));
        break;

      default:
        Navigator.pop(context);
        break;
    }
  }

  Widget headerWidget() {
    const url = '';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(url),
        ),
        SizedBox(
          height: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Person Name',
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'person@email.com',
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
          ],
        )
      ],
    );
  }
}
