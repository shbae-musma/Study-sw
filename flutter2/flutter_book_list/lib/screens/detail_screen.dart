import 'package:flutter/material.dart';
import 'package:flutter_book_list/models/drama.dart';

class DetailScreen extends StatelessWidget {
  final Drama drama;

  const DetailScreen({Key? key, required this.drama}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(drama.title),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Image.network(drama.image),
            const Padding(padding: EdgeInsets.all(3)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  padding: const EdgeInsets.all(10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          drama.title,
                          style: const TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          drama.subTitle,
                          style:
                              const TextStyle(fontSize: 18, color: Colors.grey),
                        )
                      ]),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.15,
                  padding: const EdgeInsets.all(10),
                  child: const Center(
                    child: Center(
                      child: Icon(
                        Icons.star,
                        color: Colors.red,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(3),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: const [
                    Icon(
                      Icons.call,
                      color: Colors.blue,
                    ),
                    Text(
                      'Contact',
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
                Column(
                  children: const [
                    Icon(
                      Icons.near_me,
                      color: Colors.blue,
                    ),
                    Text(
                      'Route',
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
                Column(
                  children: const [
                    Icon(
                      Icons.save,
                      color: Colors.blue,
                    ),
                    Text(
                      'Save',
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: Text(drama.desc),
            )
          ]),
        ));
  }
}
