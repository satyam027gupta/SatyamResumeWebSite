import { LightningElement } from 'lwc';
import DOI from '@salesforce/resourceUrl/DOI';

export default class DocumentUploadComponent extends LightningElement {
    DOILink;
    onclickb(){
        console.log('sasa '+ DOI)
        this.DOILink = window.location.origin + DOI;
        //window.open(DOI);
    }
}