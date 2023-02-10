import { LightningElement } from 'lwc';

export default class DocumentScroll extends LightningElement {
    openM = false;

    handlesc(e){
        const el = this.template.querySelector('[data-id="modal-content-id-2"]');
        //const el = this.template.querySelector('[data-id="frame"]');
        console.log('Hello')
        console.log('Sum'+ (el.scrollTop + el.clientHeight))
        
    

        console.log('scroll hight' + el.scrollHeight )

        console.log('clientHeight' + el.clientHeight)

        console.log('scroll Top' + el.scrollTop  )
        console.log('Content Scrolling' + el.scrolling  )
        // console.log('Content Document' + el.contentDocument  )
        // console.log('Content Window' + el.contentWindow  )
        // console.log('Content Window Inner height' + el.contentWindow.innerHeight  )
        // console.log('Content Window ScrollX' + el.contentWindow.scrollX )
         if ((el.scrollTop + el.clientHeight) > (el.scrollHeight - 30)) {
            alert('Han ji')
            }

        // iframe.contentDocument.addEventListener('scroll', function(event) {
        //     console.log(event);
        //   }, false);

        el.contentDocument.addEventListener('scroll', function(event) {
                console.log('inside event listner ',event);
                
              }, false);

    }

    renderedCallback(){
        //debugger;
        const el1 = this.template.querySelector('[data-id="modal-content-id-2"]');
        console.log('Hi',el1)
        const el = this.template.querySelector('[data-id="frame"]');

        this.iframePdfLink ='https://www.questtrustcompany.com/documents/5305-hsa.pdf#zoom=100&toolbar=0&navpanes=0&scrollbar=0';
        //console.log('sdcs',el.contentDocument)
        // console.log('sdcs',el.height)
        // console.log('sdcs',el.scrollHeight)
        // // el.contentDocument.addEventListener('scroll', function(event) {
        // //     console.log(event);
        // //   }, false);
        // console.log((el.scrollTop + el.clientHeight))
        // console.log(el.scrollHeight - 20)

        // if ((el.scrollTop + el.clientHeight) < (el.scrollHeight - 20)) {
            
        // }
        console.log('Const ')
    }
    openModal(){
        this.openM=true;
    }

    hideModalBox(){
        this.openM=false;
    }
   
}