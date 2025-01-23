public with sharing class Add2NumbersList {
    public static Integer addNumbers (List<Integer> nums1, List<Integer> nums2){
        Integer sum = 0;
        if(!nums1.isEmpty() && !nums2.isEmpty()){
            String StrNumber1 = convertNumbersToString(nums1);
            String StrNumber2 = convertNumbersToString(nums2);

            sum = Integer.valueOf(StrNumber1) + Integer.valueOf(StrNumber2);
        }
        return sum;
    }

    public static String convertNumbersToString(List<Integer> nums){
        String result = '';
        for(Integer i = nums.size() - 1; i >= 0; i--){
            result += String.valueOf(nums[i]);
        }
        return result;
    }

    public static List<Integer> addTwoNumbersList(List<Integer> nums1, List<Integer> nums2){
        Integer sum = addNumbers(nums1, nums2);
        String sumStr = String.valueOf(sum);
        List<Integer> result = new List<Integer>();
        for(Integer i = 0; i < sumStr.length(); i++){
            result.add(Integer.valueOf(sumStr.substring(i, i+1)));
        }
        return result;
    }
}