import 'package:flutter/material.dart';
import 'package:flutter_book_list/models/drama.dart';
import 'package:flutter_book_list/repositories/dummy.dart';
import 'package:flutter_book_list/screens/detail_screen.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  // ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  List<Drama> list = Dummy().getDrama();

  // ListScreen() : super();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('드라마 목록 앱'),
      ),
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: ((context, index) {
            return DramaTile(drama: list[index]);
          })),
      // body: ListView(
      //   children: [
      //     ListTile(
      //       title: const Text('호텔 델루나'),
      //       leading: Image.network(
      //           'https://www.tfmedia.co.kr/data/photos/20200207/art_15815928663629_b37ecb.jpg'),
      //       // trailing: Image.network(
      //       //     'https://upload.wikimedia.org/wikipedia/ko/6/63/%EB%93%9C%EB%9D%BC%EB%A7%88_%EB%8F%84%EA%B9%A8%EB%B9%84_%ED%8F%AC%EC%8A%A4%ED%84%B02.jpg'),
      //     ),
      //     const DramaTile(
      //       title: '나의 해방일지',
      //       subTitle: '우리 다, 행복했으면 좋겠어 견딜 수 없이 촌스런 삼남매의 견딜 수 없이 사랑스러운 행복소생기',
      //       desc:
      //           '2022년 4월 9일부터 2022년 5월 29일까지 《기상청 사람들: 사내연애 잔혹사 편》의 후속으로 방영한 JTBC 토일 드라마.',
      //       image:
      //           'http://image.newsis.com/2022/03/03/NISI20220303_0000944086_web.jpg',
      //     ),
      //   ],
      // ),
    );
  }
}

class DramaTile extends StatelessWidget {
  final Drama drama;

  const DramaTile({Key? key, required this.drama}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(drama.title),
      leading: Image.network(drama.image),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DetailScreen(drama: drama),
        ));
      },
    );
  }
}
// class DramaTile extends StatelessWidget {
//   final String title;
//   final String subTitle;
//   final String desc;
//   final String image;

//   const DramaTile(
//       {Key? key,
//       required this.title,
//       required this.subTitle,
//       required this.desc,
//       required this.image})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(title),
//       leading: Image.network(image),
//       onTap: () {
//         Navigator.of(context).push(MaterialPageRoute(
//           builder: (context) => const DetailScreen(
//               // book: book,
//               ),
//         ));
//       },
//     );
//   }
// }
