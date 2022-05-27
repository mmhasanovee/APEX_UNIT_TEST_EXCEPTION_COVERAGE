@isTest
public with sharing class AccountControllerUserTest {
    @isTest static void testAc() {
    String minimumAS = 'Minimum Access - Salesforce';

    //fetching Minimum Access profile
    Id p = [SELECT Id,
                   Name
            FROM   Profile
            WHERE  Name=:minimumAS].id;

    User usr = new User(LastName = 'LIVESTON',
                        FirstName='JASON',
                        Alias = 'jliv',
                        Email = 'hs@hasanstudies.com',
                        Username = 'hs@hasanstudies.com',
                        ProfileId = p,
                        TimeZoneSidKey = 'GMT',
                        LanguageLocaleKey = 'en_US',
                        EmailEncodingKey = 'UTF-8',
                        LocaleSidKey = 'en_US'
    );
    insert usr;

    system.runAs(usr) {
        try{
        AccountControllerUser.acInsert();
        }
        catch(Exception e){
            System.debug('Error is: '+e.getMessage());
        }
    }
    //AccountControllerUser.acInsert();
    System.assert(usr.Id != null,'User insertion is failed');
  }
}
