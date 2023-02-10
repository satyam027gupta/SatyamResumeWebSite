import { LightningElement, api } from 'lwc';
//import PHOTO from '@salesforce/resourceUrl/SatyamPhoto';
//import * as RESUME_DATA from './staticDat'

export default class MyWebCompABC extends LightningElement {
   counter=0;
    //Music_file = RESUME_DATA.SOCIAL_LINKS
    
    actionclick(){
        // setInterval(() => {
        //     this.counter= this.counter + 1;
        // }, 10);
        while(true){
            console.log(this.counter);
            // this.counter= this.counter + 1;
        }
        
    }
    
}