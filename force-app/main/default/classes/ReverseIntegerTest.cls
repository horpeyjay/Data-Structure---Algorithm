@isTest
public with sharing class ReverseIntegerTest {
    @isTest
    static void testReverseString(){
        Integer result1 = ReverseInteger.reverseIntegerMethod(123);
        System.assertEquals(321, result1, 'Something went wrong');

        Integer result2 = ReverseInteger.reverseIntegerMethod(-321);
        system.assertEquals(-123, result2, 'Negative number test failed');

        Integer result3 = ReverseInteger.reverseIntegerMethod(120);
        system.assertEquals(21, result3, 'zero ending the number should be truncated');
    }
}