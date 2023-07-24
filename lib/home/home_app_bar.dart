import 'package:flutter/material.dart';
class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
   HomeAppBar({
    super.key,
  });

  @override
  Size preferredSize = const Size.fromHeight(125);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
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
    );
  }
}
