Public class customOA {

    
   public static Map<String,String> getObjects(){
        Map<String,String> objectMap = new Map<String,String>();
        for(Schema.SObjectType objTyp : Schema.getGlobalDescribe().Values()){
           String name = objTyp.getDescribe().getName();
           String label = objTyp.getDescribe().getLabel();
           if(!name.containsignorecase('history') && !name.containsignorecase('tag') &&
                !name.containsignorecase('share') && !name.containsignorecase('feed') && 
               	!name.containsignorecase('group') && !name.containsignorecase('public') &&
                !objTyp.getDescribe().isCustomSetting() && objTyp.getDescribe().isCreateable() &&
                objTyp.getDescribe().getRecordTypeInfos().size() > 0){      
                objectMap.put(name,label);
           }
        }
		System.debug(objectMap);
       System.debug('Obj   '+ Schema.getGlobalDescribe().Values());
        if(objectMap != null && objectMap.size() > 0){
        	return objectMap;   
        }else{
            return null;
        }
    }
    
    
}