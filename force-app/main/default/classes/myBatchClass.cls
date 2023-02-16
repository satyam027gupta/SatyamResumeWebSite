public class myBatchClass implements Database.Batchable<sObject>, Database.Stateful {
    public  Database.QueryLocator start(Database.BatchableContext ctx){
        return Database.getQueryLocator('Select id, name, Rating from Account');
         
    }
    public  void execute (Database.BatchableContext ctx, List<Account> lst){
        for(Account acc : lst){
            acc.Active__c = 'Yes';
        }
        update lst;
        
    }
    public  void finish(Database.BatchableContext bc){
        //EmailUtils.sendMessage('','');
        System.debug('debug '+[SELECT Id, Status, NumberOfErrors,
            JobItemsProcessed,
            TotalJobItems, CreatedBy.Email
            FROM AsyncApexJob
            WHERE Id = :bc.getJobId()]);
    }
    
}