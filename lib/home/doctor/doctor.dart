class Doctor {
  String name;
  String location;
  String openTime;
  String SvgAssets;
  String imageAsset;

  Doctor({
    required this.name,
    required this.location,
    required this.openTime,
    required this.SvgAssets,
    required this.imageAsset,
  });
}

var doctor = [
  Doctor(
      name: 'Dr. Emi Sulistya, SpKJ',
      location: 'Psychiatrist, Surakarta',
      openTime: '10.00 AM - 2.00 PM',
      SvgAssets: 'images/svg/ic_date.svg',
      imageAsset: 'images/dr_satu.png'),
  Doctor(
      name: 'Dr. Setiawan Kromo D',
      location: 'Heart Surgeon, Jakarta',
      openTime: '10.00 AM - 2.00 PM',
      SvgAssets: 'images/svg/ic_date.svg',
      imageAsset: 'images/dr_dua.png')
];
