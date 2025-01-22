@isTest
public with sharing class TwoSumTest {
    @isTest 
    static void TwoSumTest() {
        List<Integer> nums = new List<Integer>{2, 7, 11, 15};
        Integer target = 9;
        List<Integer> result = TwoSums.twoSum(nums, target);
        System.assertEquals(2, result.size(), 'The size of the result should be 2');
        System.assertEquals(0, result[0], 'The first element should be 2');
        System.assertEquals(1, result[1], 'The second element should be 7');

        List<Integer> nums2 = new List<Integer>{3,2,4};
        Integer target2 = 6;
        List<Integer> result2 = TwoSums.twoSum(nums2, target2);
        System.assertEquals(1, result2[0], 'The first element should be 2');
        System.assertEquals(2, result2[1], 'The second element should be 4');

        List<Integer> nums3 = new List<Integer>{3,3};
        Integer target3 = 6;
        List<Integer> result3 = TwoSums.twoSum(nums3, target3);
        System.assertEquals(0, result3[0], 'The first element should be 3');
        System.assertEquals(1, result3[1], 'The second element should be 3');
    }
}