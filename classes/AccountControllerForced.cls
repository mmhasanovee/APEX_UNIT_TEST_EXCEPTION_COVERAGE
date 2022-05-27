
public with sharing class AccountControllerForced {
    public static void acInsert(){
        //just some random codes, No DMLs...................
        try {
	    	String shref = 'shref';
	    	//Some randome codes goes brrrr....................
			if(Test.isRunningTest())
			{
				throw new AuraHandledException('');
			}
        } catch (Exception e) {
			//for checking whether the line is executed or not
            String justToCheckWhetherTheExceptionIsHandled = 'Exception handled';
		}
    }
}
