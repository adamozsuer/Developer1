import { LightningElement } from 'lwc';

export default class Lwc5 extends LightningElement {

weight;
height;
result;
calculation;
handleInputChange1(event){

    this.weight = event.target.value;


}

handleInputChange2(event){

    this.height = event.target.value;


}

handleButtonClick(){

    this.calculation = this.weight / ((this.height)*(this.height)); // For Usa add *703

    if(this.calculation < 19){
        this.result="You are Underweight";

    }else if(this.calculation >= 19 && this.calculation < 25){
        this.result="You have a Healthy weight";

    }else if(this.calculation >= 25 && this.calculation < 30){

        this.result="Sad you are Overweight";

    }else{

        this.result="Please visit your physician, you have anObesity";
    }
}

/*
Pounds and inches	
Formula: weight (lb) / [height (in)]2 x 703

Kilograms and meters (or centimeters)	
Formula: weight (kg) / [height (m)]2
*/


/*
BMI	Weight Status
Below 18.5	Underweight
18.5 – 24.9	Healthy Weight
25.0 – 29.9	Overweight
30.0 and Above	Obesity
*/
}