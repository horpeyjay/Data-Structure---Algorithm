public with sharing class PalindromeNumber {
    public static Boolean isPalindromeNumber(Integer num){

        if(num < 0 || num == null){
            return false;
        }

        String strNumber = String.valueOf(num);
        String reverseNumber = strNumber.reverse();
        return (num == Integer.valueOf(reverseNumber));
    }

    public static Boolean withoutString(Integer num){
        if(num < 0 || Math.mod(num, 10) == 0 ) return false;

        Integer reversed = 0;
        Integer original = num;

        while (num > 0){
            Integer lastDigit = Math.mod(num, 10);
            reversed = reversed * 10 + lastDigit;
            num /= 10;
        }

        return (original == reversed);
    }
}