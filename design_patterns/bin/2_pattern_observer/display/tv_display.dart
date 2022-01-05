import '../notifier/i_weather_notifier.dart';
import '../observer/i_observer.dart';
import 'i_display.dart';

class TvDisplay implements IObserver, IDisplay {
  var _temperature = 0.0;
  var _humidity = 0.0;
  var _pressure = 0.0;
  late final IWeatherNotifier _weatherPublisher;

  TvDisplay({required IWeatherNotifier weatherPublisher}) {
    _weatherPublisher = weatherPublisher;
    _weatherPublisher.registerObserver(this);
  }

  @override
  void display() {
    final text = StringBuffer()
      ..write('TvDispay Отображены данные: ')
      ..write('temperature: $_temperature ')
      ..write('humidity: $_humidity ')
      ..write('pressure: $_pressure');
    print(text.toString());
  }

  @override
  void update(double temperature, double humidity, double pressure) {
    _temperature = temperature;
    _humidity = humidity;
    _pressure = pressure;
    display();
  }
}
