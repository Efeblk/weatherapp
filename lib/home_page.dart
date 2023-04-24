import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

//TODO: get location bunun üzerine calıs

import 'package:weatherapp/utils/getLocation.dart';
import 'package:weatherapp/utils/weatherData.dart';

import 'utils/utils.dart';

var dayInfo = DateTime.now();
//var dateFormat = DateFormat('EEEE, d MMM, yyyy').format(dayInfo);
var dateFormat = getToday(DateFormat('EEEE').format(dayInfo));

class MyHomePage extends StatelessWidget {
  var client = weatherData();
  var data;

  info() async {
    //var position = await GetPosition();
    // istanbul '41.02', '28.96'
    // antalya '36.91', '30.69'
    data = await client.getData('36.91', '30.69');
    return data;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: FutureBuilder(
      future: info(),
      builder: (context, snapshot) {
        return Column(
          children: [
            Container(
              height: size.height * 0.75,
              width: size.width,
              padding: EdgeInsets.only(top: 20),
              margin: EdgeInsets.only(right: 10, left: 10),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(40),
                gradient: LinearGradient(
                  colors: [Color(0xff955cd1), Color(0xff3fa2fa)],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: [0.2, 0.85],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(children: [
                    Text(
                      '${data?.cityName}',
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      dateFormat!,
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ]),
                  Column(
                    children: [
                      Image.network(
                        'https:${data?.icon}',
                        width: size.width * 0.36,
                        fit: BoxFit.fill,
                      ),
                      Text(
                        '${data?.condition}',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '${data?.temp}°',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset(
                              'img/windy.png',
                              width: size.width * 0.15,
                            ),
                            Text(
                              '${data?.wind}',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Rüzgar',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 17),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset(
                              'img/nem.png',
                              width: size.width * 0.15,
                            ),
                            Text(
                              '${data?.humidity}',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Nem',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 17),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset(
                              'img/wind_dir.png',
                              width: size.width * 0.15,
                            ),
                            Text(
                              '${data?.wind_dir}',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Rüzgar yönü',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 17),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      'Güncelleme Tarihi: ',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '${data?.last_update}',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                    ),
                  ],
                )

                /*Expanded(
                  child: Column(
                    children: [
                      Text(
                        'degis',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '${data?.gust}',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 23),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Basınç',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '${data?.pressure}',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 23),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'degis1',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '${data?.uv}',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 23),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'degis2',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '${data?.pricipe}',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 23),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'degis3',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '${data?.wind}',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 23),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Güncelleme Tarihi: ',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '${data?.last_update}',
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ],
                  ),
                ),*/
              ],
            )
          ],
        );
      },
    ));
  }
}
