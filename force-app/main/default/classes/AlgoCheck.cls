public class AlgoCheck {
    public static void fun(){
        List<Integer> li = new List<Integer>();
        li.add(1);    
        li.add(3);   li.add(2);   li.add(1);   li.add(2);   li.add(2);   li.add(4);   
        Map<Integer,Integer> mp = new Map<Integer,Integer>();
        for(Integer i : li){
            if(mp.keySet().contains(i) ){
                mp.put(i,(mp.get(i) + 1));
            }else{
                mp.put(i,1);
            }
        }
        System.debug('Map '+mp);
    }
}