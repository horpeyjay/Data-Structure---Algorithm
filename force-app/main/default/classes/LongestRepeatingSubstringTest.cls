@isTest
public with sharing class LongestRepeatingSubstringTest {
    @isTest
    static void testSubstring() {
        Integer result1 = LongestRepeatingSubstring.getSubstring('abcabcbc');
        system.assertEquals(3, result1, 'You should get 3 as the result because the longest substring is abc');
        Integer testResult2 = LongestRepeatingSubstring.getSubstring('bbbbb');
        System.assertEquals(1, testResult2, 'The longest substring is b');
        Integer testResult3 = LongestRepeatingSubstring.getSubstring('pwwkew');
        System.assertEquals(3, testResult3, 'The longest substring here is wke which is 3 in lenght');
    }
}