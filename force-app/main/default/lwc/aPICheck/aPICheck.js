import { LightningElement, api, wire } from 'lwc';
import { getRecord } from 'lightning/uiRecordApi';
const FIELD_LIST = ['Opportunity.Name'];
export default class APICheck extends LightningElement {

    @api recordId;
    data;
    @wire
    (getRecord, { recordId: '$recordId', fields : FIELD_LIST}
    )
    recordData;
    funct(){
        console.log('somedata 99 '+JSON.stringify(this.recordData));
        this.data = this.recordData.data;
        console.log('name '+ this.data.fields.Name.value);
    }

}