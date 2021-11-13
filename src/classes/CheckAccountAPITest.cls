@isTest
public class CheckAccountAPITest {
    
    @isTest
    static public void testGetAccounts() {
        
        Test.startTest();
        List<Account> lst = CheckAccountAPI.getAccounts();
        Test.stopTest();
        
        Integer numOfRecs = lst.size();
        List<Account> lst2 = [select Name from Account];
        Integer numOfRecs2 = lst.size();
        System.assert(numOfRecs2 == numOfRecs);       
    }

}