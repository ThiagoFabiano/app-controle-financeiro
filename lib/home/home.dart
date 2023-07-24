// ignore_for_file: empty_constructor_bodies

import 'package:app_controle_financeiro/home/home_app_bar.dart';
import 'package:app_controle_financeiro/home/home_bottom_bar.dart';
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
        appBar: HomeAppBar(),
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
                          return  const Divider();
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
        bottomNavigationBar: HomeBottomBar()
      ),
    );
  }
}
