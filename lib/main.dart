import 'package:flutter/material.dart';
import 'style/theme.dart';
import 'ui/home_page.dart';
import 'ui/lista_page.dart';
import 'ui/comparar_page.dart';
import 'ui/promocoes_page.dart';
import 'ui/perfil_page.dart';

void main() {
  runApp(const EconoMarketApp());
}

class EconoMarketApp extends StatelessWidget {
  const EconoMarketApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EconoMarket',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const MainNavigation(),
    );
  }
}

/// Tela de navegação principal: controla a troca entre as 5 abas
/// do bottom navigation bar (Início, Lista, Comparar, Promoções, Perfil).
///
/// Usa IndexedStack em vez de trocar o Widget diretamente pra manter
/// o estado de cada aba (scroll, filtros etc.) quando o usuário volta
/// pra ela.
class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    HomePage(),
    ListaPage(),
    CompararPage(),
    PromocoesPage(),
    PerfilPage(),
  ];

  static const List<BottomNavigationBarItem> _navItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined),
      activeIcon: Icon(Icons.home),
      label: 'Início',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.list_alt_outlined),
      activeIcon: Icon(Icons.list_alt),
      label: 'Lista',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.bar_chart_outlined),
      activeIcon: Icon(Icons.bar_chart),
      label: 'Comparar',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.local_offer_outlined),
      activeIcon: Icon(Icons.local_offer),
      label: 'Promoções',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person_outline),
      activeIcon: Icon(Icons.person),
      label: 'Perfil',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: _navItems,
        onTap: (index) => setState(() => _currentIndex = index),
      ),
    );
  }
}