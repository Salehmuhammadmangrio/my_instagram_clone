import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  final _coverHeight= 240.0;
  final _profileHeight= 134.0;

  @override
  Widget build(BuildContext context) {
    final top=_coverHeight-(_profileHeight/2);
    return  Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        buildCoverImage(),
        Positioned(
            top: top,
            child: buildProfileImage(),
        ),
        Positioned(
          top: 10+_coverHeight+_profileHeight/2,
          child: buildDeatil(),
        ),
      ],
    );
  }

  Widget buildCoverImage()=>Container(
    width: double.infinity,
    height: _coverHeight,
    color:  Colors.grey,
    child: Image.asset("assets/images/saleh2.jpg",fit: BoxFit.cover,),
  );

  Widget buildProfileImage()=>CircleAvatar(
    radius: _profileHeight/2,
    backgroundImage: const AssetImage("assets/images/salehp.jpg"),

  );
  Widget buildDeatil()=> Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const Text("Saleh Muhammad Mangrio",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
      const Text("@salehmangrio",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
  const SizedBox(height: 8,),
  const Row(
        children: [
          Column(
            children: [
              Text("298",style: TextStyle(fontWeight: FontWeight.bold)),
              Text("Followings",style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(width: 20,),
          Column(
            children: [
              Text("90K",style: TextStyle(fontWeight: FontWeight.bold)),
              Text("Followers",style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(width: 20,),
          Column(
            children: [
              Text("3.1M",style: TextStyle(fontWeight: FontWeight.bold)),
              Text("Likes",style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
      const SizedBox(height: 8,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          OutlinedButton(onPressed: (){}, child: const Text("Edit Profile")),
          const SizedBox(width: 2,),
          OutlinedButton(onPressed: (){}, child: const Text("Share Profile")),
          const SizedBox(width: 2,),
          FilledButton(onPressed: (){}, child: const Icon(Icons.account_box)),
        ],
      ),

    ],
  );
}
