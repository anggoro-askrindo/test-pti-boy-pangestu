import 'package:flutter/material.dart';
import 'package:test_pti_prabowo_adi/views/widget/molecules/custom_bottom_nav.dart';
import 'package:test_pti_prabowo_adi/views/widget/molecules/menu_item.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    MyHomePage(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];

  void _onNavBarTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: CustomBottomNav(
        currentIndex: _currentIndex,
        onTap: _onNavBarTap,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Frame.png'),
            fit: BoxFit.contain,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/ic_scan.png',
                        width: 40,
                        height: 40,
                        // width: double.infinity,
                      ),
                      Image.asset(
                        'assets/ic_notif.png',
                        width: 40,
                        height: 40,
                        // width: double.infinity,
                      ),
                    ],
                  ),
                  Text(
                    "Halo, Michael",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.w700, color: Colors.grey[400]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    'assets/banner.png',
                    fit: BoxFit.contain,
                    width: double.infinity,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "BELI ASURANSI",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.w700, color: Colors.grey[400]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MenuItem(
                        icon: 'assets/Rumahku.png',
                        label: 'Rumahku',
                        todo: () {},
                      ),
                      MenuItem(
                        icon: 'assets/Usahaku.png',
                        label: 'Usahaku',
                        todo: () {},
                      ),
                      MenuItem(
                        icon: 'assets/KecelakaanDiriSimpleRisk.png',
                        label: 'Bahari',
                        todo: () {
                          Navigator.pushNamed(
                            context,
                            '/bahari',
                          );
                        },
                      ),
                      MenuItem(
                        icon: 'assets/Lainnya.png',
                        label: 'Lainnya',
                        todo: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "INFO",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.w700, color: Colors.grey[400]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Image.asset(
                          'assets/Info_KlaimAsuransi.png',
                          // width: double.infinity,
                          // width: 40,
                          height: 81,
                          // width: double.infinity,
                        ),
                      ),
                      Expanded(
                        child: Image.asset(
                          'assets/Info_TentangAskrindo.png',
                          // width: double.infinity,
                          height: 81,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "BERITA TERBARU",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.w700, color: Colors.grey[400]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
