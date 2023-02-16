trigger CPF on ContactPF__e (after insert) {

    List<Contact> cl = new List<Contact>();
    for(ContactPF__e cf : Trigger.new){
    Contact cc = new Contact(LastName=cf.Lname__c);
    cl.add(cc);
    }
    insert cl;
}