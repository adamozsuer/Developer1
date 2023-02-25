import { LightningElement, api } from 'lwc';


export default class Lwc13 extends LightningElement {

    @api richtext = '<h2>Default <s>Value</s></h2>';

    handleChange(e) {
        this.richtext = e.detail.value;
    }

}