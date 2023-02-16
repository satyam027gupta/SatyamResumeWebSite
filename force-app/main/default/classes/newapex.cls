public class newapex {
    
    public static void fun(){
        String st = 'ABC;ABx;ABB;ABCC';
        System.debug('some debug'+st.split(';').contains('AB'));
        Case cs = new Case();
        System.debug('case '+ case.SObjectType.getDescribe().getRecordTypeInfos());
		List<Account> acclist = [Select id from Account limit 10];
        Set<Id> ids = new Set<Id>();
        for(Account acc :acclist){
            ids.add(acc.id);
        }
        List<Contact> conmap = [Select name from Contact where AccountId In :ids];
            System.debug('cons '+conmap);
        
    }
}