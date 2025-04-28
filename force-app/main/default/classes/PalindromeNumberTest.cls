@isTest 
public with sharing class PalindromeNumberTest {
    @isTest 
    static void testPalindrome(){
        Integer num1 = 121;
        Integer num2 = -121;
        Integer num3 = 10;

        Boolean result1, result2, result3;
        // result1 = PalindromeNumber.isPalindromeNumber(num1);
        // result2 = PalindromeNumber.isPalindromeNumber(num2);
        // result3 = PalindromeNumber.isPalindromeNumber(num3);
        result1 = PalindromeNumber.withoutString(num1);
        result2 = PalindromeNumber.withoutString(num2);
        result3 = PalindromeNumber.withoutString(num3);
        System.assertEquals(true, result1, '121 should be a palindrome');
        System.assertEquals(false, result2, '-121 should not be a palindrome');
        System.assertEquals(false, result3, '10 should not be a palindrome');

    }
}