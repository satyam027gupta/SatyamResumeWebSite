trigger someTrigger on Opportunity (after insert, after update) {
    List<Opportunity> oppList = [Select id,StageName,name,AccountId from opportunity where Id In :trigger.Old];
    
    List<Opportunity> oppto = new List<Opportunity>();
    for(Opportunity opp : oppList){
        if(opp.StageName =='Closed Won'){
   
            oppTo.add(opp);
        }
        
    }
    if(oppTo!=null && oppTo.size()>0){
       // insert contactList;
       someClass.updateOpp(oppTo);
       
    }
    
    
}