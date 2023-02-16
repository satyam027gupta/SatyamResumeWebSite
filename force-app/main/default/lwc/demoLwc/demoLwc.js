import { LightningElement } from 'lwc';
import CallOut_Fun from '@salesforce/apex/APICallOutClass.APIFunc';

export default class DemoLwc extends LightningElement {
    connectedCallback(){
        console.log('inside connected call back')
        this.func('ss')
        console.log('after fun call')
    };
    data=[];

    func(sx){
        let randomValue = { name: "Lydia" }
        randomValue = 23
        console.log(typeof randomValue)
        console.log(!typeof randomValue)
            if (!typeof randomValue === "string") {
            console.log("It's not a string!")
            } else {
            console.log("Yay it's a string!")
            }
        }
        handleClick(evt){
            CallOut_Fun()
            .then(result=>{
                this.data=result;
            })
            .catch(error=>{
                this.error=error;
            })

            console.log('vst = '+this.data );
            
        }
}