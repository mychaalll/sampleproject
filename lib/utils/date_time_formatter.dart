//return todays date formatted as mmddyyyy
String todaysDateFormatted() {
  var dateTimeObject = DateTime.now();

  //month in format mm
  String month = dateTimeObject.month.toString();
  if (month.length == 1) {
    month = '0$month';
  }

  String day = dateTimeObject.day.toString();
  if (day.length == 1) {
    day = '0$day';
  }
  //year in format yyyy
  String year = dateTimeObject.year.toString();

  String yyyymmdd = year + month + day;
  return yyyymmdd;
}

// convert string mmddyyyy to DateTime object
DateTime createDateTimeObject(String yyyymmdd) {
  int mm = int.parse(yyyymmdd.substring(0, 2));
  int dd = int.parse(yyyymmdd.substring(2, 4));
  int yyyy = int.parse(yyyymmdd.substring(4, 8));

  DateTime dateTimeObject = DateTime(yyyy, mm, dd);
  return dateTimeObject;
}

//convert DateTime object to string mmddyyyy
String convertDateTimeToString(DateTime dateTime) {
  String month = dateTime.month.toString();
  if (month.length == 1) {
    month = '0$month';
  }

  String day = dateTime.day.toString();
  if (day.length == 1) {
    day = '0$day';
  }
  //year in format yyyy
  String year = dateTime.year.toString();

  String yyyymmdd = year + month + day;

  return yyyymmdd;
}
