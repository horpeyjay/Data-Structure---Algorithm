public with sharing class LongestRepeatingSubstring {
    public static Integer getSubstring(String word){
        /**
         * Given a string s, find the length of the longest substring without repeating characters.
         */

        Map<String, Integer> charMap = new Map<String, Integer>();
        Integer maxLenght = 0;
        Integer start = 0;

        for(Integer i = 0; i < word.length(); i++){
            String currentCharacter = word.substring(i, i + 1);
            if(charMap.containsKey(currentCharacter) && charMap.get(currentCharacter) >= start){
                start = charMap.get(currentCharacter) + 1;
            }
            charMap.put(currentCharacter, i);
            maxLenght = Math.max(maxLenght, i - start + 1);
        }

        return maxLenght;
    }

    
}