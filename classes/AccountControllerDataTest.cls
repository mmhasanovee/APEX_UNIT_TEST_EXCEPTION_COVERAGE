@isTest
public with sharing class AccountControllerDataTest {
    @isTest static void testAc() {
    Account acWithoutName = new Account();

    try {
        AccountControllerData.acInsert(acWithoutName);
    } catch (Exception e) {
        System.debug('Error is: '+e.getMessage());
    }

    System.assert(acWithoutName.Id == null,'Id should be null');
  }
}
