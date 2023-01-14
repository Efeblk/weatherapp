String? getToday(String Today) {
  switch (Today) {
    case 'Monday':
      {
        return 'Pazartesi';
      }

    case 'Tuesday':
      {
        return 'Salı';
      }

    case 'Wednesday':
      {
        return 'Çarşamba';
      }

    case 'Thursday':
      {
        return 'Perşembe';
      }

    case 'Friday':
      {
        return 'Cuma';
      }

    case 'Saturday':
      {
        return 'Cumartesi';
      }

    case 'Sunday':
      {
        return 'Pazar';
      }
  }
}

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
    case "Freezing fog":
      {
        return 'Dondurucu sisli';
      }
    case "Patchy light drizzle":
      {
        return 'Düzensiz hafif çiseleme';
      }
    case "Light drizzle":
      {
        return 'Hafif çiseleme';
      }
    case "Freezing drizzle":
      {
        return 'Dondurucu çiseleme';
      }
    case "Heavy freezing drizzle":
      {
        return 'yoğun dondurucu çiseleme';
      }
    case "Patchy light rain":
      {
        return 'Düzensiz hafif yağmur';
      }
    case "Light rain":
      {
        return 'Hafif yağmur';
      }
    case "Moderate rain at times":
      {
        return 'Zaman zaman orta şiddette yağmur';
      }
    case "Moderate rain":
      {
        return 'Orta şiddette yağmur';
      }
    case "Heavy rain at times":
      {
        return 'Zaman zaman yüksek şiddette yağmur';
      }
    case "Heavy rain":
      {
        return 'Yüksek şiddette yağmur';
      }
    case "Light freezing rain":
      {
        return 'Hafif soğuk yağmur';
      }
    case "Moderate or heavy freezing rain":
      {
        return 'Orta veya şiddetli dondurucu yağmur';
      }
    case "Light sleet":
      {
        return 'hafif sulu kar';
      }
    case "Moderate or heavy sleet":
      {
        return 'orta veya şiddetli sulu kar';
      }
    case "Patchy light snow":
      {
        return 'Parçalı hafif kar';
      }
    case "Light snow":
      {
        return 'Hafif kar';
      }

    case "Patchy moderate snow":
      {
        return 'Parçalı orta kar';
      }
    case "Moderate snow":
      {
        return 'Kar yağışı';
      }
    case "Patchy heavy snow":
      {
        return 'Parçalı yoğun kar';
      }
    case "Heavy snow":
      {
        return 'Yoğun kar yağışı';
      }
    case "Ice pellets":
      {
        return 'Dolu';
      }
    case "Light rain shower":
      {
        return 'Hafif yağmur';
      }
    case "Moderate or heavy rain shower":
      {
        return 'Orta veya şiddetli sağanak yağmur';
      }

    case "Torrential rain shower":
      {
        return 'Sağanak yağmur';
      }
    case "Light sleet showers":
      {
        return 'Hafif kar yağışı';
      }
    case "Moderate or heavy sleet showers":
      {
        return 'Orta veya şiddetli kar yağışı';
      }
    case "Light snow showers":
      {
        return 'Hafif kar yağışı';
      }

    case "Moderate or heavy snow showers":
      {
        return 'Orta veya yoğun kar sağanağı';
      }
    case "Light showers of ice pellets":
      {
        return 'Hafif dolu sağanağı';
      }
    case "Moderate or heavy showers of ice pellets":
      {
        return 'Orta veya yoğun dolu sağanağı';
      }
    case "Patchy light rain with thunder":
      {
        return 'Gökgürültülü parçalı hafif yağmur';
      }
    case "Moderate or heavy rain with thunder":
      {
        return 'Gök gürültüsü ile orta veya şiddetli yağmur';
      }
    case "Patchy light snow with thunder":
      {
        return 'Gök gürültüsü ile parçalı hafif kar';
      }
    case "Moderate or heavy snow with thunder":
      {
        return 'Orta veya şiddetli kar yağışlı';
      }
  }
}

String? getYon(String yon) {
  switch (yon) {
    case "S":
      {
        return 'G';
      }

    case "E":
      {
        return 'D';
      }

    case "N":
      {
        return 'K';
      }

    case "W":
      {
        return 'B';
      }
  }
  return 'G';
}
