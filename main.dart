void main() {
  // Liste hat garantiert immer 3 Elemente
  List<Map<String, double?>> weatherData = [
    {'temp': 5.3, 'rain': 0.9, 'wind': null},
    {'temp': 4.5, 'rain': null, 'wind': 16.8},
    {'temp': null, 'rain': 3.8, 'wind': null},
  ];
  // Erstelle leere Liste für Temperaturen
  List<double?> temps = [];
  // Erstelle leere Liste für Regen
  List<double?> rain = [];
  // Erstelle leere Liste für Wind
  List<double?> wind = [];
  // Füge die Temperaturen der Wetterdaten in die Liste ein
  temps.add(weatherData[0]['temp']);
  temps.add(weatherData[1]['temp']);
  temps.add(weatherData[2]['temp']);
  // Zähle die Anzahl der nicht null Temperaturen
  int notNullTemps = temps.where((temp) => temp != null).length;
  // Füge die Regenmengen der Wetterdaten in die Liste ein
  rain.add(weatherData[0]['rain']);
  rain.add(weatherData[1]['rain']);
  rain.add(weatherData[2]['rain']);
  // Zähle die Anzahl der nicht null Regenmengen
  int notNullRain = rain.where((rain) => rain != null).length;
  // Füge die Windgeschwindigkeiten der Wetterdaten in die Liste ein
  wind.add(weatherData[0]['wind']);
  wind.add(weatherData[1]['wind']);
  wind.add(weatherData[2]['wind']);
  // Zähle die Anzahl der nicht null Windgeschwindigkeiten
  int notNullWind = wind.where((wind) => wind != null).length;
  // Berechne den Durchschnitt der Regenmengen
  double? avgRain =
      ((rain[0] ?? 0) + (rain[1] ?? 0) + (rain[2] ?? 0)) / notNullRain;
  String gerundetRain = avgRain.toStringAsFixed(2);
  print('Durchschnittsregenmenge: $gerundetRain mm');
  // Berechne den Durchschnitt der Windgeschwindigkeiten
  double? avgWind =
      ((wind[0] ?? 0) + (wind[1] ?? 0) + (wind[2] ?? 0)) / notNullWind;
  String gerundetWind = avgWind.toStringAsFixed(2);
  print('Durchschnittswindgeschwindigkeit: $gerundetWind km/h');
  // Berechne den Durchschnitt der Temperaturen
  double? avgTemp =
      ((temps[0] ?? 0) + (temps[1] ?? 0) + (temps[2] ?? 0)) / notNullTemps;
  String gerundetTemp = avgTemp.toStringAsFixed(2);
  print('Durchschnittstemperatur: $gerundetTemp °C');
}
