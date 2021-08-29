import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'emManutenção.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Color.fromRGBO(131, 10, 209, 10),
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nubank Design Inspiration',
      theme: ThemeData(
        //primarySwatch: Colors.white,
        brightness: Brightness.dark,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              MyAppBar(),
            ],
          );
        },
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  MyAppBar() : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          //parte roxa
          Container(
            color: Color.fromRGBO(131, 10, 209, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //icone na poarte roxa , sinboliza o usuario
                    Padding(
                        padding: EdgeInsets.only(top: 20, left: 15),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PaginaManutencao(),
                              ),
                            );
                          },
                          child: Container(
                            height: 45,
                            width: 45,
                            decoration: new BoxDecoration(
                              color: Colors.white12,
                              borderRadius: BorderRadius.only(
                                bottomLeft: const Radius.circular(50),
                                bottomRight: const Radius.circular(50),
                                topLeft: const Radius.circular(50),
                                topRight: const Radius.circular(50),
                              ),
                            ),
                            child: Center(
                              child: Icon(Icons.person_outline_rounded),
                            ),
                          ),
                        )),

                    //nome do usuario, abaixo do icone
                    Padding(
                      padding: EdgeInsets.only(top: 27, left: 23, bottom: 20),
                      child: Text(
                        'Olá, Elivelton',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),

                //tres botoes que ficam na parte roxa
                Column(children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Row(
                      children: [
                        //olho
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PaginaManutencao(),
                              ),
                            );
                          },
                          child: Container(
                            height: 45,
                            width: 45,
                            decoration: new BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: const Radius.circular(50),
                                bottomRight: const Radius.circular(50),
                                topLeft: const Radius.circular(50),
                                topRight: const Radius.circular(50),
                              ),
                            ),
                            child: Center(
                              child: Icon(Icons.remove_red_eye_outlined),
                            ),
                          ),
                        ),

                        Text(' '),

                        //interrogação
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PaginaManutencao(),
                              ),
                            );
                          },
                          child: Container(
                            height: 45,
                            width: 45,
                            decoration: new BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: const Radius.circular(50),
                                bottomRight: const Radius.circular(50),
                                topLeft: const Radius.circular(50),
                                topRight: const Radius.circular(50),
                              ),
                            ),
                            child: Center(
                              child: Icon(Icons.question_answer),
                            ),
                          ),
                        ),

                        Text(' '),
                        //carta
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PaginaManutencao(),
                              ),
                            );
                          },
                          child: Container(
                            height: 45,
                            width: 45,
                            decoration: new BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: const Radius.circular(50),
                                bottomRight: const Radius.circular(50),
                                topLeft: const Radius.circular(50),
                                topRight: const Radius.circular(50),
                              ),
                            ),
                            child: Center(
                              child: Icon(Icons.add_photo_alternate_outlined),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ],
            ),
          ),

          //COnta
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PaginaManutencao(),
                ),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Container(
                color: Colors.white,
                height: 120,
                child: Padding(
                  padding: EdgeInsets.all(23),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Conta',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'RS 10.000',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.keyboard_arrow_right_outlined,
                              color: Colors.grey),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),

          //botoes
          Padding(
            padding: EdgeInsets.only(top: 0),
            child: Container(
              width: double.infinity,
              height: 120,
              color: Colors.white,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  if (index == 0) {
                    return SizedBox(
                      width: 10,
                    );
                  }
                  return Row(
                    children: [
                      Column(
                        children: [
                          //Botão do pix
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PaginaManutencao(),
                                ),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 9),
                              height: 75,
                              width: 75,
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey[200],
                              ),
                              child: Center(
                                child: Icon(Icons.pin, color: Colors.black),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Pix',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),

                      //botao pagar

                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PaginaManutencao(),
                                ),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 9),
                              height: 75,
                              width: 75,
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey[200],
                              ),
                              child: Center(
                                child: Icon(Icons.bar_chart_outlined,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Pagar',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),

                      //botao transferir
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PaginaManutencao(),
                                ),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 9),
                              height: 75,
                              width: 75,
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey[200],
                              ),
                              child: Center(
                                child: Icon(Icons.attach_money_outlined,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Transferir',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),

                      //botao Depositar
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PaginaManutencao(),
                                ),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 9),
                              height: 75,
                              width: 75,
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey[200],
                              ),
                              child: Center(
                                child: Icon(Icons.attach_money_outlined,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Depositar',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),

                      //Recarga de celular
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PaginaManutencao(),
                                ),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 9),
                              height: 75,
                              width: 75,
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey[200],
                              ),
                              child: Center(
                                child: Icon(Icons.phone_android_outlined,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Recarga de \n celular',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),

                      //botao Cobrar
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PaginaManutencao(),
                                ),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 9),
                              height: 75,
                              width: 75,
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey[200],
                              ),
                              child: Center(
                                child: Icon(Icons.money_off_csred_rounded,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Cobrar',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),

                      //botao Doação
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PaginaManutencao(),
                                ),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 9),
                              height: 75,
                              width: 75,
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey[200],
                              ),
                              child: Center(
                                child: Icon(Icons.favorite_border,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Doação',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),

                      //botao Encontrar atalhos
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PaginaManutencao(),
                                ),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 9),
                              height: 75,
                              width: 75,
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey[200],
                              ),
                              child: Center(
                                child: Icon(Icons.card_membership_outlined,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Encontrar\n atalhos',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  );
                },
              ),
            ),
          ),

          //botao meus cartoes
          Padding(
            padding: EdgeInsets.only(top: 0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaginaManutencao(),
                  ),
                );
              },
              child: Container(
                height: 100,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(23),
                  child: Container(
                    decoration: new BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.only(
                        bottomLeft: const Radius.circular(10),
                        bottomRight: const Radius.circular(10),
                        topLeft: const Radius.circular(10),
                        topRight: const Radius.circular(10),
                      ),
                    ),
                    height: 50,
                    child: Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PaginaManutencao(),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Icon(Icons.credit_card_outlined,
                                color: Colors.black),
                            Text('    '),
                            Text(
                              'Meus Cartões',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          //linhaa cinza
          Container(
              height: 2,
              color: Colors.white,
              child: Container(
                height: 2,
                color: Colors.grey[100],
              )),

          //info sobre o cartao de credito
          Padding(
            padding: EdgeInsets.only(top: 0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaginaManutencao(),
                  ),
                );
              },
              child: Container(
                height: 211,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(23),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.credit_card_sharp, color: Colors.black),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Cartão de Credito',
                            style: TextStyle(
                              fontSize: (19),
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Text(
                            'Fatura atual',
                            style: TextStyle(
                                fontSize: (15), color: Colors.grey[600]),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            'RS 100,00',
                            style: TextStyle(
                              fontSize: (20),
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Limite disponivel de RS 100,00',
                            style:
                                TextStyle(fontSize: (15), color: Colors.grey),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.keyboard_arrow_right_outlined,
                              color: Colors.grey),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),

          //linhaa cinza
          Container(
            height: 2,
            color: Colors.white,
            child: Container(
              height: 2,
              color: Colors.grey[100],
            ),
          ),

          //emprestimo
          Padding(
            padding: EdgeInsets.only(),
            child: GestureDetector(
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(23),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.money_off_csred, color: Colors.black),
                          SizedBox(height: 10),
                          Text(
                            'Empréstimo',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Crie um aviso para saber quando um\n emprestimo ficar disponivel',
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.keyboard_arrow_right_outlined,
                              color: Colors.grey),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          //linhaa cinza
          Container(
            height: 2,
            color: Colors.white,
            child: Container(
              height: 2,
              color: Colors.grey[100],
            ),
          ),
          //seguro de vida
          Padding(
            padding: EdgeInsets.only(top: 0),
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(23),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.favorite_border, color: Colors.black),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Seguro de Vida',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Conheça Nubank Vida: um seguro simples e que cabe\nno bolso',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.keyboard_arrow_right_outlined,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          //linha cinza
          Container(
            height: 2,
            color: Colors.white,
            child: Container(
              height: 2,
              color: Colors.grey[100],
            ),
          ),

          //Descubra mais
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(left: 23, top: 18, bottom: 30),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Descubra mais',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                )),
          ),

          //Botoes whatsapp e indique seu amigo
          Padding(
            padding: EdgeInsets.only(top: 0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaginaManutencao(),
                  ),
                );
              },
              child: Container(
                height: 220,
                color: Colors.white,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int intex) {
                    return Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PaginaManutencao(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 20, left: 20, bottom: 20, right: 10),
                            child: Container(
                              width: 270,

                              //primeiro quadrado
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: const Radius.circular(10),
                                    bottomRight: const Radius.circular(10),
                                    topLeft: const Radius.circular(10),
                                    topRight: const Radius.circular(10),
                                  ),
                                  color: Colors.grey[200]),
                              child: Padding(
                                padding: EdgeInsets.all(20),
                                child: Column(
                                  // onde ta escrito whatsapp
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'WhatsApp',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      'Pagamentos seguros, rápidos e sem \ntarifa. A experiencia Nubank sem \nnem sair da conversa.',
                                      style: TextStyle(
                                        color: Colors.black54,
                                      ),
                                    ),

                                    SizedBox(height: 21),
                                    //primeiro botao roxo
                                    Container(
                                      height: 40,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(131, 10, 209, 10),
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: const Radius.circular(50),
                                          bottomRight:
                                              const Radius.circular(50),
                                          topLeft: const Radius.circular(50),
                                          topRight: const Radius.circular(50),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Quero conhecer',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PaginaManutencao(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 20, left: 10, bottom: 20, right: 20),

                            //segundo quadrado
                            child: Container(
                              width: 270,
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.only(
                                  bottomLeft: const Radius.circular(10),
                                  bottomRight: const Radius.circular(10),
                                  topLeft: const Radius.circular(10),
                                  topRight: const Radius.circular(10),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Indique seus amigos',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 7),
                                    Text(
                                        'Mostre aos seus amigos como é \nfácil ter uma vida sem burocracia.',
                                        style:
                                            TextStyle(color: Colors.black54)),
                                    SizedBox(height: 37),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                PaginaManutencao(),
                                          ),
                                        );
                                      },
                                      child:
                                          //segundo botao roxo
                                          Container(
                                        height: 40,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(131, 10, 209, 10),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft:
                                                const Radius.circular(50),
                                            bottomRight:
                                                const Radius.circular(50),
                                            topLeft: const Radius.circular(50),
                                            topRight: const Radius.circular(50),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Indicar amigos',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
