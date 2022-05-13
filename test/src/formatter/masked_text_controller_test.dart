import 'package:cubos_widgets/cubos_widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('12345678901 with mask 000.000.000-00 results 123.456.789-01', () {
    var cpfController =
        MaskedTextController(text: '12345678901', mask: '000.000.000-00');

    expect(cpfController.text, '123.456.789-01');
  });

  test(
      '12345678901 with mask 000.000.000-00 and changed results 123.456.789.01',
      () {
    var cpfController =
        MaskedTextController(text: '12345678901', mask: '000.000.000-00');

    expect(cpfController.text, '123.456.789-01');

    cpfController.updateMask('000.000.0000-0');

    expect(cpfController.text, '123.456.7890-1');
  });

  test('abc123 with mask AAA results abc', () {
    var controller = MaskedTextController(text: 'abc123', mask: 'AAA');

    expect(controller.text, 'abc');
  });

  test('update text to 123456 and mask 000-000 results on 123-456', () {
    var controller = MaskedTextController(text: '', mask: '000-000');
    controller.updateText('123456');

    expect(controller.text, '123-456');
  });

  test('* must accept all characters', () {
    var controller = MaskedTextController(text: 'a0&#', mask: '****');

    expect(controller.text, 'a0&#');
  });

  test('@ must accept only letters and numbers', () {
    var controller = MaskedTextController(text: 'a0&#', mask: '@@@');

    expect(controller.text, 'a0');
  });

  test('remove * translator must keep * in the mask', () {
    var translator = MaskedTextController.getDefaultTranslator();
    translator.remove('*');

    var controller = MaskedTextController(
        mask: '0000 **** **** 0000', translator: translator);
    controller.updateText('12345678');

    expect(controller.text, '1234 **** **** 5678');
  });

  test('remove * translator must keep * in the mask', () {
    var translator = MaskedTextController.getDefaultTranslator();
    translator.remove('*');

    var controller = MaskedTextController(
        mask: '0000 **** **** 0000', translator: translator);
    controller.updateText('12345678');

    expect(controller.text, '1234 **** **** 5678');
  });
}
