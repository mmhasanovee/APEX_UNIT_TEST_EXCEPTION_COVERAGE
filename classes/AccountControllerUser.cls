public with sharing class AccountControllerUser {
    public static void acInsert(){
        Account ac = new Account();

        if(Schema.sObjectType.Account.fields.Name.isCreateable()) {
            ac.Name = 'Maria Account';
        }

        try{
            insert ac;
        }
        catch(Exception e){
            //for checking whether the line is executed or not
            String justToCheckWhetherTheExceptionIsHandled = 'Exception handled';
        }
    }
}
