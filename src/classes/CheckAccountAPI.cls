@RestResource(urlMapping='/CheckAccountAPI')
global class CheckAccountAPI {
    
    @HttpGet
    global static List<Account> getAccounts() {
        List<Account> lst;
        
        lst = [select name, phone from Account];
        return lst;
    }

}