mixin Wifi {
  String wifi = "disabled";

  void enableWifi() {
    if (wifi == "disabled") {
      print("Wifi enabled.");
      wifi = "enabled";
    }
    return;
  }

  void disableWifi() {
    if (wifi == "enabled") {
      print("Wifi disabled.");
      wifi = "disabled";
    }
    return;
  }
}

mixin Photo {
  void photo() {
    print("(taking photo)");
  }
}

class Phone with Wifi, Photo {}

void main() {
  var xiaomi = Phone();

  xiaomi.enableWifi();
  print(xiaomi.wifi);
  xiaomi.disableWifi();
  xiaomi.disableWifi();
  print(xiaomi.wifi);
  xiaomi.photo();
}
