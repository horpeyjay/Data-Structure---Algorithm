@isTest
public with sharing class Add2NumbersListTest {
    @isTest
    static void testAddNumbers() {
        List<Integer> numberList = new List<Integer>{2, 4, 3};
        List<Integer> numberList1 = new List<Integer>{5, 6, 4};

        Integer result = Add2NumbersList.addNumbers(numberList1, numberList);
        List<Integer> resultList = Add2NumbersList.addTwoNumbersList(numberList, numberList1);
        System.assertEquals(result, 807, 'Expected result is 807');
        system.assertEquals(new List<Integer>{8, 0, 7}, resultList, 'Expected result is 8, 0, 7');

        List<Integer> numberList2 = new List<Integer>{0};
        List<Integer> numberList3 = new List<Integer>{0};

        Integer result1 = Add2NumbersList.addNumbers(numberList2, numberList3);
        List<Integer> resultList1 = Add2NumbersList.addTwoNumbersList(numberList2, numberList3);
        System.assertEquals(result1, 0, 'Expected result is 0');
        system.assertEquals(new List<Integer>{0}, resultList1, 'Expected result is 0');

    
        List<Integer> L1 = new List<Integer>{9,9,9,9,9,9,9}; 
        List<Integer>l2 = new List<Integer>{9,9,9,9};

        Integer finalResult = Add2NumbersList.addNumbers(L1, l2);
        List<Integer> finalResultList = Add2NumbersList.addTwoNumbersList(L1, l2);
        System.assertEquals(finalResult, 10009998, 'Expected result is 10009998');
        system.assertEquals(new List<Integer>{1,0,0,0,9,9,9,8}, finalResultList, 'Expected result is 1,0,0,0,9,9,9,8');
    }
}