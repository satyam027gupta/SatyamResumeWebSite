import { LightningElement } from 'lwc';
export default class HelloWorld extends LightningElement {

  booleancheck=true;
 
  handleSomeClick(event){
      console.log('Welcome'+event);
      this.booleancheck =true;
    }
}