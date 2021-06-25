import 'package:customer/Screens/food_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'common_widgets.dart';

class CategorySection extends StatefulWidget {
  const CategorySection({Key? key}) : super(key: key);

  @override
  _CategorySectionState createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
  bool _vegOnlyToggle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigationBar(),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          shrinkWrap: true,
          children: [
            topPortion(),
            searchBar('Search for Stores'),
            _sampleShow(),
            _fourthRowInformation(),
            _fifthRowInformation(),
            _foodShowCase(),
          ],
        ),
      ),
    );
  }

  Widget _sampleShow() {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 15.0, right: 15.0, top: 25.0, bottom: 15.0),
      child: Row(
        children: [
          Expanded(
              child: Container(
            width: 300.0,
            child: Image.asset(
              'assets/images/shop_page_upper.png',
            ),
          )),
          SizedBox(
            width: 15.0,
          ),
          Expanded(
              child: Container(
            width: 300.0,
            child: Image.asset(
              'assets/images/shop_page_upper.png',
            ),
          )),
        ],
      ),
    );
  }

  Widget _fourthRowInformation() {
    return Container(
      margin: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '10 Stores around you',
            style: TextStyle(fontSize: 18.0),
          ),
          Row(
            children: [
              Text(
                'Veg only',
                style: TextStyle(color: Colors.black54),
              ),
              Switch(
                value: this._vegOnlyToggle,
                onChanged: (value) {
                  if (mounted) {
                    setState(() {
                      this._vegOnlyToggle = value;
                    });
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _fifthRowInformation() {
    return Padding(
      padding: EdgeInsets.only(left: 15.0, top: 5.0),
      child: Text(
        'TCS IT PARK II',
        style: TextStyle(color: Colors.black45),
      ),
    );
  }

  Widget _foodShowCase() {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => FoodMenu()));
      },
      child: Container(
        margin: EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
        width: double.maxFinite,
        child: Column(
          children: [
            for (int i = 0; i < 3; i++)
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Image.asset('assets/images/shop_page_lower.png'),
              ),
          ],
        ),
      ),
    );
  }
}
