import '../notifier/i_weather_notifier.dart';
import 'i_display.dart';
import '../observer/i_observer.dart';

class WatchDisplay implements IObserver, IDisplay {
  var _temperature = .0;
  var _humidity = .0;
  var _pressure = .0;
  late final IWeatherNotifier _weatherPublisher;

  WatchDisplay({required IWeatherNotifier weatherPublisher}) {
    _weatherPublisher = weatherPublisher;
    _weatherPublisher.registerObserver(this);
  }

  @override
  void update(double temperature, double humidity, double pressure) {
    _temperature = temperature;
    _humidity = humidity;
    _pressure = pressure;
    display();
  }

  @override
  void display() {
    print(
        'WatchDisplay Отображены данные: temperature: $_temperature humidity: $_humidity _pressure: $_pressure');
  }
}
