import { LightningElement,api } from 'lwc';
import * as ResumeData from './ContainerData';
import { NavigationMixin } from 'lightning/navigation';

export default class MyResumeContainer extends NavigationMixin(LightningElement) {

     userDetails = ResumeData.user_details;
    //resumeDatadetails = ResumeData;
     ProfilePHOTO = ResumeData.PROFILE_IMAGE;
     SocialData = ResumeData.SOCIAL_LINKS;
     BADGE_PIC = ResumeData.Badege_Pic;
    // @api name = ResumeData.user_details.name;
    // @api role = ResumeData.user_details.role;
    // @api phone = ResumeData.user_details.contact_No;
    // @api email = ResumeData.user_details.email;
    connectedCallback(){
        console.log('User Data 1' + ResumeData.SOCIAL_LINKS[0].label);
        //console.log('User Data '+ this.resumeDatadetails);
   
          

    }
    handleClick(){
        console.log('Inside hh')
        this[NavigationMixin.Navigate]({
            type: 'comm__namedPage',
            attributes: {
                pageName: 'FielUplodPage'
            }
        });
        console.log('Inside gg')
    }

}