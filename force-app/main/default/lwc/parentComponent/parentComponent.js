import { LightningElement,api } from 'lwc';
import IMGR from '@salesforce/resourceUrl/ImageRes';
import IMGR1 from '@salesforce/resourceUrl/ImageOne';
//import pf from '@salesforce/schema/User/Id';
//import ufn from '@salesforce/schema/User/ProfileId';


export default class ParentComponent extends LightningElement {

    @api imgSource;
   xx;
connectedCallback(){
    this.imgSource = IMGR;
    console.log('source '+this.imgSource)
    //console.log('pf  '+ pf  );
    
}
    handlClick(){
        this.imgSource = IMGR1;
        //alert('Clciked on Button');
       
    }

    handleChildCall(event){
        console.log('Child '+event);
    }
    handleMsgVal(event){
        this.xx =event.detail;
        console.log('message'+this.xx);
    }
}