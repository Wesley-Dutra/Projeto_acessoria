import 'package:acessoria/telaClientes.dart';
import 'package:acessoria/telaEmpresa.dart';
import 'package:acessoria/telaServico.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _abrirEmpresa() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TelaEmpresa())
    );
  }

  void _abrirServico() {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TelaServico())
    );
  }

  void _abrirCliente() {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TelaClientes())
    );
  }

  void _abrirContato() {

  }

  @override
  Widget build(BuildContext context) {
    double _heightScreen = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            height: _heightScreen,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(40, 20, 40, 0),
                  child: Image.asset('images/logo.png'),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () => _abrirEmpresa(),
                        child: Image.asset('images/empresa.png', width: 125),
                      ),
                      GestureDetector(
                        onTap: () => _abrirServico(),
                        child: Image.asset('images/servicos.png', width: 125),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () => _abrirCliente(),
                        child: Image.asset('images/clientes.png', width: 125),
                      ),
                      GestureDetector(
                        onTap: () => _abrirContato(),
                        child: Image.asset('images/contato.png', width: 125),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}
