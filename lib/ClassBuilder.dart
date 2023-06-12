import 'package:foody/Pages/Notification.dart';
import 'package:foody/Pages/Home/home_page.dart';
import 'Pages/settings_page.dart';

typedef T Constructor<T>();

final Map<String, Constructor<Object>> _constructors = <String, Constructor<Object>>{};

void register<T>(Constructor<T> constructor) {
  _constructors[T.toString()] = constructor as Constructor<Object>;
}

class ClassBuilder {
  static void registerClasses() {
    register<HomePage>(() => HomePage());
    register<Notifications>(() => Notifications());
    register<SettingsPage>(() => SettingsPage());
  }
  static dynamic fromString(String type) {
    return _constructors[type]!();
  }

}