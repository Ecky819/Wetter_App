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
  // Füge die Regenmengen der Wetterdaten in die Liste ein
  rain.add(weatherData[0]['rain']);
  rain.add(weatherData[1]['rain']);
  rain.add(weatherData[2]['rain']);
  // Füge die Windgeschwindigkeiten der Wetterdaten in die Liste ein
  wind.add(weatherData[0]['wind']);
  wind.add(weatherData[1]['wind']);
  wind.add(weatherData[2]['wind']);

  // Berechne den Durchschnitt der Regenmengen
  double? avgRain = ((rain[0] ?? 0) + (rain[1] ?? 0) + (rain[2] ?? 0)) / 3;
  String gerundetRain = avgRain.toStringAsFixed(2);
  print('Durchschnittsregenmenge: $gerundetRain mm');

  // Berechne den Durchschnitt der Windgeschwindigkeiten
  double? avgWind = ((wind[0] ?? 0) + (wind[1] ?? 0) + (wind[2] ?? 0)) / 3;
  String gerundetWind = avgWind.toStringAsFixed(2);
  print('Durchschnittswindgeschwindigkeit: $gerundetWind km/h');

  // Berechne den Durchschnitt der Temperaturen
  double? avgTemp = ((temps[0] ?? 0) + (temps[1] ?? 0) + (temps[2] ?? 0)) / 3;
  String gerundetTemp = avgTemp.toStringAsFixed(2);
  print('Durchschnittstemperatur: $gerundetTemp °C');
}
