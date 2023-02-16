trigger someDummmyTrigger on Account (after update, before update, before insert, after insert) {
 sYSTEM.debug('dsvsd');
    //public Static Boolean b=false;
        if(trigger.isbefore && checkRecursion.run){
        System.debug('Before ');
        
    }
   
    
    if(trigger.isafter && checkRecursion.run){
        checkRecursion.runOnce();
        System.debug('After Trigger');
       if(trigger.isafter)
    {
        
        System.debug('After ');
        for(Account acc : Trigger.new){
            Account ac = new Account();
            ac.Id = acc.Id;
                ac.Rating = 'Warm';
                update ac;
        }
    }
    }
    
    
    
}