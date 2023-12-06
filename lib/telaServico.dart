import 'package:flutter/material.dart';

class TelaServico extends StatefulWidget {
  const TelaServico({super.key});

  @override
  State<TelaServico> createState() => _TelaServicoState();
}

class _TelaServicoState extends State<TelaServico> {
  @override
  Widget build(BuildContext context) {
    double _heightScreen = MediaQuery.of(context).size.height - AppBar().preferredSize.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Serviços'),
        backgroundColor: Colors.red[700],
      ),
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          child: Container(
            height: (_heightScreen - AppBar().preferredSize.height),
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset('images/servicos.png', width: 85),
                        Column(
                          children: <Widget>[
                            Row(
                                children: <Widget>[
                                  Text(
                                    'Serviços',
                                    style: TextStyle(
                                        color: Colors.red[700],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 50
                                    ),
                                  )
                                ]
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                      children: <Widget>[
                        Card(
                          color: Colors.grey[50],
                          shape: Border(bottom: BorderSide(color: Color.fromRGBO(255, 0, 0, 100), width: 3)),
                          child: ListTile(
                            leading: Icon(
                              Icons.abc_rounded,
                              color: Colors.red[700],
                              size: 45,
                            ),
                            title: Text('Teste 001'),
                            subtitle: Text('Teste 122221'),
                          ),
                        ),
                        Card(
                          color: Colors.grey[50],
                          shape: Border(bottom: BorderSide(color: Color.fromRGBO(255, 0, 0, 100), width: 3)),
                          child: ListTile(
                            leading: Icon(
                              Icons.adb_rounded,
                              color: Colors.red[700],
                              size: 45,
                            ),
                            title: Text('Teste 002'),
                            subtitle: Text('Teste 122221'),
                          ),
                        ),
                        Card(
                          color: Colors.grey[50],
                          shape: Border(bottom: BorderSide(color: Color.fromRGBO(255, 0, 0, 100), width: 3)),
                          child: ListTile(
                            leading: Icon(
                              Icons.archive_rounded,
                              color: Colors.red[700],
                              size: 45,
                            ),
                            title: Text('Teste 003'),
                            subtitle: Text('Teste 122221'),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
    );
  }
}
