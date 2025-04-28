@isTest
public with sharing class StringToIntegerATOITest {
    @isTest 
    static void testATOIMethod(){
        String test1 = '42';
        String test2 = ' -42';
        String test3 = '1337c0d3';
        String test4 = ' -042';

        Integer result = StringToIntegerATOI.atoiMethod(test1);
        System.assertEquals(42, result, 'Expected 42');
        Integer result1 = StringToIntegerATOI.atoiMethod(test2);
        System.assertEquals(-42, result1, 'Expected -42');
        Integer result2 = StringToIntegerATOI.atoiMethod(test3);
        System.assertEquals(1337, result2, 'Expected 1337');
        Integer result3 = StringToIntegerATOI.atoiMethod(test4);
        System.assertEquals(-42, result3, 'Expected -42');
    }
}