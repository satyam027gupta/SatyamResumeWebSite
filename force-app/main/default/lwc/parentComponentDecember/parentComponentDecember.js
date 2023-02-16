import { LightningElement } from 'lwc';

export default class ParentComponentDecember extends LightningElement {

    nameValue;

    connectedCallback(){
        console.log('ConnectedCall')
        this.nameValue ='Connected Call Back';
    }

    renderedCallback(){
        console.log('renderdcall ')
    }

    handleNameChange(event){
        console.log(event.detail.value);
        this.nameValue = event.detail.value;
    }
}