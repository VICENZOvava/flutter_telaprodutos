import 'package:flutter/material.dart';

/// Paleta de cores do EconoMarket.
///
/// Baseada nos protótipos das telas de Início, Perfil e Promoções.
/// Os valores hexadecimais são uma aproximação — ajuste aqui se tiver
/// os códigos exatos do Figma/protótipo.
class AppColors {
  AppColors._();

  // Verde principal (header, bottom nav ativo, botões primários)
  static const Color primaryGreen = Color(0xFF2E7D32);
  static const Color primaryGreenDark = Color(0xFF1B5E20);
  static const Color primaryGreenLight = Color(0xFF66BB6A);

  // Azul do banner "Super Ofertas" (Home)
  static const Color bannerBlue = Color(0xFF1976D2);

  // Vermelho de promoção / desconto (badge "-13%", "Promoção")
  static const Color promotionRed = Color(0xFFE53935);

  // Amarelo/dourado (estrelas de avaliação, ex.: "Super Economizador")
  static const Color highlightYellow = Color(0xFFFFC107);

  // Fundos
  static const Color background = Color(0xFFF5F6F8);
  static const Color cardWhite = Color(0xFFFFFFFF);

  // Destaque de "Melhor preço" / "Melhor Opção" (RF004 e RF005)
  static const Color bestPriceBackground = Color(0xFFE8F5E9);
  static const Color bestPriceGreen = Color(0xFF43A047);

  // Textos
  static const Color textPrimary = Color(0xFF212121);
  static const Color textSecondary = Color(0xFF757575);
  static const Color textOnPrimary = Color(0xFFFFFFFF);

  // Preço antigo riscado (RF006)
  static const Color priceStrikethrough = Color(0xFF9E9E9E);

  // Bordas / divisores
  static const Color divider = Color(0xFFE0E0E0);
}