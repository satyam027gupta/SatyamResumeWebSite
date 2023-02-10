import { LightningElement, api } from 'lwc';
import PHOTO from '@Salesforce/resourceUrl/SatyamPhoto';

export default class ResumeHeader extends LightningElement {
    @api imgs = PHOTO;

}