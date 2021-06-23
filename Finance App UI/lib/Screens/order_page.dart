import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          shrinkWrap: true,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 40.0),
                      child: Icon(
                        Icons.arrow_back_outlined,
                        size: 30.0,
                      ),
                    ),
                  ),
                  Text(
                    'Order Status',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: Row(
                children: [
                  Container(
                    width: 50.0,
                    height: 50.0,
                    margin: const EdgeInsets.only(left: 20.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(39, 174, 96, 1),
                    ),
                    child: Stack(
                      children: [
                        Center(
                            child: Image.asset(
                          'assets/rounded.png',
                          width: 20.0,
                        )),
                        Center(
                            child: Image.asset(
                          'assets/right.png',
                          width: 12.0,
                        )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      '\$1999',
                      style: TextStyle(
                          fontSize: 36.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: Center(),
                  ),
                  Column(
                    children: [
                      Container(
                          padding: EdgeInsets.only(right: 20.0),
                          width: 100,
                          child: Text(
                            '23th June',
                            style: TextStyle(fontSize: 12.0),
                          )),
                      Container(
                          padding: EdgeInsets.only(right: 30.0),
                          width: 100,
                          child: Text(
                            '2021',
                            style: TextStyle(fontSize: 12.0),
                          )),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
              padding: EdgeInsets.only(left: 12.0, top: 20.0, bottom: 20.0),
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromRGBO(242, 242, 242, 1),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color.fromRGBO(242, 153, 74, 1),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            'Axis Blue Chip\nFund',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    height: 90.0,
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(bottom: 5.0, left: 50.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text('Nav Date'),
                            Text('    :  23th June'),
                          ],
                        ),
                        Row(
                          children: [
                            Center(child: Text('Units')),
                            Text(
                              '           :  46.120',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Folio No'),
                            Text('     :  123456'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25.0, left: 20.0, right: 20.0),
              padding: EdgeInsets.only(left: 20.0),
              height: 50.0,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromRGBO(242, 242, 242, 1),
              ),
              child: Center(
                child: Row(
                  children: [
                    Text(
                      'Order ID    :',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Text(
                      '    5419849849859841',
                      style: TextStyle(fontSize: 14.0),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: 25.0, left: 20.0, right: 20.0, bottom: 20.0),
              padding: EdgeInsets.only(left: 20.0, top: 12.0, bottom: 60.0),
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromRGBO(242, 242, 242, 1),
              ),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Row(
                        children: [
                          Text(
                            'Order Status',
                            style: TextStyle(fontSize: 18.0),
                          ),
                          Expanded(
                            child: Center(),
                          ),
                          Text(
                            'Success',
                            style:
                                TextStyle(color: Colors.green, fontSize: 16.0),
                          ),
                          Container(
                            width: 30.0,
                            height: 30.0,
                            margin: EdgeInsets.only(left: 20.0, right: 20.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 2),
                            ),
                            child: Center(
                              child: Icon(Icons.keyboard_arrow_up_outlined),
                            ),
                          ),
                        ],
                      ),
                    ),
                    _everyOrderStatus('Payment', 'completed'),
                    _interProgressLine(),
                    _everyOrderStatus('Order placed', 'on Rupeez'),
                    _interProgressLine(),
                    _everyOrderStatus('Order accepted', 'by axis'),
                    _interProgressLine(),
                    _everyOrderStatus('Units allocated', 'by axis'),
                    _interProgressLine(),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5.0, left: 20.0, right: 20.0),
              padding: EdgeInsets.only(left: 20.0),
              height: 60.0,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromRGBO(242, 242, 242, 1),
              ),
              child: Row(
                children: [
                  Container(
                    width: 40.0,
                    height: 40.0,
                    margin: EdgeInsets.only(left: 20.0, right: 20.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 2),
                    ),
                    child: Center(
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/questionMark.png',
                          ),
                          Container(
                            height: 2.0,
                            width: 2.0,
                            margin: EdgeInsets.only(top: 12.0, left: 4.0),
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text('Help & Support'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0, left: 40.0, right: 40.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    )),
                child: Center(
                  child: Text(
                    'Repeat order',
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget _everyOrderStatus(String title, String subtitle) {
    return Container(
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '1 May 2021,',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              ),
              Text(
                '12:00 AM',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
          Container(
            width: 50.0,
            height: 50.0,
            margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(39, 174, 96, 1),
            ),
            child: Stack(
              children: [
                Center(
                    child: Image.asset(
                  'assets/rounded.png',
                  width: 30.0,
                )),
                Center(
                    child: Image.asset(
                  'assets/right.png',
                  width: 14.0,
                )),
              ],
            ),
          ),
          Column(
            children: [
              SizedBox(
                width: 120,
                child: Text(
                  title,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              SizedBox(
                width: 120,
                child: Text(
                  subtitle,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 14.0, color: Colors.black54),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _interProgressLine() {
    return Container(
      width: 3.0,
      height: 60.0,
      margin: EdgeInsets.only(right: 70.0),
      color: Colors.green,
    );
  }
}
