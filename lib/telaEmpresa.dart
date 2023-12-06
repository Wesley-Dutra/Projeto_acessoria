import 'package:flutter/material.dart';

class TelaEmpresa extends StatefulWidget {
  const TelaEmpresa({super.key});

  @override
  State<TelaEmpresa> createState() => _TelaEmpresaState();
}

class _TelaEmpresaState extends State<TelaEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Empresa'),
        backgroundColor: Colors.red[700],
      ),
      body: Center(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          child: Container(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset('images/empresa.png', width: 85),
                        Column(
                          children: <Widget>[
                            Row(
                                children: <Widget>[
                                  Text(
                                    'Sobre a',
                                    style: TextStyle(
                                        color: Colors.red[700],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25
                                    ),
                                  )
                                ]
                            ),
                            Row(
                                children: <Widget>[
                                  Text(
                                    'Empresa',
                                    style: TextStyle(
                                        color: Colors.red[700],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 35
                                    ),
                                  )
                                ]
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 1, bottom: 1),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tempus, quam at interdum auctor, lectus velit accumsan dui, sit amet aliquam quam leo vitae ipsum. Aenean pellentesque tempus diam sed vestibulum. Vestibulum non fringilla est, at vehicula tellus. In vestibulum augue magna, in consectetur enim lacinia a. Interdum et malesuada fames ac ante ipsum primis in faucibus. Quisque quam orci, feugiat eget efficitur et, sagittis ac enim. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam commodo, neque sed dapibus viverra, metus diam interdum sem, non imperdiet sapien diam sit amet risus.\n',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 1, bottom: 1),
                    child: Text(
                      'Aenean tincidunt arcu eros, nec scelerisque dolor elementum ut. Donec lacus lectus, hendrerit eget sem id, aliquam pulvinar lectus. Aenean in massa odio. In quis metus non eros consequat semper vel in quam. Fusce vel imperdiet quam, ac lacinia nibh. Aliquam at risus pellentesque, porta nisi pharetra, auctor odio. Duis aliquam molestie velit vel rutrum. Aenean lorem ipsum, imperdiet eget sapien a, ultricies congue purus. Vestibulum felis nisi, ultricies at semper in, hendrerit non dolor. Nullam malesuada sapien et arcu venenatis commodo. Duis erat lorem, scelerisque in libero tincidunt, varius semper neque. Donec ut feugiat eros, id pellentesque tortor. Aliquam elementum ex quis velit elementum pellentesque. Nunc vehicula orci lacinia enim aliquam varius. Proin viverra lectus nulla, vel dapibus purus porttitor sit amet. In tempor egestas nisl, id convallis tellus.',
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            )
          ),
        ),
      ),
    );
  }
}
