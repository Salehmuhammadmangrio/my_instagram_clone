import 'package:flutter/material.dart';
import 'package:instagram_clone_saleh/pages/HomeView.dart';
import 'package:instagram_clone_saleh/pages/profile_page.dart';
import 'package:instagram_clone_saleh/pages/search_view.dart';
import 'package:instagram_clone_saleh/pages/upload_file.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';

import 'like_file.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final ctl = Get.put(NavController());
    return Scaffold(
      bottomNavigationBar: Obx(() => NavigationBar(
                selectedIndex: ctl.selectedIndex.value,
                onDestinationSelected: (index)=> ctl.selectedIndex.value=index,
                destinations:const [
                   NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
                   NavigationDestination(icon: Icon(Icons.search), label: "Search"),
                   NavigationDestination(icon: Icon(Iconsax.add), label: "Upload"),
                   NavigationDestination(icon: Icon(Iconsax.heart), label: "Likes"),
                   NavigationDestination(icon: Icon(Iconsax.profile_2user), label: "Profile"),
                ]
      ),
      ),
      body:Obx(()=> ctl.screen[ctl.selectedIndex.value],)

    );
  }
}

class NavController extends GetxController{
  Rx<int> selectedIndex =0.obs;

  final screen = [
    const HomeView(),
    const SearchView(),
    const Upload(),
    const Like(),
    const Profile(),
  ];

}

