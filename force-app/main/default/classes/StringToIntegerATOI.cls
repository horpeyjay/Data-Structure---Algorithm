public with sharing class StringToIntegerATOI {
    public static Integer atoiMethod(String words){
        Integer result;
        String currentNumberString = '';
        String wordsTrimmed = words.trim();
        if(!String.isEmpty(wordsTrimmed)){
            for(Integer i = 0; i < wordsTrimmed.length(); i++){
                String currentChar = wordsTrimmed.substring(i, i+1);
                
                if(currentChar == '-'){
                    currentNumberString += currentChar;
                }
                else if(currentChar.isNumeric()){
                    currentNumberString += currentChar;
                }else{
                    break;
                }
            }
        }

        result = Integer.valueOf(currentNumberString);
        return result;
    }
}