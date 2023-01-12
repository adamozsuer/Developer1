Decimal score = math.random()*100;
System.debug(score);
Integer studentScore = Integer.valueOf(score);
System.debug(studentScore);
if (studentScore>=90) {
    System.debug('A');
} else if (studentScore>=80) {
    System.debug('B');
} else if (studentScore>=70) {
    System.debug('C');
} else if (studentScore>=60) {
    System.debug('D');
} else if (studentScore>=50) {
    System.debug('E');
} else {
    System.debug('F');
}

/*
Test test tt 
*/

/*

//Delete Multiple Records ALL ROWS  /**example/ */ /**/

List<Account> listToDelete = [SELECT Id, Name FROM Account WHERE Name IN('acc1', 'acc2', 'acc3') ALL ROWS];
Delete listToDelete;

/**/ *//**/ *//**/ */

 /*
 //Merge - mergin records into single record - up to 3 records can be merged (1 master+ 2 records)
//- Only for Leads, Contacts, Accounts, Cases can be merged /**/ */*/**/ */


/*
FIND {United} IN NAME FIELDS RETURNING Account(Name LIMIT 3 ), Contact(Name, AccountId, MailingStreet LIMIT 2), Opportunity(Name LIMIT 7) LIMIT 12

/**/
    
    public static void discountCalculator(Id oppId, Decimal rate){
        // Get REcords
        Opportunity opp = [SELECT Id, Amount FROM Opportunity WHERE Id =: oppId LIMIT 1];
        
        // Do calculation
        opp.FinalAmount__c = opp.Amount -  (opp.Amount*rate);
        
        // Manipulate the record by DML
        update opp;
    }
    

}

FinalAmountOpp.discountCalculator('006Dn000004LonpIAC', .10);// Put unique ID for your org

 */

 /*
// User will update opportunity discount based on the Account Type
public without sharing class DiscountOppAccount {
    
    public static void discountUpdate(){
        //Get Records
     List<Opportunity> opps = [SELECT Id, Amount, Final_Amount__c, Account.Type 
                               FROM Opportunity];
     List<Opportunity> newOpps = new List<Opportunity>(); 
        //Calculations
        for(Opportunity opp:opps ){
        	
            if(opp.Account.Type == 	'Channel Partner / Reseller'){
                //code block
                //assign value to the field
                opp.Final_Amount__c = opp.Amount - (opp.Amount*0.10);
                //assign record to the new list
                newOpps.add(opp);
                
            }else if (opp.Account.Type == '	Installation Partner'){
                 //code block
                //assign value to the field
                opp.Final_Amount__c = opp.Amount - (opp.Amount*0.20);
                //assign record to the new list
                newOpps.add(opp);
                
             }else if (opp.Account.Type == 'Technology Partner'){
                 //code block
                //assign value to the field
                opp.Final_Amount__c = opp.Amount - (opp.Amount*0.30);
                //assign record to the new list
                newOpps.add(opp);
                //code block
            
             }else{//no condition, rest of the records will be processed here
                   opp.Final_Amount__c = opp.Amount - (opp.Amount*0.05);
                //assign record to the new list
                newOpps.add(opp);
                //code block
                 
             }
            
            
           }
        // DML Statement
         update  newOpps;

		}
	}
 */

 /*
 // User will update opportunity discount based on the Account Type
public without sharing class DiscountOppAccount {
    
    public static void discountUpdate(){
        //Get Records
     List<Opportunity> opps = [SELECT Id, Amount, Final_Amount__c, Account.Type 
                               FROM Opportunity];
        
    }

}
  */

/**/
FIND {United} IN NAME FIELDS RETURNING Account(Name, Industry WHERE Rating = 'Hot'), Contact(Name, Phone ORDER BY Name DESC), Opportunity(Name, Amount ORDER BY Name DESC)
 */

 */

// Structure: Merge masterRecord mergedRecord(single or List)
    
Account masterAcc = [SELECT Id, Name FROM Account WHERE Name = 'Acc1' LIMIT 1];
Account mergeAcc = [SELECT Id, Name FROM Account WHERE Name = 'Acc2' LIMIT 1];

Merge masterAcc mergeAcc;


Account masterAcc2 = [SELECT Id, Name FROM Account WHERE Name = 'Acc1' LIMIT 1];

List<Account> mergeList = [SELECT Id, Name FROM Account WHERE Name = 'Acc4' OR Name= 'Acc3'];

