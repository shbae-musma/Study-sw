import 'package:flutter_book_list/models/drama.dart';

class Dummy {
  final List<Drama> _list = [
    Drama(
      title: '나의 해방일지',
      subTitle: '우리 다, 행복했으면 좋겠어 견딜 수 없이 촌스런 삼남매의 견딜 수 없이 사랑스러운 행복소생기',
      desc:
          '2022년 4월 9일부터 2022년 5월 29일까지 《기상청 사람들: 사내연애 잔혹사 편》의 후속으로 방영한 JTBC 토일 드라마.',
      image:
          'http://image.newsis.com/2022/03/03/NISI20220303_0000944086_web.jpg',
    ),
    Drama(
      title: '안나라수마나라',
      subTitle: '당신... 마술을 믿습니까?',
      desc: '하일권 작가의 웹툰 《안나라수마나라》를 원작으로 하는 넷플릭스 오리지널 드라마. 2022년 5월 6일 공개되었다.',
      image:
          'https://entertainimg.kbsmedia.co.kr/cms/uploads/BBSIMAGE_20220429090355_ce33528a22033aabefb96adf17c4a903.jpg',
    ),
    Drama(
        title: '그 해 우리는',
        subTitle:
            '함께해서 더러웠고 다신 보지 말자!로 끝났어야 할 인연이 10년이 흘러 카메라 앞에 강제 소환 되어 펼쳐지는 청춘 다큐를 가장한 아찔한 로맨스 드라마',
        desc: '2021년 12월 6일부터 2022년 1월 25일까지 홍천기의 후속으로 방영했던 SBS 월화 드라마.',
        image:
            'https://dimg.donga.com/wps/NEWS/IMAGE/2021/11/24/110429323.2.jpg'),
    Drama(
        title: '내일',
        subTitle: '‘죽은 자’를 인도하던 저승사자들이, 이제 ‘죽고 싶은 사람들’을 살린다! 저승 오피스 휴먼 판타지',
        desc:
            '2022년 4월 1일부터 2022년 5월 21일까지 《트레이서》의 후속으로 방영한 MBC 금토 드라마. 동명의 웹툰이 원작이다.',
        image:
            'https://w.namu.la/s/fe40d9038110ae594287e0e2ef97daec8803e20ca0f0aa4f4ab03107220b8230614662a554f97b87db2721265035f2335c29052430245b2ef5235c508b372074a71cb908662ae19a59dcd25c0d1c21e68dafbeab26995b5453e30887019d3e524e30bd2703f2aa64f3ecd8ecac297968')
  ];

  List<Drama> getDrama() {
    return _list;
  }
}
