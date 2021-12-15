import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import '../object_repository/xpath.dart';
import '../object_repository/uiElements.dart';

dynamic fieldText (FlutterDriver driver) async {
  
  await driver.runUnsynchronized(() async {
    await driver.tap(textField);
  });

  await driver.runUnsynchronized(() async {
    await driver.enterText(sendingText);
  });

  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.text(sendingText));
  });
}

  dynamic incrementTest (FlutterDriver driver) async {
    await driver.runUnsynchronized(() async {
      expect(await driver.getText(counterText), '0');
    });

    await driver.runUnsynchronized(() async {
      await driver.tap(Btn);
    });

    await driver.runUnsynchronized(() async {
      expect(await driver.getText(counterText), '1');
    });
}
