@isTest
public with sharing class MedianOfTwoSortedArrayTest {
    @isTest
    static void testMedian(){
        Integer [] nums1 = new List<Integer>{1,3}; 
        
        Integer [] nums2 = new List<Integer>{2};

        Integer result = MedianOfTwoSortedArray.medianMethod(nums1, nums2);
        system.assertEquals(2, result, 'The Median should be 2');
    }
}