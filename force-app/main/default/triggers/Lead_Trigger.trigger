trigger Lead_Trigger on Lead (after insert,after update) {

    Set<Id> acId = new Set<Id>();
    if(Trigger.isInsert){
         for(Lead ld : Trigger.new){
        	if(ld.Opportunity__c != null){
           		acId.add(ld.Opportunity__c) ;
        	}
    	} 
    }
    if(Trigger.isUpdate){
        for(Lead ld : Trigger.new){
        	if(ld.Opportunity__c != Trigger.oldMap.get(ld.Id).Opportunity__c || ld.amount__c != Trigger.oldMap.get(ld.Id).amount__c ){
                if(ld.Opportunity__c !=null){
                    acId.add(ld.Opportunity__c) ;
                } 
                if(Trigger.oldMap.get(ld.Id).Opportunity__c !=null){
                    acId.add(Trigger.oldMap.get(ld.Id).Opportunity__c) ;
                } 
        	}
    	} 
    }
   
    
    Map<Id,Decimal> mp = new Map<Id,Decimal>();
    for(Lead l : [Select id, amount__c,Opportunity__c, Opportunity__r.Total_Amount__c from Lead where Opportunity__c In :acId]){
        if(mp.keyset().contains(l.Opportunity__c)){
            mp.put(l.Opportunity__c, ( mp.get(l.Opportunity__c) + l?.amount__c));
        }else{
            mp.put(l.Opportunity__c, l?.amount__c);
        }
    }
    List<Opportunity> opList = new List<Opportunity>();
    for(Id i : mp.keySet()){
        Opportunity op = new Opportunity();
        op.Id = i;
        op.Total_Amount__c = mp.get(i);
        
        opList.add(op);
    }
    
    update opList;
}