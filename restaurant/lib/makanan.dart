class Makanan {
  String nama;
  String deskripsi;
  String gambarUtama;
  String detail;
  String waktuBuka;
  String harga;
  String kalori;
  List<String> gambarLain;
  List<Map<String, String>> bahan;

  Makanan({
    required this.nama,
    required this.deskripsi,
    required this.gambarUtama,
    required this.detail,
    required this.waktuBuka,
    required this.harga,
    required this.kalori,
    required this.gambarLain,
    required this.bahan,
});

static List<Makanan> dummyData = [
  Makanan(
    nama: 'Mie Ayam',
    deskripsi: 'Mie kuning dengan toping dan kuah kaldu ayam',
    gambarUtama: 'assets/mieAyam1.jpeg',
    detail: 'Mie ayam berbahan utama mie kuning yang dicampur dengan saus yang terdiri dari minyak wijen, kecap asin, dan minyak ayam yang menghasilkan rasa gurih yang pas. Di beberapa tempat, mie ayam juga terdapat campuran pangsit sebagai pelengkap.',
    waktuBuka: '07.00-22.00',
    harga: 'Rp10.000',
    gambarLain: [
      'assets/mieAyam2.JPG'
    ],
    bahan: [
      {'Ayam': 'assets/dagingAyam1.jpg'},
      {'Mie': 'assets/mieKuning.jpg'},
      {'Minyak Ayam': 'assets/minyakAyam.jpg'},
      {'Bumbu Halus': 'assets/bumbuHalus.jpg'}
    ],
    kalori: '300kkal'),
  Makanan(
    nama: 'Nasi Goreng',
    deskripsi: 'Nasi puting digoreng dengan bumbu pilihan.',
    gambarUtama: 'assets/nasiGoreng1.jpg',
    detail: 'Nasi goreng adalah makanan berupa nasi yang digoreng dan dicampur dalam minyak goreng, margarin, atau mentega. Biasanya ditambah dengan kecap manis, bawang merah, bawang putih, asam jawa, lada dan bahan lainnya; seperti telur, daging ayam, dan kerupuk.',
    waktuBuka: '07.00-22.00',
    harga: 'Rp10.000',
    gambarLain: [
      'assets/nasiGoreng2.jpg'
    ],
    bahan: [
      {'Nasi Putih': 'assets/nasiPutih.jpg'},
      {'Minyak Goreng': 'assets/minyakAyam.jpg'},
      {'Bumbu Halus': 'assets/bumbuHalus.jpg'}
    ],
    kalori: '400kkal'),
    Makanan(
      nama: 'Bakso',
      deskripsi: 'Bola daging dan tepung dengan kuah kaldu sapi.',
      gambarUtama: 'assets/bakso1.jpeg',
      detail: 'Bakso merupakan campuran daging sapi giling yang dicampur tepung tapioca dan dibentuk mirip bola-bola kecil ,biasanya menggunakan daging sapi tapi banyak juga yang menggunakan  daging ikan,ayam,udang,kerbau.',
      waktuBuka: '07.00-22.00',
      harga: 'Rp15.000',
      gambarLain: [
        'assets/bakso2.jpg'
      ],
      bahan: [
        {'Daging Sapi': 'assets/dagingSapi.jpg'},
        {'Tepung Tapioka': 'assets/tepungTapioka'},
        {'Bumbu Halus': 'assets/bumbuHalus.jpg'},
        {'Kaldu Sapi': 'assets/kalduSapi.jpeg'}
      ],
      kalori: '350kkal')
];
}