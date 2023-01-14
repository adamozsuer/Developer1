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
    /*
    @isTest
public class TemperatureConverter_Test {

    @isTest static void warmTemp_Test(){
        
        Decimal celsius = TemperatureConverter.fToCelsius(77);
        System.assertEquals(25, celsius, 'Warm temperature is not expected');
        
    }
    
        @isTest static void FreezingTemp_Test(){
        
        Decimal celsius = TemperatureConverter.fToCelsius(32);
        System.assertEquals(0, celsius, 'Freezing temperature is not expected');
        
    }
    
      @isTest static void BoilingTemp_Test(){
        
        Decimal celsius = TemperatureConverter.fToCelsius(212);
        System.assertEquals(100, celsius, 'Boiling temperature is not expected');
        
    }
    
      @isTest static void NegativeTemp_Test(){
        
        Decimal celsius = TemperatureConverter.fToCelsius(5);
        System.assertEquals(-15, celsius, 'Negative temperature is not expected');
        
    }
    
     @isTest static void decimalTemp_Test(){
        
        Decimal celsius = TemperatureConverter.fToCelsius(54.5);
        System.assertEquals(12.5, celsius, 'decimal temperature is not expected');
        
    }
}
     */
}
     */

     /* System.debug(TemperatureConverter.fToCelsius(32));*/
}
 */
    */

    /*
    public class UpdateDescription {

    public static void accDescUpdate(){
        
        //Get all accounts
        List<Account> accs = [SELECT Description FROM Account];
       List<Account> newAccs = new List<Account>();
        for(Account a : accs){
            
            a.Description = 'Updated';
            newAccs.add(a);
        }
        
        // Save new updated list to the database
        update newAccs;
    }
    
    
}
    */

/*
@isTest
public class UpdateDescription_Test {

    @isTest static void accDescUpdate_Test(){
        
        //Create mock data
       
       List<Account> accs = new List<Account>();
        
        for(Integer i = 1; i < 5; i++) { //Traditional for loop
            
            Account a = new Account ();
            a.Name = 'Test' + i; // Account name will be 'Test 1', 'Test 2', 'Test 3', 'Test 4'
            accs.add(a);
        }
        insert accs;
        //Call actual code
        
        UpdateDescription.accDescUpdate();
        
        //Assess the result - (System Assert methods)
        List<Account> newAccs = [SELECT Description FROM Account];
        
        for(Account a : newAccs){
            
            System.assertEquals('Updated', a.Description, 'Description is not updated');
        }
        
    }
    
}

/**/
@isTest
public class UpdateDescription_Test {

