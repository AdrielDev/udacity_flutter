import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:reimplement/main_menu/widgets/card_credit_widget.dart';

import '../widgets/account_balance_widget.dart';
import '../widgets/bottom_navigation/card_navigation_widget.dart';
import '../widgets/reward_widget.dart';
import '../widgets/secure_life_widget.dart';

const Map<String, dynamic> user = {
  "nome": "Adriel",
};

const listWidget = [
  CardCreditWidget(),
  AccountBalanceWidget(),
  SecureLifeWidget(),
  RewardWidget(),
];

const listWidgetBottomVavigation = [
  CardWidget(
    iconCard: Icons.queue_play_next_outlined,
    titleCard: "Pix",
  ),
  CardWidget(
    iconCard: Icons.qr_code,
    titleCard: "Pagar",
  ),
  CardWidget(
    iconCard: Icons.person_add,
    titleCard: "Indicar Amigos",
  ),
  CardWidget(
    iconCard: Icons.send_outlined,
    titleCard: "Transferir",
  ),
  CardWidget(
    iconCard: Icons.call_received,
    titleCard: "Depositar",
  ),
  CardWidget(
    iconCard: Icons.local_atm_rounded,
    titleCard: "Empréstimos",
  ),
  CardWidget(
    iconCard: Icons.adjust_outlined,
    titleCard: "Ajustar Limite",
  ),
];

RefreshController _refreshController = RefreshController(initialRefresh: false);
void _onRefresh() async {
  await Future.delayed(Duration(milliseconds: 1000));
  _refreshController.refreshCompleted();
}

void _onLoading() async {
  await Future.delayed(Duration(milliseconds: 5000));
  _refreshController.loadComplete();
}

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppBar(
                automaticallyImplyLeading: false,
                title: Container(
                  height: 80,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Olá, ${user['nome']}",
                        style: TextStyle(fontSize: 25),
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            child: Icon(Icons.visibility),
                            backgroundColor: Colors.purple[500],
                            foregroundColor: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            child: Icon(Icons.settings),
                            backgroundColor: Colors.purple[500],
                            foregroundColor: Colors.white,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                //backgroundColor: Color(0xFF612F74),
                elevation: 0,
              ),
            ],
          ),
        ),
      ),
      body: SmartRefresher(
        controller: _refreshController,
        enablePullDown: true,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 11),
          child: ListView.separated(
            separatorBuilder: (ctx, index) {
              return SizedBox(height: 15);
            },
            itemCount: listWidget.length,
            physics: BouncingScrollPhysics(),
            itemBuilder: (ctx, index) {
              return listWidget[index];
            },
          ),
        ),
        onRefresh: _onRefresh,
        onLoading: _onLoading,
      ),
      //backgroundColor: Color(0xFF612F74),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(11),
        height: 75,
        //color: Colors.blue,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            itemBuilder: (ctx, index) {
              return listWidgetBottomVavigation[index];
            },
            separatorBuilder: (ctx, index) {
              return SizedBox(width: 7);
            },
            itemCount: listWidgetBottomVavigation.length),
      ),
    );
  }
}
