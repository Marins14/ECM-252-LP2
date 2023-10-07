import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicação Responsiva com breakpoint!',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MeuLayoutResponsivo(),
    );
  }
}

class MeuLayoutResponsivo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("App Responsiva!")),
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return constraints.maxWidth < 576 ? MobileLayoute() : webLayout();
        }));
  }
}

class MobileLayoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MobileLayouteState();
  }
}

class MobileLayouteState extends State<MobileLayoute>
    with SingleTickerProviderStateMixin {
  // Só digitar STPSM e dar enter que ele já cria o mixin
  TabController? tabController; // ? para dizer que pode ser nulo
  @override
  void initState() {
    super.initState();
    tabController =
        TabController(length: 2, vsync: this); // vsync: this é para o mixin
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TabBar(
        labelColor: Colors.black,
        controller: tabController,
        tabs: [Tab(text: 'Aba 1'), Tab(text: 'Aba 2')],
      ),
      Expanded(
          child: TabBarView(
        controller: tabController,
        children: [
          Center(child: Text("Conteudo da primeira aba")),
          Center(child: Text("Conteudo da segunda aba"))
        ],
      ))
    ]);
  }
}

class webLayout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return webLayoutState();
  }
}

class webLayoutState extends State<webLayout> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Card(
            child: Center(child: Text("Conteudo da primeira aba")),
          ),
        ),
        Expanded(
          child: Card(
            child: Center(child: Text("Conteudo da segunda aba")),
          ),
        )
      ],
    );
  }
}
