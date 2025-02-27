public with sharing class LongestPalindromString {
    public static String myStringMethod(String s){
        if(s.length() < 2){
            return s;
        }
        Boolean answer;
        String result = '';
        Integer start = 0;
        Integer maxLenght = 0;
        for(Integer i = 0; i < s.length(); i++){   
            for(Integer j = i + 1; j < s.length(); j++){
                answer = isPalindrome(s.substring(i, j));
                if(answer){
                    if(j - i > maxLenght){
                        start = i;
                        maxLenght = j - i;
                    }
                }
            }
        }

        return s.substring(start, start + maxLenght);
    }

    private static Boolean isPalindrome(String s){
        string charArray = s.reverse();
        Boolean isPaliTrue;
        if(s == charArray){
            isPaliTrue = true;
        }else{
            isPaliTrue = false;
        }

        return isPaliTrue;
    }
}