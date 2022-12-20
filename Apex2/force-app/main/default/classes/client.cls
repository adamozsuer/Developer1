public with sharing class client {
   
    Public string name = 'David';
    Public Integer age = 30;

    public void clientDataMethod(){

        String ageToText = String.valueOf(age);
        system.debug('The name of the client is ' + name + ' and the age is ' + ageToText);


    }

}
