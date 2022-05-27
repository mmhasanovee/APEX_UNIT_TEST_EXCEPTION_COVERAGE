@isTest
public with sharing class AccountControllerDataTest {
    @isTest static void testAc() {
    Account acWithoutName = new Account();

    try {
        //not providing the required field 'Name', hehe
        AccountControllerData.acInsert(acWithoutName);
    } catch (Exception e) {
        System.debug('Error is: '+e.getMessage());
    }

    System.assert(acWithoutName.Id == null,'Id should be null');
  }
}
