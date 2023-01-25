class DateModel {
  final bool available;
  final String day;
  final String date;
  final double price;
  bool isSelected;
  DateModel(
      {required this.available,
      required this.day,
      required this.date,
      required this.price,
      this.isSelected = false});
}

List<DateModel> dates = [
  DateModel(available: true, day: "THU", date: "1 JAN", price: 100.0),
  DateModel(available: false, day: "FRI", date: "2 JAN", price: 90.0),
  DateModel(available: true, day: "SAT", date: "3 JAN", price: 85.0),
  DateModel(available: true, day: "SUN", date: "4 JAN", price: 80.0),
  DateModel(available: false, day: "MON", date: "5 JAN", price: 75.0),
  DateModel(available: true, day: "TUE", date: "6 JAN", price: 70.0),
  DateModel(available: true, day: "WED", date: "7 JAN", price: 65.0),
  DateModel(available: false, day: "THU", date: "8 JAN", price: 60.0),
  DateModel(available: true, day: "FRI", date: "9 JAN", price: 55.0),
  DateModel(available: true, day: "SAT", date: "10 JAN", price: 50.0),
  DateModel(available: false, day: "SUN", date: "11 JAN", price: 45.0),
  DateModel(available: true, day: "MON", date: "12 JAN", price: 40.0),
  DateModel(available: false, day: "TUE", date: "13 JAN", price: 35.0),
  DateModel(available: true, day: "WED", date: "14 JAN", price: 30.0),
  DateModel(available: true, day: "THU", date: "15 JAN", price: 25.0),
  DateModel(available: true, day: "FRI", date: "16 JAN", price: 20.0),
  DateModel(available: false, day: "SAT", date: "17 JAN", price: 15.0),
  DateModel(available: true, day: "SUN", date: "18 JAN", price: 10.0),
  DateModel(available: true, day: "MON", date: "19 JAN", price: 5.0),
  DateModel(available: true, day: "TUE", date: "20 JAN", price: 0.0),
  DateModel(available: false, day: "WED", date: "21 JAN", price: 100.0),
  DateModel(available: true, day: "THU", date: "22 JAN", price: 90.0),
  DateModel(available: true, day: "FRI", date: "23 JAN", price: 85.0),
  DateModel(available: true, day: "SAT", date: "24 JAN", price: 80.0),
  DateModel(available: true, day: "SUN", date: "25 JAN", price: 75.0),
  DateModel(available: true, day: "MON", date: "26 JAN", price: 70.0),
];
