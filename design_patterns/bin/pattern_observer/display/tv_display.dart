import '../notifier/i_weather_notifier.dart';
import '../observer/i_observer.dart';
import 'i_display.dart';

class TvDispay implements IObserver, IDisplay {
  var _temperature = .0;
  var _humidity = .0;
  var _pressure = .0;
  late final IWeatherNotifier _weatherPublisher;

  TvDispay({required IWeatherNotifier weatherPublisher}) {
    _weatherPublisher = weatherPublisher;
    _weatherPublisher.registerObserver(this);
  }

  @override
  void display() {
    print(
        'TvDispay Отображены данные: temperature: $_temperature humidity: $_humidity _pressure: $_pressure');
  }

  @override
  void update(double temperature, double humidity, double pressure) {
    _temperature = temperature;
    _humidity = humidity;
    _pressure = pressure;
    display();
  }
}
