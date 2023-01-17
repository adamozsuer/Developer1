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

 