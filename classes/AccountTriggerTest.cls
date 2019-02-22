@isTest
public class AccountTriggerTest {
@istest static void GenerateAccounts (){    
	List<Account> accts = new List<Account>();
	for (Integer a = 0; a <200; a++) {
  		accts.add(new Account(Name = 'Test ' + a,BillingState = 'CA',ShippingState = 'NY'));
	}
      
    Test.startTest();
    insert accts;     
    Test.stopTest();
    
    for (Account a:Accts){
        System.debug('a.ShippingState ' + a.ShippingState);
    	System.assertEquals('CA', a.ShippingState, 'ERROR');
    	}
    }
}