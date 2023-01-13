import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weatherapp/getLocation.dart';
import 'package:weatherapp/weatherData.dart';

var dayInfo = DateTime.now();
var dateFormat = DateFormat('EEEE, d MMM, yyyy').format(dayInfo);

class MyHomePage extends StatelessWidget {
  var client = weatherData();
  var data;

  info() async {
    //var position = await GetPosition();
    data = await client.getData('41.02', '28.96');
    return data;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: FutureBuilder(
      future: info(),
      builder: (context, snapshot) {
        return Container(
          child: Column(
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
                    Container(
                      child: Column(children: [
                        Text(
                          '${data?.cityName}',
                          style: TextStyle(color: Colors.white, fontSize: 35),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          dateFormat,
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ]),
                    ),
                    Image.network(
                      'https:${data?.icon}',
                      width: size.width * 0.36,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '${data?.condition}',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '${data?.temp}',
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
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'wind',
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
                                'img/sunny.png',
                                width: size.width * 0.15,
                              ),
                              Text(
                                '${data?.humidity}',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'humidity',
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
                                'img/sunny.png',
                                width: size.width * 0.15,
                              ),
                              Text(
                                '${data?.wind_dir}',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'wind direc',
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
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'gust',
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
                          'pressure',
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
                          'uv',
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
                          'praciptation',
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
                          'wind',
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
                          'last update',
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
                  ),
                ],
              )
            ],
          ),
        );
      },
    ));
  }
}
