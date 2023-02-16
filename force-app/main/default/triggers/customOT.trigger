trigger customOT on customO__c (after insert) {
    if(Trigger.isAfter){
        System.debug('HII');
    }
}