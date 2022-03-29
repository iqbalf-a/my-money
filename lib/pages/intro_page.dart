import 'package:flutter/material.dart';
import 'package:my_money/theme.dart';
import 'package:my_money/widgets/bottom_navigation.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: true,
      child: Container(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned.fill(
              child: Image.asset(
                'images/bg-intro.png',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 10 / 100,
              left: 0,
              right: 0,
              child: Image.asset('images/img-intro.png'),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 45 / 100,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Halo, \nMoney Lovers',
                        style: b22,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Ketahui kemana uangmu terpakai',
                        style: l14,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '''Money Lovers merupakan sistem yang dapat memudahkan anda untuk mengelola penghasilan dan pengeluaran keuangan anda.''',
                        style: l14,
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Container(
                            height: 12,
                            width: 12,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(50)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 12,
                            width: 12,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(50)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 12,
                            width: 32,
                            decoration: BoxDecoration(
                                color: b3,
                                borderRadius: BorderRadius.circular(50)),
                          ),
                          Spacer(),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BottomNav()));
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 12),
                              decoration: BoxDecoration(
                                  color: b3,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Text(
                                'Get Started',
                                style: sb16white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
