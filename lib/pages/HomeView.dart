import 'package:flutter/material.dart';
import 'package:instagram_clone_saleh/data_file.dart';
import 'package:iconsax/iconsax.dart';


class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final dt= DataFile();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.02),
      child: ListView.builder(itemBuilder: (context, index){
        return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(dt.logos[index]),
                ),
                title: Text(dt.names[index],
                  style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                subtitle: Text("@${dt.userName[index]}",style: const TextStyle(color: Colors.black,),),
                trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width-100.0,
                child: Image(image: AssetImage(dt.images[index]),fit: BoxFit.cover,),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: (){}, icon: const Icon(Iconsax.heart)),
                      IconButton(onPressed: (){
                        setState(() {
                          dt.cmt[index]==++dt.cmt[index];
                        });
                      }, icon: const Icon(Icons.comment)),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.send)),
                    ],
                  ),
                  IconButton(onPressed: (){}, icon: const Icon(Iconsax.document_favorite)),
                ],
              ),
              Row(
                children: [
                  const SizedBox(width: 12,),
                  Text(dt.likes[index],style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                ],
              ),
              Row(
                children: [
                  const SizedBox(width: 12,),
                  Text(dt.names[index],style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                ],
              ),
              Row(
                children: [
                  const SizedBox(width: 10,),
                  Text("View all ${dt.cmt[index]} comments",style: const TextStyle(color: Colors.grey),),
                ],
              ),
              const Divider(color: Colors.grey,),
            ],
          ),
        );
      },
        itemCount: dt.images.length,
      ),
    );
  }
}
