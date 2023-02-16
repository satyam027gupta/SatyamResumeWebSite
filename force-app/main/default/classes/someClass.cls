public class someClass {

    public static void updateOpp(List<Opportunity> oppList){
        List<Contract> conList = new List<Contract>();
       List<Opportunity> oppL = new List<Opportunity>();
        
            Contract con = new Contract(AccountId = oppList[0].AccountId);
            insert con;
            oppList[0].ContractId = con.id;
            upd(con.Id,oppList[0]);
			              
    }
    
    public static void upd(Id id, Opportunity opp){
        opp.ContractId = id;
        update opp;
    }
}