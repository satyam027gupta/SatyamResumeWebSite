public with sharing class APIHandler {
    public APIHandler() {

    }
    @AuraEnabled(cacheable =true)
    public static String getAnimals(){
        try {
            Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setMethod('GET');
        request.setEndPoint('https://th-apex-http-callout.herokuapp.com/animals');
        HttpResponse response = http.send(request);
        if(response.getStatusCode() == 200){
            return response.getBody();
        }
        else {
            return response.getBody();
        }
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
        
    }
}