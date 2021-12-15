import '../keywords/test.dart' as flutterTest;
import 'package:test/test.dart';
import 'package:flutter_driver/flutter_driver.dart';
void main() {

    group('Flutter Test Demo', ()
  {
      FlutterDriver driver;
      setUpAll(() async {
      driver = await FlutterDriver.connect();
      //test ("Flutter Field Test", () async => await flutterTest.fieldText(driver));
    });

    test ("Flutter Field Test", () async {
      await flutterTest.fieldText(driver);
    });

      test ("Flutter Increment Test", () async {
        await flutterTest.incrementTest(driver);
      });
      
      tearDownAll(() async {
        if (driver != null) {
          await driver.close();
        }
      });
  });
}