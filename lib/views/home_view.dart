import 'package:flutter/material.dart';
import 'package:investment_app/widgets/top_header.dart';
import 'package:investment_app/widgets/card.dart';
import 'package:investment_app/widgets/action_buttons.dart';
import 'package:investment_app/widgets/investments.dart';
import 'package:investment_app/widgets/navigations.dart';
import 'package:investment_app/widgets/portfolio.dart';
import 'package:investment_app/models/data_bindings.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: const BottomNav(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              TopHeader(),
              BalanceCard(),
              ActionButtons(),
              FeaturedInvestment(),
              PortfolioSection(),
            ],
          ),
        ),
      ),
    );
  }
}
