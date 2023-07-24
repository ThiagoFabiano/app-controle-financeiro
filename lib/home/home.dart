// ignore_for_file: empty_constructor_bodies

import 'package:flutter/material.dart';

import 'home.controller.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static HomeController instance = HomeController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(125),
          child: AppBar(
              backgroundColor: Colors.transparent,
              /* title: const Text(
              'Finance',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ), */
              centerTitle: true,
              flexibleSpace: Padding(
                padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'R\$ 10.000,00',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 30),
                          ),
                          Text(
                            'Alterar exibição',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(119, 255, 255, 255),
                                fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 214, 214, 214),
                          shape: BoxShape.circle),
                      child: const Icon(Icons.person, size: 35),
                    )
                  ],
                ),
              ),
              bottom: const PreferredSize(
                preferredSize: Size.fromHeight(50),
                child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: TabBar(
                    indicatorColor: Colors.white,
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.white70,
                    dividerColor: Colors.transparent,
                    tabs: <Widget>[
                      Tab(
                        text: 'Geral',
                      ),
                      Tab(
                        text: 'Categorias',
                      ),
                    ],
                  ),
                ),
              )),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            const Color.fromARGB(255, 1, 26, 72),
            Theme.of(context).colorScheme.primary,
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.2),
            alignment: Alignment.bottomCenter,
            width: MediaQuery.of(context).size.width,
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                  spreadRadius: 0.1,
                  blurRadius: 8,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
              child: Column(children: [
                Container(
                  height: 45,
                  width: 250,
                  decoration:const BoxDecoration(
                    boxShadow:  [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 0,
                        blurRadius: 15,
                        offset: Offset(1, 5),
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Theme.of(context)
                                  .colorScheme
                                  .primary
                                  .withOpacity(0.7);
                            }
                            return Theme.of(context)
                                .colorScheme
                                .primary; // Use the component's default.
                          },
                        ),
                      ),
                      onPressed: () {},
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 25,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Nova Despesa',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          )
                        ],
                      )),
                )
              ]),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 70,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(221, 0, 0, 0),
                spreadRadius: 0.1,
                blurRadius: 8,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Disponível',
                style: TextStyle(
                    color: Color.fromARGB(125, 255, 255, 255),
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 50,
              ),
              Text(
                'R\$ 05,00',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
