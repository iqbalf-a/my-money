import 'package:flutter/material.dart';
import 'package:my_money/theme.dart';
import 'package:my_money/widgets/transaction.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class Report extends StatefulWidget {
  const Report({Key? key}) : super(key: key);

  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text(
            'Laporan',
            style: sb16black,
          ),
          actions: [
            IconButton(
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              },
              icon: Icon(Icons.search),
              color: Colors.black,
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: b1_30,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TabBar(
                  tabs: [
                    Tab(
                      child: Text(
                        'Semua',
                        style: r14,
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Pemasukan',
                        style: r14,
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Pengeluaran',
                        style: r14,
                      ),
                    ),
                  ],
                  labelPadding: EdgeInsets.all(0),
                  labelColor: Colors.white,
                  unselectedLabelColor: b5,
                  indicator: RectangularIndicator(
                    bottomLeftRadius: 15,
                    bottomRightRadius: 15,
                    topLeftRadius: 15,
                    topRightRadius: 15,
                    color: b3,
                  ),
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  allTab(),
                  incomeTab(),
                  outcomeTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget allTab() {
  return ListView(
    children: [
      Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Text(
                    'Hari ini',
                    style: m12grey,
                  ),
                  Text(
                    '22 Maret 2022',
                    style: m12grey,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Transaction(
                      img: 'tokopedia.png',
                      label: 'Tokopedia',
                      date: '22 Maret 2022',
                      value: '-100.000 IDR'),
                  Text(
                    'Kemarin',
                    style: m12grey,
                  ),
                  Text(
                    '21 Maret 2022',
                    style: m12grey,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Transaction(
                      img: 'shopee.png',
                      label: 'Shopee',
                      date: '21 Maret 2022',
                      value: '-150.000 IDR'),
                  Transaction(
                      img: 'netflix.png',
                      label: 'Netflix',
                      date: '21 Maret 2022',
                      value: '-50.000 IDR'),
                  Text(
                    '2 hari yang lalu',
                    style: m12grey,
                  ),
                  Text(
                    '19 Maret 2022',
                    style: m12grey,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Transaction(
                      img: '',
                      label: 'Transfer Bank',
                      date: '2 Hari yang lalu',
                      value: '+100.000 IDR'),
                  Transaction(
                      img: 'byu.png',
                      label: 'Paket Data 10GB By.u',
                      date: '2 hari yang lalu',
                      value: '-50.000 IDR'),
                  Transaction(
                      img: 'byu.png',
                      label: 'Paket Data 10GB By.u',
                      date: '2 hari yang lalu',
                      value: '-50.000 IDR')
                ],
              ),
            ),
          )
        ],
      ),
    ],
  );
}

Widget incomeTab() {
  return ListView(
    children: [
      Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Text(
                    '2 hari yang lalu',
                    style: m12grey,
                  ),
                  Text(
                    '19 Maret 2022',
                    style: m12grey,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Transaction(
                      img: '',
                      label: 'Transfer Bank',
                      date: '2 Hari yang lalu',
                      value: '+100.000 IDR'),
                ],
              ),
            ),
          )
        ],
      ),
    ],
  );
}

Widget outcomeTab() {
  return ListView(
    children: [
      Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Text(
                    'Hari ini',
                    style: m12grey,
                  ),
                  Text(
                    '22 Maret 2022',
                    style: m12grey,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Transaction(
                      img: 'tokopedia.png',
                      label: 'Tokopedia',
                      date: '22 Maret 2022',
                      value: '-100.000 IDR'),
                  Text(
                    'Kemarin',
                    style: m12grey,
                  ),
                  Text(
                    '21 Maret 2022',
                    style: m12grey,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Transaction(
                      img: 'shopee.png',
                      label: 'Shopee',
                      date: '21 Maret 2022',
                      value: '-150.000 IDR'),
                  Transaction(
                      img: 'netflix.png',
                      label: 'Netflix',
                      date: '21 Maret 2022',
                      value: '-50.000 IDR'),
                  Text(
                    '2 hari yang lalu',
                    style: m12grey,
                  ),
                  Text(
                    '19 Maret 2022',
                    style: m12grey,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Transaction(
                      img: 'byu.png',
                      label: 'Paket Data 10GB By.u',
                      date: '2 hari yang lalu',
                      value: '-50.000 IDR'),
                  Transaction(
                      img: 'byu.png',
                      label: 'Paket Data 10GB By.u',
                      date: '2 hari yang lalu',
                      value: '-50.000 IDR')
                ],
              ),
            ),
          )
        ],
      ),
    ],
  );
}

class DataSearch extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions

    return ListView.builder(
      itemCount: 0,
      itemBuilder: (content, index) => Container(),
    );
  }
}
