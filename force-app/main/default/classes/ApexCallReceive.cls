@RestResource(urlMapping='/Case/*')
global class ApexCallReceive {
	/*@HTTPGet
    global static List<Account> getAccountM(){
        List<Account> lsAcc = [Select name from Account limit 10];
        return lsAcc;
    }*/
    @HTTPPost
    global static List<Case> postCases(Map<String,String> statusOrigin){
        List<Case> csList = new List<Case>();
        for(String sta : statusOrigin.KeySet()){
            csList.add(
            	new Case(Origin=statusOrigin.get(sta), Status=sta)
            );
        }  
        try{
            insert csList;
        }catch(Exception e){
            
        }
        
        return null;
    }
}