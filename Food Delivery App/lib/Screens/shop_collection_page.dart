import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
      bottomNavigationBar: _bottomNavigationBar(),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          shrinkWrap: true,
          children: [
            _topPortion(),
            _searchBar(),
            _sampleShow(),
            _fourthRowInformation(),
            _fifthRowInformation(),
            _foodShowCase(),
          ],
        ),
      ),
    );
  }

  Widget _topPortion() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(
            Icons.location_on_rounded,
            color: const Color.fromRGBO(94, 90, 91, 1),
            size: 30.0,
          ),
          onPressed: () {},
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('tapp',
                  style: TextStyle(
                      color: const Color.fromRGBO(94, 224, 23, 1),
                      fontSize: 35.0,
                      fontFamily: 'Gotham',
                      fontWeight: FontWeight.w500)),
              Column(
                children: [
                  Image.asset(
                    'assets/images/heading_i.png',
                    height: 25.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 7.0),
                    child: Image.asset(
                      'assets/images/i_bottom_dot.png',
                      width: 8.0,
                    ),
                  ),
                ],
              ),
              Text('t',
                  style: TextStyle(
                      color: const Color.fromRGBO(94, 224, 23, 1),
                      fontSize: 35.0,
                      fontFamily: 'Gotham',
                      fontWeight: FontWeight.w500)),
            ],
          ),
        ),
        IconButton(
          icon: Icon(
            Icons.shopping_cart,
            color: const Color.fromRGBO(94, 90, 91, 1),
            size: 30.0,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _searchBar() {
    return Container(
      margin: const EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
      height: 35.0,
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 10.0),
          prefixIcon: Icon(
            Icons.search_outlined,
            color: const Color.fromRGBO(39, 211, 103, 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.grey),
          ),
          hintText: 'Search for stores',
          hintStyle: TextStyle(color: Colors.grey, fontSize: 18.0),
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
    return Container(
      margin: EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
      width: double.maxFinite,
      child: ListView(
        shrinkWrap: true,
        children: [
          for (int i = 0; i < 3; i++)
            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Image.asset('assets/images/shop_page_lower.png'),
            ),
        ],
      ),
    );
  }

  Widget _bottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.black,
      selectedLabelStyle:
          TextStyle(fontFamily: 'Gotham', fontWeight: FontWeight.w500),
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
            label: 'Cafeteria', icon: Icon(Icons.local_restaurant_outlined)),
        BottomNavigationBarItem(
          label: 'Subscription',
          icon: Icon(Icons.refresh_sharp),
        ),
        BottomNavigationBarItem(
            label: 'Flash Sale', icon: Icon(Icons.flash_on_outlined)),
        BottomNavigationBarItem(
          label: 'Profile',
          icon: Icon(Icons.person_outline_outlined),
        ),
      ],
    );
  }
}
