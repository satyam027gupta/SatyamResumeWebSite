public class OppDelete1 {

    public static void deleteRecords(){
        Map<String, String> mps = new Map<String, String>();
        for(AggregateResult[] op : [select count(id), name from opportunity group by name having count(id)>1 ]){
            for(AggregateResult ag :op){
                mps.put(  String.valueOf(ag.get('name')), String.valueOf(ag.get('expr0')) );
                System.debug('Rec ' + ag);
            }
            
            System.debug('Rec 4'+ mps);
        }
        List<Opportunity> deleteId = new List<Opportunity>();
        Set<String> nameSet = new Set<String>();
        for(Opportunity opp : [Select id,name from Opportunity where name In:mps.keySet()]){
            System.debug('NAme ' + opp.name + '  Id ' + opp.Id);
            if(!nameSet.contains(opp.name)){
                nameSet.add(opp.name);
            }else{
                deleteId.add(opp);
            }
        }
        
        System.debug('delete set' + deleteID);
        
        delete deleteID;
    }
   
}