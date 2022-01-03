import '../observer/i_observer.dart';

abstract class IWeatherNotifier {
  void registerObserver(IObserver observer);
  void removeObserver(IObserver observer);
  void notifyObservers();
}
