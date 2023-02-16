@RestResource(urlMapping='/Account/*')
global class DummyCallReceive {


    @HttpGet
    global static List<Account> getRecord() {
        return [Select id, name, phone from Account ];
    }
	@HttpPost
    global static ID setRecord(String nam) {
        Account acc = new Account(Name=nam);
        insert acc;
        return acc.Id;
    }
    
    
}