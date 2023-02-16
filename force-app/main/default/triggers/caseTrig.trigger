trigger caseTrig on Case (before Update, after update) {
    if(Trigger.isBefore && Trigger.isUpdate){
        for(Case cse : Trigger.new){
            cse.Subject = cse.Status;
            cse.Description = 'This is some des';
            if(cse.ContactPhone.startsWith('22')){
                
            }
        }
    }
      
}