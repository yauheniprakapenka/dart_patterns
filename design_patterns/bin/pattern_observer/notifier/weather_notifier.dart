import '../observer/i_observer.dart';
import 'i_weather_notifier.dart';

class WeatherNotifier implements IWeatherNotifier {
  final _observers = <IObserver>[];

  var _temperature = 0.0;
  var _humidity = 0.0;
  var _pressure = 0.0;

  @override
  void notifyObservers() {
    for (final observer in _observers) {
      observer.update(_temperature, _humidity, _pressure);
    }
  }

  @override
  void registerObserver(IObserver observer) {
    _observers.add(observer);
  }

  @override
  void removeObserver(IObserver observer) {
    if (_observers.contains(observer)) {
      _observers.remove(observer);
    }
  }

  void setMeasurements(double temperature, double humidity, double pressure) {
    _temperature = temperature;
    _humidity = humidity;
    _pressure = pressure;
    notifyObservers();
  }
}
