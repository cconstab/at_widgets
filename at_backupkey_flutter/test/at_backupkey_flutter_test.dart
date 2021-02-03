import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:at_backupkey_flutter/at_backupkey_flutter.dart';

void main() {
  const MethodChannel channel = MethodChannel('at_backupkey_flutter');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  // test('getPlatformVersion', () async {
  //   expect(await AtBackupkeyFlutter.platformVersion, '42');
  // });
}
