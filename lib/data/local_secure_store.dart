import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalSecureStore {
  static const orderSequenceKey = 'orderSequenceKey';

  final storage = const FlutterSecureStorage();

  static LocalSecureStore get instance => _instance;
  static final LocalSecureStore _instance = LocalSecureStore._();

  LocalSecureStore._();

  Future<String?> get orderIDSequence {
    return storage.read(key: orderSequenceKey);
  }

  // Note TO the app is in closed state or not
  Future<void> incrementOrderSequence() async {
    String? orderSequence = await orderIDSequence;
    await storage.write(
        key: orderSequenceKey,
        value: orderSequence != null
            ? (int.parse(orderSequence) + 1).toString()
            : '0');
  }
}
