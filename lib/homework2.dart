void main() {
//2
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

/******************************************************************************/
//3
//a ve b değişkenleri
  int a = 5;
  int b = 3;

//Çarp fonkdiyonu
  int carp(int a, int b) {
    int multiplyByTwo(int x) {
      return x * 2;
    }

    int result = a;

    for (int i = 0; i < b - 1; i++) {
      result = multiplyByTwo(result);
    }

    return result;
  }

  int sonuc = carp(a, b);
  print("Sonuç: $sonuc");

/******************************************************************************/
//4
//Liste oluşturuldu
  var meyvelerList = <String>["Elma", "Armut", "Kivi", "Çilek", "Erik"];
  print(meyvelerList);

//Listeden Kivi elemanı silindi

  meyvelerList.remove("Kivi");
  print(meyvelerList);
}

/// ***************************************************************************
//5
//Şekiller class'ı

class Shapes {
  String shape;
  int shapeEdge;

  Shapes({required this.shape, required this.shapeEdge});
}

var object1 = Shapes(shape: "Kare", shapeEdge: 4);
var object2 = Shapes(shape: "Dikdörtgen", shapeEdge: 4);
var object3 = Shapes(shape: "Beşgen", shapeEdge: 5);
var object4 = Shapes(shape: "Altıgen", shapeEdge: 6);
var object5 = Shapes(shape: "Daire ", shapeEdge: 0);
