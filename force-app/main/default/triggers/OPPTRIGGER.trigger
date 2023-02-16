trigger OPPTRIGGER on Opportunity (before insert, after insert, before update, after update) {
    if(Trigger.isInsert && Trigger.isBefore){
        Set<String> str = new Set<String>();
		List<Opportunity> opList = new List<Opportunity>();
        
        for(Opportunity op : Trigger.new)
            str.add(op.Name);
        
            for(Opportunity opp: [Select id, name from Opportunity where Name In:str]){
                System.debug('ad ' + opp);
                opList.add(opp);
            }
        
        delete opList;
    }
    
    if(Trigger.isInsert && Trigger.isAfter){
			contact con = new Contact(lastname='Hari');
        	con.Opportunity__c = Trigger.new[0].Id;
             system.debug('a I  new '+Trigger.new[0].stageName);
        	 system.debug('a I old '+Trigger.old);
    }
}