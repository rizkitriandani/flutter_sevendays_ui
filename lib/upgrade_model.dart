class UpgradeItem {
  final String title;
  final String subTitle1;
  final String subTitle2;
  final String image;
  UpgradeItem({
    required this.title,
    required this.subTitle1,
    required this.subTitle2,
    required this.image,
  });
}

var upgradeItems = [
  UpgradeItem(
    title: 'Money Security',
    subTitle1: 'support',
    subTitle2: '24/7',
    image: 'assets/ic_piggybank.png',
  ),
  UpgradeItem(
    title: 'Automation',
    subTitle1: 'we provide',
    subTitle2: 'invoice',
    image: 'assets/img_bills_small.png',
  ),
  UpgradeItem(
    title: 'Balance Report',
    subTitle1: 'can up to',
    subTitle2: '10k',
    image: 'assets/img_currency.png',
  ),
];
