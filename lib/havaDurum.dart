//ekleme yap
//https://www.weatherapi.com/docs/weather_conditions.json

String? getHavaDurum(String Durum) {
  switch (Durum) {
    case "Sunny":
      {
        return 'Güneşli';
      }

    case "Partly cloudy":
      {
        return 'Parçalı Bulutlu';
      }

    case "Cloudy":
      {
        return 'Bulutlu';
      }

    case "Overcast":
      {
        return 'Bulutlu';
      }

    case "Mist":
      {
        return 'Sisli';
      }

    case "Patchy rain possible":
      {
        return 'Olası yağmur';
      }

    case "Patchy snow possible":
      {
        return 'Olası kar yağışı';
      }
    case "Patchy sleet possible":
      {
        return 'Olası sulu kar yağışı';
      }
    case "Patchy freezing drizzle possible":
      {
        return 'Olası dondurucu çiseleme yağışı';
      }
    case "Thundery outbreaks possible":
      {
        return 'Olası gök gürültülü';
      }
    case "Patchy snow possible":
      {
        return 'Olası kar yağışı';
      }
    case "Fog":
      {
        return 'Sisli';
      }
  }
}
