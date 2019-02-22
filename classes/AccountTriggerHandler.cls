public class AccountTriggerHandler {
    public static void CreateAccounts (list<Account> Accounts){
        for (Account a: Accounts){
                a.ShippingState = a.BillingState;
        }   
    }
}