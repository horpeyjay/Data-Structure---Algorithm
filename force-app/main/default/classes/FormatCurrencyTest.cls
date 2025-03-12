@isTest
public with sharing class FormatCurrencyTest {
    @isTest 
    static void formatCurrencyTestMethod(){
        // scenarios 1
        Decimal amount1 = 10.5;
        String result1 = FormatCurrency.formatCurrencyDecimal(amount1);
        system.assertEquals('$10.50', result1, 'Something went wrong. Ensure you get $10.50');

        String result2 = FormatCurrency.formatCurrencyDecimal(1234.56);
        system.assertEquals('$1,234.56', result2, 'Ensure that the result is $1,234.56 round up to decimal place');

        //test for negative number
        string result3 = FormatCurrency.formatCurrencyDecimal(-234.5);
        System.assertEquals('-$234.50', result3, 'Somethinng went wrong');

        //testing for 0
        String result4 = FormatCurrency.formatCurrencyDecimal(0);
        System.assertEquals('$0.00', result4, 'Something went wrong');
    }
}