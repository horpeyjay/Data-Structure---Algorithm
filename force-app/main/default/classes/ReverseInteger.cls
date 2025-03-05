public with sharing class ReverseInteger {
    public static Integer reverseIntegerMethod(Integer num){
        
        Integer absoluteNumber = Math.abs(num);
        String numToString = String.valueOf(absoluteNumber);
        String reverse = numToString.reverse();

        if(num < 0){
            String negative = '-';
            reverse = negative + reverse;
        }

        return Integer.valueOf(reverse);
    }
}