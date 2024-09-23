import 'package:flutter/material.dart';

import 'post_model.dart';

class PostDetail extends StatelessWidget {
  final Post post;

  PostDetail({required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(post.name),
        backgroundColor: Color.fromARGB(255, 48, 135, 216),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black26),
            borderRadius: BorderRadius.circular(10.0),
            color: Color.fromARGB(255, 110, 214, 192),
            gradient: LinearGradient(colors: [Color.fromARGB(255, 238, 222, 222), Colors.blueAccent],)
          ),
          child: Column(
            children: <Widget>[
              Card(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Color.fromARGB(255, 255, 182, 227), Color.fromARGB(255, 255, 139, 255)])
                  ),
                  // color: const Color.fromARGB(255, 226, 101, 101),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ListTile(
                        title: Text("Title"),
                        subtitle: Text(post.name),
                      ),
                      ListTile(
                        title: Text("ID"),
                        subtitle: Text("${post.alpha_two_code}"),
                      ),
                      ListTile(
                        title: Text("Country"),
                        subtitle: Text(post.country),
                      ),
                      // ListTile(
                      //   title: Text("Web University"),
                      //   subtitle: Text("${post.web_pages}"),
                      // ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