Merge masterAcc2 mergeList;
  */

  /*
// User will update opportunity discount based on the Account Type
public without sharing class DiscountOppAccount {
    
    public static void discountUpdate(){
        //Get Records
     List<Opportunity> opps = [SELECT Id, Amount, Final_Amount__c, Account.Type 
                               FROM Opportunity];
     List<Opportunity> newOpps = new List<Opportunity>(); 
        //Calculations
        for(Opportunity opp:opps ){
        	
            if(opp.Account.Type == 	'Channel Partner / Reseller'){
                //code block
                //assign value to the field
                opp.Final_Amount__c = opp.Amount - (opp.Amount*0.10);
                //assign record to the new list
                newOpps.add(opp);
                
            }else if (opp.Account.Type == '	Installation Partner'){
                 //code block
                //assign value to the field
                opp.Final_Amount__c = opp.Amount - (opp.Amount*0.20);
                //assign record to the new list
                newOpps.add(opp);
                
             }else if (opp.Account.Type == 'Technology Partner'){
                 //code block
                //assign value to the field
                opp.Final_Amount__c = opp.Amount - (opp.Amount*0.30);
                //assign record to the new list
                newOpps.add(opp);
                //code block
            
             }else{//no condition, rest of the records will be processed here
                   opp.Final_Amount__c = opp.Amount - (opp.Amount*0.05);
                //assign record to the new list
                newOpps.add(opp);
                //code block
                 
             }
            
            
           }
        // DML Statement
         update  newOpps;

		}
	}
  *//**/ */
/**/
  /*
// User will update opportunity discount based on the Account type 
public without sharing class DiscountOppAccount {

    public static void discountUpdate(){
        
        //Get Records
        List<Opportunity> opps = [SELECT Id, Amount, FinalAmount__c, Account.Type 
                                  FROM Opportunity];
        
        List<Opportunity> newOpps = new List<Opportunity>();
        //Calculations
        for ( Opportunity opp: opps ){
            
            if (opp.Account.Type == 'Channel Partner / Reseller'){
                //code block
                //assign value to the field
                 opp.FinalAmount__c = opp.Amount - (opp.Amount*0.10) ;
                //assign record to the new list
                newOpps.add(opp);
            }else if(opp.Account.Type == 'Installation Partner'){
                
                //code block
                 //assign value to the field
                 opp.FinalAmount__c = opp.Amount - (opp.Amount*0.20) ;
                //assign record to the new list
                newOpps.add(opp);
            }else if(opp.Account.Type == 'Technology Partner'){
                
                //code block
                 //assign value to the field
                 opp.FinalAmount__c = opp.Amount - (opp.Amount*0.30) ;
                //assign record to the new list
                newOpps.add(opp);
            } else { //no condition, rest of the records will be proccessed here
                 
                //assign value to the field
                opp.FinalAmount__c = opp.Amount - (opp.Amount*0.05) ;
                //assign record to the new list
                newOpps.add(opp);
                
                
            }
            /**/ */
            
        }
        //DML Statement
        update newOpps;
    }
}



DiscountOppAccount.discountUpdate();

/*
public class Calculator {

    public static Integer sum(Integer num1, Integer num2){
        
        return num1 + num2;
    }
   
    public static Integer substract (Integer num1, Integer num2){
        
        return num1 - num2;
    }
    
      public static Integer multiply (Integer num1, Integer num2){
        
        return num1 * num2;
    }
    
       public static Integer divide (Integer num1, Integer num2){
        
        return num1 / num2;
    }
    /* 
    @isTest  // @isTest annotation declare this class as a test class
public class Calculator_Test {
    
    // Create test/mock data
    // Run the actual code (from real class) with this data
    // Use System.Assert methods to check data
    
    @isTest static void sum_Test(){
        
        Integer result = Calculator2.sum(2, 2);
        
        System.assertEquals(4, result, 'The result and expected are not equal');
            
            
            }
    
     @isTest static void sum_Test(){
        
        Integer result = Calculator2.sum(2, 2);
        
        System.assertEquals(4, result, 'The result and expected are not equal');
            
            
            }
    
}/*
@isTest
public class CreateAccount_Test {
    
    // create mock/test data
    // Execute method of the class real code with data
    // Use system.Assert methods to check
    
    @isTest static void newAcc_Test(){
    
    // create mock/test data
    
    
    // Execute method of the class real code with data
    CreateAccount.newAcc('Triforcia3');
    
    // Use system.Assert methods to check
    Account accCheck = [SELECT Id, Name FROM Account WHERE Name = 'Triforcia3'];
    System.assertEquals('Triforcia3', accCheck.Name, 'Account is not correct');
    
}
    /*
    public class TemperatureConverter {

    // C= 5/9*(F-32)
    public static Decimal fToCelcius(Decimal fn){
        
        Decimal cl = 5/9*(fn-32);
        return cl;
        
    }
    
}
     */

     /*TemperatureConverter.fToCelcius(32); */
}
 */
    */
    
}
 */
  */