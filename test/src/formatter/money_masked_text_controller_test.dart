import 'package:cubos_widgets/cubos_widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('0.01 results 0,01', () {
    var controller = MoneyMaskedTextController();
    controller.updateValue(0.01);

    expect(controller.text, '0,01');
  });

  test('1234.56 results 1.234,56', () {
    var controller = MoneyMaskedTextController();

    controller.updateValue(1234.56);

    expect(controller.text, '1.234,56');
  });

  test('123123.0 results 123.123,00', () {
    var controller = MoneyMaskedTextController();
    controller.updateValue(123123.0);

    expect(controller.text, '123.123,00');
  });

  test('1231231.0 results 1.231.231,00', () {
    var controller = MoneyMaskedTextController();
    controller.updateValue(1231231.0);

    expect(controller.text, '1.231.231,00');
  });

  test('custom decimal and thousando separator results in 1,234.00', () {
    var controller = MoneyMaskedTextController(
        decimalSeparator: '.', thousandSeparator: ',');
    controller.updateValue(1234.0);

    expect(controller.text, '1,234.00');
  });

  test('number value for 0,10 must be 0.1', () {
    var controller = MoneyMaskedTextController(
        decimalSeparator: '.', thousandSeparator: ',');
    controller.updateValue(0.1);

    expect(controller.numberValue, 0.1);
  });

  test('rightSymbol " US\$" and value 99.99 must resut in 99,99 US\$', () {
    var controller = MoneyMaskedTextController(rightSymbol: ' US\$');
    controller.updateValue(99.99);

    expect(controller.text, '99,99 US\$');
  });

  test('rightSymbol with number must raises an error.', () {
    Function executor = () {
      MoneyMaskedTextController(rightSymbol: ' U4');
    };

    expect(executor, throwsArgumentError);
  });

  test(
      'rightSymbol " US\$" with 12345678901234 must results in 123.456.789.012,34 US\$',
      () {
    var controller = MoneyMaskedTextController(rightSymbol: ' US\$');
    controller.updateValue(123456789012.34);

    expect(controller.text, '123.456.789.012,34 US\$');
  });

  test('leftSymbol "R\$ " and value 123.45 results in "R\$ 123,45"', () {
    var controller = MoneyMaskedTextController(leftSymbol: 'R\$ ');
    controller.updateValue(123.45);

    expect(controller.text, 'R\$ 123,45');
  });

  test('precision 3 and value 123.45 results in "123,450"', () {
    var controller = MoneyMaskedTextController(precision: 3);
    controller.updateValue(123.45);

    expect(controller.text, '123,450');
  });
}