    @isTest static void accDescUpdate_Test(){
        
        //Create mock data
       
       List<Account> accs = new List<Account>();
        
        for(Integer i = 1; i < 5; i++) { //Traditional for loop
            
            Account a = new Account ();
            a.Name = 'Test' + i; // Account name will be 'Test 1', 'Test 2', 'Test 3', 'Test 4'
            accs.add(a);
        }
        insert accs;
        //Call actual code
        
        UpdateDescription.accDescUpdate();
        
        //Assess the result - (System Assert methods)
        List<Account> newAccs = [SELECT Description FROM Account];
        
        for(Account a : newAccs){
            
            System.assertEquals('Updated', a.Description, 'Description is not updated');
        }
        
        System.assertEquals(4,newAccs.size(), 'Number of accounts are less than expected');
        
    }
    
}
 */

 */


    
}
 */
  */

  /*
  @isTest
public class UpdateDescription_Test {

    @isTest static void accDescUpdate_Test(){
        
        //Create mock data
       
       List<Account> accs = new List<Account>();
        
        for(Integer i = 1; i < 5; i++) { //Traditional for loop
            
            Account a = new Account ();
            a.Name = 'Test' + i; // Account name will be 'Test 1', 'Test 2', 'Test 3', 'Test 4'
            accs.add(a);
        }
        insert accs;
        //Call actual code
        
        Test.startTest(); // Governor limit resets from here until stopTest
        
        System.assertEquals(1, Limits.getDmlStatements());
        
        UpdateDescription.accDescUpdate();
        
        Test.stopTest();
        
        //Assess the result - (System Assert methods)
        List<Account> newAccs = [SELECT Description FROM Account];
        
        for(Account a : newAccs){
            
            System.assertEquals('Updated', a.Description, 'Description is not updated');
        }
        
        System.assertEquals(4,newAccs.size(), 'Number of accounts are less than expected');
        
        System.assertEquals(1, Limits.getDmlStatements());
        
    }
    
}
   */

   /*
   @isTest
public class UserTestExample {
    
    @isTest static void userNewTest(){
        
        Account a = new Account (Name = 'test');
        insert a;
        
        User u = [SELECT Name FROM User WHERE Name = 'Ugur Ozsuer'];
        User c = [SELECT Name FROM User WHERE Name = 'Chatter Expert'];
        System.runAs(u){
            
            Account acc = [SELECT Name FROM Account ];
            System.assertEquals('new test', acc.Name);
        }
        System.runAs(c){
            
            Account acc = [SELECT Name FROM Account ];
            System.assertEquals('another test', acc.Name);
        }
    }
    
}
   
   */

   /*
   
    */

    /*
    
    @isTest
public class NewTestMethod {

    // creata mock data
    // execute actual code

    @TestSetup static void createData(){
        
        Account a = new Account (Name = 'Triforcia');
        insert a;
        
        Contact c = new Contact (LastName = 'Blaze');
        insert c;
        
    }
    
        // system assert methods to test
        
    @isTest static void methodOne(){
        
        Account acc = new Account(Name - 'methodOne Account');
        insert acc;
        
        List<Account> accList = [SELECT Id, Name FROM Account];
        
        system. assertEquals(2, accList.size());
        
    }  
  /**/ */
    
}
     */

     /*
     public class LucianIsTeaching {

    public static void insertaccount(){
        
        List<Account> accList = new List<Account>();
        for (Integer i=1; i<=5; i++){
            Account acc = new Account();
            acc.Name = 'Triforcia Recap' + i;
            acc.Phone = '12345678'+ i;
            accList.add(acc);
        }
        
        insert accList;
    
    
    List<Contact> conList = new List <Contact>();
    
    for(Account acc1:accList){
        Contact con = new Contact();
        con.LastName = acc1.Name;
        con.AccountId = Con.Id;
        conList.add(con);
    }
    
    insert conList;
        
    List<Opportunity> oppList = new List<Opportunity>();
    
        for(Account acc2:accList){
            Opportunity opp = new Opportunity();
            opp.Name = acc2.Name;
            opp.StageName = 'Closed Won';
            opp.CloseDate = date.Today(); // system.Today();
            opp.AccountId = opp.Id;
            oppList.add(opp);
            
            }
        insert oppList;
    
}
}
     
      */

      /*
      
      public class LucianIsTeaching {

    public static void insertaccount(){
        
        List<Account> accList = new List<Account>();
        for (Integer i=1; i<=5; i++){
            Account acc = new Account();
            acc.Name = 'Triforcia Recap' + i;
            acc.Phone = '12345678'+ i;
            accList.add(acc);
        }
        
        insert accList;
    
    
    List<Contact> conList = new List <Contact>();
    
    for(Account acc1:accList){
        Contact con = new Contact();
        con.LastName = acc1.Name;
        con.AccountId = Con.Id;
        conList.add(con);
    }
    
    insert conList;
        
    List<Opportunity> oppList = new List<Opportunity>();
    
        for(Account acc2:accList){
            Opportunity opp = new Opportunity();
            opp.Name = acc2.Name;
            opp.StageName = 'Closed Won';
            opp.CloseDate = date.Today(); // system.Today();
            opp.AccountId = opp.Id;
            oppList.add(opp);
            
            }
        insert oppList;
    
}
}


       */