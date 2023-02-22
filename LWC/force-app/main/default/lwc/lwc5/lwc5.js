import { LightningElement } from 'lwc';

export default class Lwc5 extends LightningElement {

weight;
height;
result;
handleInputChange1(event){

    this.weight = event.target.value;


}

handleInputChange2(event){

    this.height = event.target.value;


}

handleButtonClick(){

    alert("JS Functions work well");
}



}