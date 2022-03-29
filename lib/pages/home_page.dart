import 'package:flutter/material.dart';
import 'package:my_money/main.dart';
import 'package:my_money/theme.dart';
import 'package:my_money/widgets/transaction.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 50),
            width: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: b3,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
              image: DecorationImage(
                  image: AssetImage('images/bg-card.png'), fit: BoxFit.cover),
            ),
            child: Wrap(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          child: Image.asset('images/profile.png'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Hi, Alin',
                          style: r14white,
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('Notifikasi'),
                                content: const Text(
                                    'Apakah anda yakin ingin keluar ?'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context, 'Batal');
                                    },
                                    child: Text('Batal'),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const MyApp(),
                                        ),
                                      );
                                    },
                                    child: Text('Keluar'),
                                  ),
                                ],
                              ),
                            );
                          },
                          child: Image.asset(
                            'images/logout-icon.png',
                            height: 24,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'IDR 3.500.000',
                      style: sb24white,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Saldo Anda',
                          style: l10white,
                        ),
                        Text(
                          '21/03/2022 11:15 AM',
                          style: l10white,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Menu(label: 'Kirim Uang', icon: 'send-icon.png'),
                SizedBox(
                  width: 15,
                ),
                Menu(label: 'Isi Saldo', icon: 'topup-icon.png'),
                SizedBox(
                  width: 15,
                ),
                Menu(label: 'Riwayat', icon: 'history-icon.png'),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Transaksi',
                style: sb14,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Transaction(
                    img: 'tokopedia.png',
                    label: 'Tokopedia',
                    date: '22 Maret 2022',
                    value: '-100.000 IDR'),
                Transaction(
                    img: 'shopee.png',
                    label: 'Shopee',
                    date: '21 Maret 2022',
                    value: '-150.000 IDR'),
                Transaction(
                    img: 'netflix.png',
                    label: 'Netflix',
                    date: '21 Maret 2022',
                    value: '-100.000 IDR'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class Menu extends StatelessWidget {
  String label, icon;
  Menu({required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: b1,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: b2,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/$icon'),
            SizedBox(
              height: 5,
            ),
            Text(
              '$label',
              style: r12white,
            ),
          ],
        ),
      ),
    );
  }
}
