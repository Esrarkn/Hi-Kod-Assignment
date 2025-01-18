/*
a. Kendiniz birer tane int, String, double, bool dynamic, char veri tiplerinde variable
tanımlayıp bu variable’ları konsola bastırınız.
b. a. kısmında tanımladığınız variable’lardan 3 tane seçerek o variable’ları
camelcase,snake_case ve PascalCase olarak tekrar tanımlayınız. Ve yine konsola
bastırınız.
c. Kendi adınızı, soyadınızı, yaşınızı reşit olup olmama durumunuzu (true,false) birer
variable’a atayıp ekrana bastıran print yazınız.
*/

void main() {
//Veri Tanımlama ve Konsola  Yazdırma
  String isim = "Deniz";
  String yer = "İstanbul";
  int yas = 20;
  double boy = 1.68;
  bool ogrenciMi = true;
  dynamic icerik = "Hi-Kod!";
  String chardegisken = "M";

  print("İsim: $isim, "
      "Yer: $yer, "
      "Yaş: $yas, "
      "Boy: $boy, "
      "Öğrenci Mi: $ogrenciMi,"
      "İçerik: $icerik,"
      "String CharDeğişkeni:$chardegisken,");

//Verileri camelcase, snake_case ve PascalCase Yazdırma

  String camelCaseIsim = "mobilUygulamaAtölyesi,";
  String snakeCaseIsim = "mobil_uygulama_atölyesi,";
  String pascalCaseIsim = "MobilUyggulamaAtölyesi,";
  print("Camel Case : $camelCaseIsim"
      "Snake Case: $camelCaseIsim"
      "Pascal Case : $camelCaseIsim");

// Kişisel Bilgiler Veri Tanımlaması ve Konsola Yazdırma

  String ad = "Esra";
  String soyad = "Arıkan";
  int yasim = 25;
  bool resitMi = true;

  print("Ad: $ad, "
      "Soyad: $soyad, "
      "Yaş: $yasim, "
      "Reşit Mi: $resitMi,");
}
