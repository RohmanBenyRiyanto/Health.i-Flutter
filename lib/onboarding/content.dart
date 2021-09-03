class OnboardingContent {
  String image;
  String title;
  String discription;

  OnboardingContent({required this.image, required this.title, required this.discription});
}

List<OnboardingContent> contents = [
  OnboardingContent(
    title: 'Tell your Doctor about\nyour complaint',
    image: 'images/ob_satu.png',
    discription: "Wherever and whenever\nyou can consult a doctor of your choice."
  ),
  OnboardingContent(
    title: 'Need an ambulance?\nis just a tap away',
    image: 'images/ob_dua.png',
    discription: "You will get help easily\nand fast."
  ),
  OnboardingContent(
    title: 'Get your medication\nwherever you are',
    image: 'images/ob_tiga.png',
    discription: "No need to wait long, with"
    "One tap of your medicine will come your way."
  ),
];