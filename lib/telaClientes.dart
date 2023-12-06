import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class TelaClientes extends StatefulWidget {
  const TelaClientes({super.key});

  @override
  State<TelaClientes> createState() => _TelaClientesState();
}

class _TelaClientesState extends State<TelaClientes> {
  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
    title: Text('Clientes'),
    backgroundColor: Colors.red[700],
    );

    final urlImages = [
      ClipRRect(borderRadius: BorderRadius.all(Radius.circular(8)),child: Image.asset('images/cliente01.png',fit: BoxFit.fitHeight),),
      ClipRRect(borderRadius: BorderRadius.all(Radius.circular(8)),child: Image.asset('images/cliente01.png',fit: BoxFit.fitHeight),),
      ClipRRect(borderRadius: BorderRadius.all(Radius.circular(8)),child: Image.asset('images/cliente01.png',fit: BoxFit.fitHeight),),
      ClipRRect(borderRadius: BorderRadius.all(Radius.circular(8)),child: Image.asset('images/cliente01.png',fit: BoxFit.fitHeight),),
    ];
    double _heightScreen = MediaQuery.of(context).size.height;
    double _heightAppBar = appBar.preferredSize.height;
    double _height = _heightScreen - _heightAppBar - 30;

    int indexSlider = 0;

    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          child: Container(
              constraints: BoxConstraints(
                maxHeight: _height,
                minHeight: _height
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Text(
                            'Clientes',
                            style: TextStyle(
                                color: Colors.red[700],
                                fontWeight: FontWeight.bold,
                                fontSize: 40
                            ),
                          ),
                        )
                      ]
                  ),
                  CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        height: 400,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        aspectRatio: 6.0,
                        onPageChanged: (index, reason) {
                          setState(() {
                            indexSlider = index;
                          });
                        },
                      ),
                      items: urlImages
                  ),
                ],
              )
          ),
        ),
    );
  }
}
