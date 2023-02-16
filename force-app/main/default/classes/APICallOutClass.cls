public with sharing class APICallOutClass {
    
    public APICallOutClass() {

    }
    @AuraEnabled(Cacheable=true) 
    public static List<Account> APIFunc(){
        List<Account> lst = [Select Id,Name FROM Account WITH SECURITY_ENFORCED limit 10];
        return lst;
    }
}