import 'package:meal_box/imports.dart';

class NetworkController extends GetxController {
  var connectionStatus = 0.obs;
  final Connectivity connectivity = Connectivity();
  StreamSubscription<ConnectivityResult>? _connectivitySubscription;

  @override
  void onInit() {
    initConnectivity();
    _connectivitySubscription = connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
    super.onInit();
  }

  Future<void> initConnectivity() async {
    ConnectivityResult? connectivityResult;
    try {
      connectivityResult = await connectivity.checkConnectivity();
    } catch (e) {
      print(e.toString());
    }
    return _updateConnectionStatus(connectivityResult!);
  }

  Future<void> _updateConnectionStatus(ConnectivityResult connectivityResult) async {
    switch (connectivityResult) {
      case ConnectivityResult.mobile:
        {
          connectionStatus.value = 1;
          break;
        }
      case ConnectivityResult.wifi:
        {
          connectionStatus.value = 2;
          break;
        }
      case ConnectivityResult.none:
        {
          connectionStatus.value = 0;
          break;
        }
      default:
        Messages.showErrorMessage("Failed to get network connection!", status: "Network Error");
        break;
    }
  }

  @override
  void onClose() {
    _connectivitySubscription!.cancel();
    super.onClose();
  }
}
