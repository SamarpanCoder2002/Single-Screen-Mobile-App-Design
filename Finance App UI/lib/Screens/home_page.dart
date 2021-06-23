import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPosition = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: _bottomSheet(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(top: 10.0),
        child: Column(
          children: [
            _firstRow(),
            _secondRow(),
            _thirdRow(),
            _fourRow(),
            _fifthRow(),
            _sixthRow(),
            Expanded(child: _sevenRow()),
          ],
        ),
      ),
    );
  }

  Widget _firstRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 40,
          width: 40,
          margin: EdgeInsets.only(left: 25.0, top: 20.0),
          child: Column(
            children: [
              Container(
                width: 30,
                height: 3,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(40.0),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 5,
                    height: 3,
                    margin: EdgeInsets.only(top: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Container(
                    width: 20,
                    height: 3,
                    margin: EdgeInsets.only(top: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                  ),
                ],
              ),
              Container(
                width: 30,
                height: 3,
                margin: EdgeInsets.only(top: 5.0),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(40.0),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 30.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://m.media-amazon.com/images/M/MV5BNjQ2MDU0ODEtNTk4Yi00OTk3LTg2OGItYTc5ZDA0MWIzZTMxXkEyXkFqcGdeQXVyNDAzNDk0MTQ@._V1_.jpg'),
            radius: 20.0,
          ),
        ),
      ],
    );
  }

  Widget _secondRow() {
    return Container(
      height: 75,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10.0),
                alignment: Alignment.centerLeft,
                child: Text(
                  'welcome back',
                  style: TextStyle(color: Colors.black54, fontSize: 16.0),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 30.0),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Robert',
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Container(
            width: 200,
            height: 70,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(86, 204, 242, 1),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5.0),
                  bottomLeft: Radius.circular(5.0)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: const Color.fromRGBO(242, 153, 74, 1),
                  ),
                  child: Icon(
                    Icons.notifications_none_outlined,
                    color: const Color.fromRGBO(254, 242, 233, 1),
                    size: 28.0,
                  ),
                ),
                Center(
                  child: Text('completed your\npayment setup'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _thirdRow() {
    return Container(
      width: double.maxFinite,
      height: MediaQuery.of(context).size.height / 4,
      margin: EdgeInsets.only(top: 30.0),
      child: PageView(
        scrollDirection: Axis.horizontal,
        onPageChanged: (changedVal) {
          print('Changed Val: $changedVal');
          if (mounted) {
            setState(() {
              this.currentPosition = changedVal;
            });
          }
        },
        children: [
          for (int i = 0; i < 4; i++)
            SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                height: 80,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          const Color.fromRGBO(97, 164, 250, 1),
                          const Color.fromRGBO(212, 91, 173, 1),
                          const Color.fromRGBO(255, 132, 76, 1),
                        ]),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10.0,
                        offset: Offset(0.0, 5.0),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.only(
                      left: 20.0, top: 9.0, bottom: 15.0, right: 20.0),
                  child: _underDesign(i + 9),
                )),
        ],
      ),
    );
  }

  Widget _fourRow() {
    return Container(
      alignment: Alignment.center,
      height: 10.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 1; i <= 4; i++)
            Theme(
              data: ThemeData(primaryColor: Colors.green),
              child: Transform.scale(
                scale: this.currentPosition + 1 == i ? 0.7 : 0.4,
                child: Radio(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  value: i,
                  groupValue: this.currentPosition + 1,
                  activeColor: Colors.green,
                  onChanged: (val) {
                    print('Value is: $val');
                  },
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _fifthRow() {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      height: 100.0,
      padding: EdgeInsets.only(left: 30.0, right: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 120,
            height: 100,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(86, 204, 242, 1),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    'assets/vector.png',
                    height: 30.0,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Center(
                  child: Text(
                    'Savings',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width - 60 - 130,
            height: 100,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(86, 204, 242, 1),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ],
      ),
    );
  }

  Widget _sixthRow() {
    return Container(
      margin: EdgeInsets.only(left: 30.0, right: 10.0, top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Container(
                  width: 100.0,
                  height: 50.0,
                  margin: EdgeInsets.only(left: 20.0, top: 2.0),
                  padding: EdgeInsets.only(left: 15.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(),
                  ),
                  child: Text(
                    'With Draw\nFunds',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12.0),
                  )),
              Container(
                width: 40.0,
                height: 40.0,
                margin: EdgeInsets.only(top: 7.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(),
                ),
                child: Icon(Icons.arrow_downward_outlined),
              )
            ],
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                    height: 50.0,
                    margin: EdgeInsets.only(right: 30.0, top: 2.0, left: 10.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      'Invest Now',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                Container(
                  width: 40.0,
                  height: 40.0,
                  margin: EdgeInsets.only(
                      top: 7.0,
                      left: MediaQuery.of(context).size.width - 60 - 155),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(),
                  ),
                  child: Icon(Icons.arrow_upward_outlined),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _sevenRow() {
    return Container(
      margin: EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
      ),
    );
  }

  Widget _bottomSheet() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _bottomNavigationItems('assets/home.png'),
          _bottomNavigationItems('assets/activity.png'),
          _bottomNavigationItems('assets/trophy.png'),
          _bottomNavigationItems('assets/setting.png'),
        ],
      ),
    );
  }

  Widget _bottomNavigationItems(String assetPath) {
    return GestureDetector(
      child: Image.asset(
        assetPath,
        width: 20.0,
        color: Colors.black,
      ),
    );
  }

  Widget _underDesign(int index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: double.maxFinite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    width: 100,
                    padding: const EdgeInsets.only(left: 20.0, bottom: 3.0),
                    child: Text(
                      'Total',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                  ),
                  Container(
                    width: 100,
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Invested',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 85,
                    padding: const EdgeInsets.only(bottom: 3.0),
                    child: Text(
                      'Current',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                  ),
                  Container(
                    width: 85,
                    child: Text(
                      'Value',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  '\$${index * 100}',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 23.0),
                child: Text(
                  '\$${(index + 1) * 100}',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width - 60,
          child: Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Gains: \$100 +10.01',
                style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        )
      ],
    );
  }
}
