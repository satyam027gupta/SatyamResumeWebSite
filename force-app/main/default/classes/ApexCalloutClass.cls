public class ApexCalloutClass {

    @future(callout=true)
    public static void getContact(){
        Http http = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://mylwcdemo1-dev-ed.salesforce.com/services/apexrest/Account/');
        req.setMethod('GET');
        System.debug('response se pehle');
        HttpResponse res = http.send(req);
        system.debug('Response'+res);
        //return res;
    }
}