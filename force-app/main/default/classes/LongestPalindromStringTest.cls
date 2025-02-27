@isTest
public with sharing class LongestPalindromStringTest {
    @isTest
    static void myPalindromTest(){
        String firstTest = 'babad';
        String secondTest = 'cbbd';

        String result1 = LongestPalindromString.myStringMethod(firstTest);
        system.assertEquals(result1, 'bab', 'Test 1 failed');

        String result2 = LongestPalindromString.myStringMethod(secondTest);
        system.assertEquals(result2, 'bb', 'Test 2 failed');
    }
}