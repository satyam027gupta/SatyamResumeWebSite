trigger contactTrigger on Contact (before insert) {
	
        Set<Id> acId = new Set<Id>();

        for(Contact con : Trigger.new){
           
            acId.add(con.AccountId);
            
        }
    
    List<Contact> colorCon = new List<Contact>();
    List<Account> ls = [Select id, (Select id, color__c,AccountId from Contacts) from Account where ID in : acId];
    for(Account ac: ls){
        colorCon.addAll(ac.Contacts);
        
    }
    Map<Id,List<String>> mpc = new Map<Id,List<String>>();
    for(Contact c : colorCon){
        if(mpc.containsKey(c.AccountId)){
            List<String> l = mpc.get(c.AccountId);
            l.add(c.Color__c);
            mpc.put(c.AccountId,l);
        }
        else{
            List<String> l = new List<String>();
            l.add(c.Color__c);
            mpc.put(c.AccountId,l);
        }
        
    }
    
    for(Contact con : Trigger.new){
        System.debug('smms '+mpc);
        if((mpc.get(con.AccountId)).contains(con.Color__c))
            con.addError('Error');
    }
    
    
    /*for(Account acc: ls){
        List<String> cls = new List<String>();
        for(Contact c : acc.Contacts){
            if(cls.contains(c.Color__c)){
                c.addError('Duplicate');
            }else{
                cls.add(c.Color__c);
            }
        }
        System.debug('Map ' + cls);
    }*/
}