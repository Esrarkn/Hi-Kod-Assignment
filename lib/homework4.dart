import 'package:flutter/material.dart';

class Homework4 extends StatefulWidget {
  const Homework4({super.key});

  @override
  State<Homework4> createState() => _Homework4State();
}

class _Homework4State extends State<Homework4> {
  final TextEditingController _tfAdSoyad = TextEditingController();
  String adSoyad = "";
  String _secilmisCinsiyet = "none";
  bool _isChecked = false;
  bool _isSwitched = false;
  double sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: const Text(
            "Kişilik Anketi",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          centerTitle: true,
        ),
        body: SizedBox(
          width: 350,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Ad Soyad Bilgileri
                TextField(
                  controller: _tfAdSoyad,
                  decoration: InputDecoration(
                    labelText: "Adınız ve Soyadınız",
                    labelStyle: TextStyle(fontSize: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onChanged: (text1) {
                    setState(() {
                      adSoyad = text1;
                    });
                  },
                ),
                // Cinsiyet Bilgisi
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: DropdownButton(
                    isExpanded: true,
                    value: _secilmisCinsiyet,
                    onChanged: (cinsiyet) {
                      setState(() {
                        _secilmisCinsiyet = cinsiyet!;
                      });
                    },
                    items: <DropdownMenuItem<String>>[
                      DropdownMenuItem(
                        value: 'none',
                        child: Text(
                          "Lütfen Cinsiyet seçiniz.",
                          style: TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      DropdownMenuItem(
                          value: 'kadın',
                          child: Text(
                            "Kadın",
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                          )),
                      DropdownMenuItem(
                          value: 'erkek',
                          child: Text(
                            "Erkek",
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                          )),
                    ],
                  ),
                ),
                // Reşit Olma Bilgisi
                CheckboxListTile(
                  value: _isChecked,
                  onChanged: (resitMi) {
                    setState(() {
                      _isChecked = resitMi!;
                    });
                  },
                  activeColor: Colors.deepPurple,
                  title: Text(
                    'Reşit Misiniz?',
                    style: TextStyle(color: Colors.black87),
                  ),
                  tileColor: Colors.grey[300],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                //Sigara Kullanma Bilgisi
                SwitchListTile(
                  value: _isSwitched,
                  onChanged: (SwitchData) {
                    setState(
                      () {
                        _isSwitched = SwitchData;
                      },
                    );
                  },
                  activeColor: Colors.grey[100],
                  activeTrackColor: Colors.deepPurple,
                  inactiveThumbColor: Colors.deepPurple,
                  inactiveTrackColor: Colors.grey[100],
                  title: Text(
                    'Sigara Kullanıyor Musunuz?',
                    style: TextStyle(color: Colors.black87),
                  ),
                  tileColor: Colors.grey[300],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
                //Slider
                Visibility(
                  visible: _isSwitched,
                  child: Column(
                    children: [
                      Text(
                        "Bir günde kaç adet sigara içiyorsunuz?",
                        style: TextStyle(fontSize: 16, color: Colors.black87),
                      ),
                      Slider(
                        value: sliderValue,
                        activeColor: Colors.deepPurpleAccent,
                        inactiveColor: Colors.black,
                        divisions: 50,
                        max: 50,
                        min: 0,
                        label: sliderValue.round().toString(),
                        onChanged: (slider) {
                          setState(() {
                            sliderValue = slider;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Ad ve Soyad: $adSoyad',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Text(
                          'Cinsiyetiniz: $_secilmisCinsiyet',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Text(
                          'Reşit Misiniz?: $_isChecked',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Text(
                          'Sigara Kullanıyor Musunuz?: $_isSwitched',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Text(
                          'Slider valuesi: $sliderValue',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
