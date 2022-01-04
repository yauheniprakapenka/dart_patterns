import 'display/watch_display.dart';
import 'notifier/weather_notifier.dart';

void main() {
  final publisher = WeatherNotifier();
  final watch = WatchDisplay(weatherPublisher: publisher);
  const temperature = 40.0;
  const humidity = 50.0;
  const pressure = 60.0;
  publisher
    ..setMeasurements(temperature, humidity, pressure)
    ..removeObserver(watch);
}
