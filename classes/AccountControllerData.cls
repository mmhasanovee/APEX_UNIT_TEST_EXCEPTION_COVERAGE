
public with sharing class AccountControllerData {
    public static void acInsert(Account ac){

        try{
            insert ac;
        }
        catch(Exception e){
            //for checking whether the line is executed or not
            String justToCheckWhetherTheExceptionIsHandled = 'Exception handled';
        }
    }
}

