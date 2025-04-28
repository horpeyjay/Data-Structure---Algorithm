public with sharing class PalindromeNumber {
    public static Boolean isPalindromeNumber(Integer num){

        if(num < 0 || num == null){
            return false;
        }

        String strNumber = String.valueOf(num);
        String reverseNumber = strNumber.reverse();
        return (num == Integer.valueOf(reverseNumber));
    }
}