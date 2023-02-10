import { LightningElement, api } from 'lwc';
import APICLASS  from '@salesforce/apex/APIHandler.getAnimals';



export default class resumeBody extends LightningElement {
    data=[];
    handleApi(event){
            APICLASS()
                .then(result => {
                    console.log('Result '+result);
                    this.data =JSON.parse(result) ;
                    console.log('data '+this.data.animals );
                })
                .catch(error => {
                    console.log('error '+error);
                });
            
                
            
        

    }
}