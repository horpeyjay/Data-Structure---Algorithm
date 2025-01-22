public with sharing class TwoSums {
    public static List<Integer> twoSum(List<Integer> nums, Integer target){
        /**
         * Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

        You may assume that each input would have exactly one solution, and you may not use the same element twice.

        You can return the answer in any order.
         */
        List<Integer> result = new List<Integer>();
        if(!nums.isEmpty()){
            for(Integer i = 0; i < nums.size(); i++){
                for(Integer j = i+1; j < nums.size(); j++){
                    if(nums[i] + nums[j] == target){
                        result.add(i);
                        result.add(j);
                        break;
                    }
                }
            }
        }
        return result;
    }
}