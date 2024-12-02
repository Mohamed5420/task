import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task/core/helpers/currency_conversion.dart';
import 'package:task/core/helpers/di.dart';
import 'package:task/core/helpers/global_context.dart';
import 'package:task/core/bloc/currency_cubit/currency_cubit.dart';
import 'package:task/core/models/currency_model/currency_model.dart';
import 'package:task/core/constants/constants.dart';
import 'package:flutter/widgets.dart'; // Import this for BuildContext

// Mock classes
class MockBuildContext extends Mock implements BuildContext {}

class MockGlobalContext extends Mock implements GlobalContext {}

class MockCurrencyCubit extends Mock implements CurrencyCubit {}

void main() {
  late CurrencyConversion currencyConversion;
  late MockGlobalContext mockGlobalContext;
  late MockCurrencyCubit mockCurrencyCubit;
  late MockBuildContext mockBuildContext;

  setUp(() {
    currencyConversion = CurrencyConversion();
    mockGlobalContext = MockGlobalContext();
    mockCurrencyCubit = MockCurrencyCubit();
    mockBuildContext = MockBuildContext();

    // Register the mocked GlobalContext
    getIt.registerSingleton<GlobalContext>(mockGlobalContext);

    // Mock the context and cubit behavior
    when(mockGlobalContext.context()).thenReturn(mockBuildContext);
    when(mockGlobalContext.context().read<CurrencyCubit>()).thenReturn(mockCurrencyCubit);
  });

  tearDown(() {
    getIt.reset();
  });

  group('getAmountByFxRate Tests', () {
    test('Returns 0 when input is invalid', () {
      expect(currencyConversion.getAmountByFxRate(null, 'USD', 'KWD'), 0);
      expect(currencyConversion.getAmountByFxRate(100, null, 'KWD'), 0);
      expect(currencyConversion.getAmountByFxRate(100, 'USD', null), 0);
      expect(currencyConversion.getAmountByFxRate(100, '', 'KWD'), 0);
    });

    test('Returns original amount for same currency', () {
      expect(currencyConversion.getAmountByFxRate(100, 'USD', 'USD'), 100);
      expect(currencyConversion.getAmountByFxRate(50, 'KWD', 'KWD'), 50);
    });

    test('Converts from KWD to other currency', () {
      // Mock rates
      final rates = [
        CurrencyModel(countryCode: 'USD', value: 0.3),
        CurrencyModel(countryCode: 'EUR', value: 0.28),
      ];

      when(mockCurrencyCubit.state).thenReturn(mockGlobalContext.context().read<CurrencyCubit>().testCurrency(rates));

      final result = currencyConversion.getAmountByFxRate(100, 'KWD', 'USD');
      expect(result, closeTo(30, 0.01)); // 100 * 0.3
    });

    test('Converts from other currency to KWD', () {
      // Mock rates
      final rates = [
        CurrencyModel(countryCode: 'USD', value: 0.3),
        CurrencyModel(countryCode: 'EUR', value: 0.28),
      ];

      when(mockCurrencyCubit.state).thenReturn(mockGlobalContext.context().read<CurrencyCubit>().testCurrency(rates));

      final result = currencyConversion.getAmountByFxRate(100, 'USD', 'KWD');
      expect(result, closeTo(333.33, 0.01)); // 100 / 0.3
    });

    test('Converts between two non-KWD currencies', () {
      // Mock rates
      final rates = [
        CurrencyModel(countryCode: 'USD', value: 0.3),
        CurrencyModel(countryCode: 'EUR', value: 0.28),
      ];

      when(mockCurrencyCubit.state).thenReturn(mockGlobalContext.context().read<CurrencyCubit>().testCurrency(rates));

      final result = currencyConversion.getAmountByFxRate(100, 'USD', 'EUR');
      expect(result, closeTo(93.33, 0.01)); // 100 * (0.28 / 0.3)
    });

    test('Handles missing rates gracefully', () {
      // Mock rates
      final rates = [
        CurrencyModel(countryCode: 'USD', value: 0.3),
      ];

      when(mockCurrencyCubit.state).thenReturn(mockGlobalContext.context().read<CurrencyCubit>().testCurrency(rates));

      final result = currencyConversion.getAmountByFxRate(100, 'USD', 'ABC');
      expect(result, 0);
    });

    test('Truncates to correct decimal places', () {
      // Mock rates
      final rates = [
        CurrencyModel(countryCode: 'USD', value: 0.3),
        CurrencyModel(countryCode: 'EUR', value: 0.28),
      ];

      when(mockCurrencyCubit.state).thenReturn(mockGlobalContext.context().read<CurrencyCubit>().testCurrency(rates));

      final result = currencyConversion.getAmountByFxRate(100, 'USD', 'EUR');
      expect(result, closeTo(93.33, 0.01)); // 100 * (0.28 / 0.3)
    });
  });
}
