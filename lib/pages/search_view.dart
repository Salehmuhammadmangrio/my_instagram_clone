import 'package:flutter/material.dart';
import 'package:instagram_clone_saleh/data_file.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    DataFile dt = DataFile();

    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8,),
              const SearchBar(
                leading: Icon(
                  Icons.search
                ),
                hintText:'Search',
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      focusColor: Colors.red,
                      hoverColor: Colors.blue,
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(dt.logos[index]),
                      ),
                      title: Text(
                        dt.names[index],
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "@${dt.userName[index]}",
                        style: const TextStyle(color: Colors.black),
                      ),
                    );
                  },
                  itemCount: dt.names.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
