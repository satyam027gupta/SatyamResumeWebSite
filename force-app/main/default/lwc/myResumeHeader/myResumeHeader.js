import { LightningElement,api } from 'lwc';

export default class MyResumeHeader extends LightningElement {
    @api resumeData;
    @api photo;
    @api socialData;
    @api badgePic;
    name;
    connectedCallback(){
        console.log('some data '+ this.resumeData.name);
        this.name=this.resumeData.name;
    }
    get maillink(){
        return `mailto:${this.resumeData.email}`
    }
    get phoneclass(){
        return 'fas>&#xf87b';
    }
    get phonelink(){
        return `tel:${this.resumeData.contact_No}`
    }
}