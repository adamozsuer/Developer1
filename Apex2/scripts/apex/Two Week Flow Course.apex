Integer i=0;
Integer x=0;
while (i<100) {
    i++;
    if(i<8 && i>5){
         x++;
        System.debug('weekend');
        continue;
    }
    if(i==13){
        break;
    }
    System.debug((i-x)+'. Day of Flow Course Plan');
}

/*
@isTest
public class PrivateMethodClass_Test {

    @isTest static void privateMethod_Test(){
        
        PrivateMethodClass.privateMethod();
        
    }
    
}
 */

 /*
 
 // We need a discount calculator for the opportunity based on Account Rating, user will provide the opportunity Id 
public class DiscountCalculator {
    
    static Decimal calculateDiscount(Id oppId){
        
        //Query the Opportunities  and Account related to the Opportunities
        
        Opportunity opp = [SELECT Id, Amount, Account.Rating 
                           FROM Opportunity 
                           WHERE Id =: oppId];
        Decimal discount = 0;
        // Check the Account's rating and calculate the discount accordingly
        
        if(opp.Account.Rating == 'Hot'){
           discount = opp.Amount * 0.10;
            
            
        }Else if (opp.Account.Rating == 'Warm'){
        	discount = opp.Amount * 0.05;
            
        }Else {
        
            discount = 0;
        }
        return discount;
    }

}
  */

  /*
  
  // We need a discount calculator for the opportunity based on Account Rating, user will provide the opportunity Id 
public class DiscountCalculator {
    
    @TestVisible
    static Decimal calculateDiscount(Id oppId){
        
        //Query the Opportunities  and Account related to the Opportunities
        
        Opportunity opp = [SELECT Id, Amount, Account.Rating 
                           FROM Opportunity 
                           WHERE Id =: oppId];
        Decimal discount = 0;
        // Check the Account's rating and calculate the discount accordingly
        
        if(opp.Account.Rating == 'Hot'){
           discount = opp.Amount * 0.10;
            
            
        }Else if (opp.Account.Rating == 'Warm'){
        	discount = opp.Amount * 0.05;
            
        }Else {
        
            discount = 0;
        }
        return discount;
    }

}
   */

 /*
 SELECT Name FROM Account WHERE Name = 'Ben McCarthy'

Account acc= new Account(Name = 'Ben McCarthy');
insert acc;


trigger UpdateDescription on Account (before insert) {

    System.debug('Trigger Test');
    
    
}

  */

 /*
 @isTest
public class ContactTrigger_1Test {
    
    @isTest static void singleContactTrigger1_Test(){
        
        //Create a new Contact record to fire ContactTrigger1' trigger
        
        Contact c = new Contact(LastName = 'Smith');
        //  c.Description = 'Updated by Contact Trigger 1'; Trigger will handle this action
        insert c; // New contact will be created - LastName = Smith, Description : 'Updated by Contact Trigger 1'
        
        Contact cToGet = [SELECT Description FROM Contact LIMIT 1];
        System.assertEquals('Updated by Contact Trigger 1' , cToGet.Description, 'ContactTrigger1 did not work as expected');
        
    }
    
    @isTest static void multipleContactTrigger1_Test(){
        
        List <Contact> cons = new List <Contact>();
        for(Integer i=0; i<3; i++){
            
            Contact c = new Contact(LastName = 'Contact' + i);
            cons.add(c);
        }
        insert cons;
        
        List<Contact> conList = [SELECT Description FROM Contact];
        
        for(Contact c : conList){
            
           System.assertEquals('Updated by Contact Trigger 1', c.Description, 'ContactTrigger1 did not work as expected');
        }
    }
    
    
}
  */

  /**/
  