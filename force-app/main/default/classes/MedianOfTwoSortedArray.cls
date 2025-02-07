public with sharing class MedianOfTwoSortedArray {
    public static Integer medianMethod(List<Integer> nums1, List<Integer> nums2){
        Integer answer = 0;
        if(nums1.isEmpty() && nums2.isEmpty()){
            return answer;
        }

        List<Integer> totalNumbers = new List<Integer>();
        totalNumbers.addAll(nums1);
        totalNumbers.addAll(nums2);

        totalNumbers.sort();

        if(Math.mod(totalNumbers.size(), 2) == 0){
            Integer middle = totalNumbers.size() /2;
            answer = Integer.valueOf((totalNumbers[middle - 1] + totalNumbers[middle])/2);
        }else{
            integer index = totalNumbers.size() /2;
            answer = totalNumbers[index];
        }

        return answer;
    }
}