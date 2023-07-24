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
              color: Color.fromRGBO(240, 240, 240, 1),
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
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recentes',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 23),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'ver todos',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: 15),
                        ),
                      ),
                    ]),
                Expanded(
                  child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      padding: const EdgeInsets.only(top: 8),
                      child: ListView.separated(
                        separatorBuilder: (context, index) {
                          return Divider();
                        },
                        padding: const EdgeInsets.all(0),
                        itemCount: 15,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: Container(
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(27, 0, 0, 0),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Icon(
                                Icons.local_taxi,
                                size: 40,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                            title: Text(
                              'Transporte',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.primary,
                                  fontSize: 20),
                            ),
                            subtitle: const Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: Text(
                                'Uber para o trabalho',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                            trailing: const Column(
                              children: [
                                Text(
                                  '-R\$ 50,00',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 230, 82, 28),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    '1 de Ago.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(129, 0, 0, 0),
                                        fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Disponível',
                style: TextStyle(
                    color: Color.fromARGB(125, 255, 255, 255),
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'R\$ 05,00',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 40,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.blueGrey,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 0,
                      blurRadius: 15,
                      offset: Offset(1, 5),
                    ),
                  ],
                ),
                child: TextButton(
                  onPressed: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
