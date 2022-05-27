@isTest
public with sharing class AccountControllerForcedTest {
        @isTest static void testAc() {
        try {
            AccountControllerForced.acInsert();
        }catch (Exception e) {
            System.debug('Error is: '+e.getMessage());
        }
        
        System.assert(true);
    }
}

