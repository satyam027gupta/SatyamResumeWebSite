@istest
public class AnimalCalloutsTest {
	@isTest
    public static void testCallOut(){
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        mock.setStaticResource('GetAnimalResource');
        mock.setStatus('Success');
        mock.setStatusCode(200);
        
        Test.setMock(HttpCalloutMock.class, mock);
        
        Test.startTest();
        try{
            AnimalsCallouts.makeGetCallout();
            AnimalsCallouts.makePostCallout();
        }catch(Exception e){
            System.debug('Error'+e.getMessage());
        }
		
        Test.stopTest()    ;
    }
}