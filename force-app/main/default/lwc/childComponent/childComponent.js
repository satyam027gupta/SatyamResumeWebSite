import { LightningElement,api } from 'lwc';

export default class ChildComponent extends LightningElement {
    // @api alertVal;
    @api msgValue='This is before message';
    connectedCallback(){
        const evt = new CustomEvent("msgvalueforparent",{
            detail :  this.msgValue
        }
           
        );
        this.dispatchEvent(
            evt
        );
    }

    handleChange(event){
        this.msgValue=event.target.value;
        console.log('Child log'+this.msgValue);
        const evt = new CustomEvent("msgvalueforparent",{
            detail :  this.msgValue
        });

        this.dispatchEvent(evt);
    }
    
}