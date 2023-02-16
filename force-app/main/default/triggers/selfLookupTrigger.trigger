trigger selfLookupTrigger on Contact (before insert, after insert, after update, after delete) {
    Set<Id> idSet = new Set<Id>();
    List<Contact> lscon =  new List<Contact>();
    if(Trigger.isAfter && (Trigger.isInsert || Trigger.isUpdate || Trigger.isDelete)){
        for(Contact con: Trigger.new){
            idSet.add(con.SelfContact__c);
        }
        for(Contact cons : [Select id, (Select id from Contacts__r) from Contact where Id in:idSet]){
            System.debug('Contact list'+'2');
            cons.No_of_Childs__c = cons.Contacts__r.size();
            lscon.add(cons);
        }
        update lscon;
    }
    
}