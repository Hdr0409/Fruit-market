import 'dart:io';
import 'Constant.dart';

void main(List<String> arguments) {
  
  print('''$message 
  pilih buah yang ingin anda beli
  ''');

  var inputBuahDipilih = int.parse(stdin.readLineSync()!);


  if(inputBuahDipilih > 0) {
    var buahYangDipilih = buah[inputBuahDipilih - 1];
     print('''
anda memilih buah $buahYangDipilih

  Berapa buah $buahYangDipilih
''');

   var jumlahbuahYangDipilih = int.parse(stdin.readLineSync()!);
   var hargaTotal = jumlahbuahYangDipilih * harga[buahYangDipilih]!;

   stdout.write('''anda memilih buah $buahYangDipilih sejumlah $jumlahbuahYangDipilih
   harga yang harus dibayar adalah Rp $hargaTotal
   jumlah uang yang dibayarkan:
   ''');

   var jumlahUang = int.parse(stdin.readLineSync()!);

  stdout.write('''
Anda membayar sebesar$jumlahUang
kembaliannya${hargaTotal - jumlahUang}
Terimakasih

''');


  }
 
  else{
    
  }
}

