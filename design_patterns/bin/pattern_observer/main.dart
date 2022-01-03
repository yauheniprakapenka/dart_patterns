import 'display/watch_display.dart';
import 'notifier/weather_notifier.dart';

void main() {
  final publisher = WeatherNotifier();
  final watch = WatchDisplay(weatherPublisher: publisher);
  publisher.setMeasurements(40, 50, 60);
  publisher.removeObserver(watch);
}
