@RestResource(urlMapping='/CheckAccountAPI')
global class CheckAccountAPI {
    
    @HttpGet
    global static List<Account> getAccounts() {
        List<Account> lst;
        
        try {
            lst = [select name, phone from Account];
            return lst;
        } catch (Exception ex) {
            system.debug('Error: '+ex.getMessage());
        }
        
        return lst;
    }

}