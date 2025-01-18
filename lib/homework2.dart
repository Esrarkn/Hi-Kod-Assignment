void main() {
//Kısa kenar ve uzun kenar değişkenleri
  double kisaKenar = 4.76;
  double uzunKenar = 9.54;

// Dikdörtgenin alanını hesaplayan fonksiyon
  double dikdortgenAlaniHesapla(double uzunKenar, double kisaKenar) {
    return uzunKenar * kisaKenar;
  }

//Alan hesaplayan foonsiyon çağırılıyor
  double alanSonuc = dikdortgenAlaniHesapla(uzunKenar, kisaKenar);

  print('Dikdörtgen Alanı: $alanSonuc');
}
