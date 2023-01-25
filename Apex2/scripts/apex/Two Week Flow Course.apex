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

  /*
  @isTest
public class ContactTrigger2_Test {
    
    @isTest static void singleContactTrigger2_Test(){
        
        //Create a record 
        
        Contact c = new Contact(LastName = 'Smith');
        insert c;
        
        // Update the record
        
        Contact cToUpdate = [SELECT LastName 
                             FROM Contact 
                             LIMIT 1];
        cToUpdate.LastName = 'Johnson';
        
        update cToUpdate;
        
        // Testing
         Contact cToGet = [SELECT LastName, Description 
                           FROM Contact 
                           LIMIT 1];
       
        Assert.areEqual('Change made by Ugur Ozsuer', cToGet.Description, 'Contact Trigger 2 is not working as expected');
        
    }
    
    @isTest static void multipleContactTrigger2_Test(){
        
        //Create multiple records
        List<Contact> firstList = new List<Contact>();
        
        for(Integer i=0; i<10; i++){
            
        Contact c = new Contact(LastName = 'Contact' + i);
        firstList.add(c);
            
        }
        insert firstList;
        
        //Update multiple Contact records
        
        List <Contact> secondList = [SELECT LastName FROM Contact];
        
        List <Contact> thirdList = new List<Contact>();
        for(Contact cToUpdate : secondList){
            
            cToUpdate.LastName = 'cToUpdate' +1;
            thirdList.add(cToUpdate);
        }
        
        update thirdList;
        
        //Testing
        List <Contact> fourthList = [SELECT Description 
                                     FROM Contact];
        
        for(Contact cToTest : fourthList){
           
            
            
        }
        
    }

}
   */

   /*
   trigger ContactTrigger on Contact (before insert, before update) {
    
    for(Contact c: Trigger.new){
        
        if(Trigger.isBefore && Trigger.isInsert){
            
                c.Description = 'Updated by Contact Trigger 1';
        }
        
        if(Trigger.isBefore && Trigger.isUpdate){
            
             c.Description = 'Change made by ' + UserInfo.getName();
            
        }
        
    }

}
    */

    /*
    //Create an opportunity automatically if user creates an account
trigger Account1 on Account (after insert) {

    List<Opportunity> oppList = new List<Opportunity>();
    for(Account a : Trigger.New){
        
        Opportunity o = new Opportunity();
        o.Name = a.Name + 'Opportunity';  //Salesforce Opportunity
        o.CloseDate = Date.today() + 15;
        o.StageName = 'Prospecting';
        o.AccountId = a.Id;
        oppList.add(o);
        
    }
    insert oppList;
    
}
     */

     /*
     @isTest
public class Account1_Test {
    @isTest static void singleAccount_Test(){
    //Create account records to fire Account trigger
    
    TestDataFactory.CreateAccounts(1); //Expecting to see an account record(trigger will be fired and related opportunity will be created)

        //Get the record from database
        Opportunity o = [SELECT Name, AccountId, Account.Id FROM Opportunity LIMIT 1];
        
        //Testing
        assert.areEqual(o.AccountId, o.Account.Id, 'Account Trigger did not work as expected');
}
    
}
      */

      /*

      public static String toUpperC(string  name, string Lname){
        String fullName = name+' '+Lname;
        return fullName;
    }
      
      */

      /*
      //Create an opportunity automatically if user creates an account
//When a new account created and the account type is prospect then create a task for the parent user, send email alert to the user
trigger Account1 on Account (after insert) {
    
    List<Opportunity> oppList = new List<Opportunity>();
    List<Task> tasks = new List<Task>();
    for(Account a : Trigger.New){
        
        Opportunity o = new Opportunity();
        o.Name = a.Name + 'Opportunity';  //Salesforce Opportunity
        o.CloseDate = Date.today() + 15;
        o.StageName = 'Prospecting';
        o.AccountId = a.Id;
        oppList.add(o);
        
        if(a.Type == 'Prospect' ){
            
            
            
            // sObject label = new sObject();
            // List<sObject> label = new List<sObject>();
            
            Task t = new Task();
            
            t.Subject = 'New Account Trigger Test';
            t.Status = 'In Progress';
            t.OwnerId = UserInfo.getUserId();
            t.WhatId = a.Id;
            tasks.add(t);
            
        }
        
        
    }
    insert oppList;
    insert tasks;
    
}
      
       */

       /*
       //Create an opportunity automatically if user creates an account 
//When a new account created and the account type is prospect then create a task for the current user, send email alert to the user
//Throw and error whenever user try to delete the account which is associated to the contact 

trigger Account1 on Account (after insert, before delete) {
	
    if(Trigger.isAfter && Trigger.isInsert){
        
        
        
    }
    List<Opportunity> oppList = new List<Opportunity>();
    List<Task> tasks = new List<Task>();
    
    for (Account a : Trigger.New){
        Opportunity o = new Opportunity();
        o.Name = a.Name + ' Opportunity'; // Salesforce Opportunity
        o.CloseDate = Date.today() + 15;
        o.StageName = 'Prospecting';
        o.AccountId= a.Id;
        oppList.add(o);
        
        if (a.Type == 'Prospect'){
            
         Task t = new Task();
            t.Subject = 'New Account Trigger Test';
            t.Status = 'In Progress';
            t.OwnerId = UserInfo.getUserId();
            t.WhatId = a.Id;
            tasks.add(t);
            
        }
        
    }
    insert oppList;
    insert tasks;
    
    
    Messaging.SingleEmailMessage msg = new Messaging.SingleEmailMessage();
    msg.setSubject('Trigger Email');
    msg.setPlainTextBody('This is a trigger email plain text body');
    List<String> emailList = new List<String>{userinfo.getUserEmail()};  
    msg.setToAddresses(emailList);
   Messaging.sendEmail(new Messaging.SingleEmailMessage[] {msg });
        
        
}

if (trigger.isBefore && Trigger.isDelete){
    
    for(Account a: Trigger.old){
        
        // Check if the account has related contacts(s)
      List<Contact> relatedContacts = [SELECT Id FROM Contact WHERE AccountId =: a.Id];
      
        if(!relatedContacts.isEmpty()){
            
            //Throw an error
            a.addError('Can not delete account that is associated with a contact. Please contact with system admin for further help');
        }
        
    }
    
}


        */

        /*
        
        public class AddDescriptionForSalutation {
    
    public static void contactCreator(String conSalutation, String conLName){
        Contact con = new Contact();
        con.LastName = conLName;
        con.salutation = conSalutation;
        insert con;
    }
    
    public static String conSalutationDesc(String conLName){
        Contact oneCont = [SELECT LastName, Id, Salutation, Description FROM Contact WHERE name =:conLName LIMIT 1];
        if(oneCont.Salutation == 'Mr.'){
            oneCont.Description = 'This salutation is used for a man that we don\'t know his marital status';
        }else if(oneCont.Salutation == 'Ms.'){
            oneCont.Description = 'This salutation is used for a woman that we don\'t know her marital status';
        }else if(oneCont.Salutation == 'Mrs.'){
            oneCont.Description = 'This salutation is used for a woman who is married';
        }else if(oneCont.Salutation == 'Dr.'){
            oneCont.Description = 'This salutation is used for a man/woman who is educated';
        }else{
            oneCont.Description = 'This salutation is used for a man/woman who is well educated';
        }
        update oneCont;
        return oneCont.Description;
    }
}
         */

         /*
         @isTest
public class UpdateAsset_Test {
    
    @TestSetup static void createData(){
        
        //Create contact, inspection and asset records
        
        Account testAcc = new Account(Name = 'Test Account');
        insert testAcc;
        Contact testCont = new Contact(LastName = 'Test Contact' ,AccountId = testAcc.Id);
        insert testCont;
        Asset testAsset = new Asset(Name = 'Test Asset', Inspection_Required__c = false, ContactId =  testCont.Id);
        insert testAsset;
        Inspection__c testIns = new Inspection__c (Asset__c = testAsset.Id);
    }
    
    @isTest static void testInsert(){
        // Get Asset record
        Asset testAsset = [SELECT Id, Inspection_Required__c FROM Asset LIMIT 1];
        
        assert.areEqual(true, testAsset.Inspection_Required__c, 'Inspection Required field is not updated by the UpdateAsset tirgger on INcpection object');
        
        // verify that the Inspection Required field on the Asset record is set to true
        
        
    }
    
//    @isTest static void testUpdate(){
  //        Asset testAsset = [SELECT Id, Inspection_Required__c FROM Asset];
  //      Inspection__c testInspection = [SELECT Status__c FROM Inspection__c  WHERE Asset__c =: testAsset.Id];
        
        //Update the test inspection Status field to completed
    //    testInspection.Status__c = 'Completed';
    //    update testInspection;
        // Trigger worked here
   //     Asset updatedAsset = [SELECT Id, Inspection_Required__c FROM Asset];
        //Testing : Verify that the 'Inspection Required ' field on the Asset record is set to false
    //     assert.areEqual(false, updatedAsset.Inspection_Required__c, 'Inspection Required is not updated by the UpdateAsset tirgger on INcpection object');
      
  //  }
    
    
}
          */

          /*
          //Create an opportunity automatically if user creates an account 
//When a new account created and the account type is prospect then create a task for the current user, send email alert to the user
//Throw an error whenever user try to delete the account which is associated to a contact
trigger Account1 on Account (after insert, after delete) {
    if(Trigger.isAfter && Trigger.isInsert){
    List<Opportunity> oppList = new List<Opportunity>();
    List<Task> tasks = new List<Task>();
    
    for (Account a : Trigger.New){
        Opportunity o = new Opportunity();
        o.Name = a.Name + ' Opportunity'; // Salesforce Opportunity
        o.CloseDate = Date.today() + 15;
        o.StageName = 'Prospecting';
        o.AccountId= a.Id;
        oppList.add(o);
        
        if (a.Type == 'Prospect'){
            
         Task t = new Task();
            t.Subject = 'New Account Trigger Test';
            t.Status = 'In Progress';
            t.OwnerId = UserInfo.getUserId();
            t.WhatId = a.Id;
            tasks.add(t);
            
        }
        
    }
    insert oppList;
    insert tasks;
    
    
    Messaging.SingleEmailMessage msg = new Messaging.SingleEmailMessage();
    msg.setSubject('Trigger Email');
    msg.setPlainTextBody('This is a trigger email plain text body');
    List<String> emailList = new List<String>{UserInfo.getUserEmail()};  
    msg.setToAddresses(emailList);
   Messaging.sendEmail(new Messaging.SingleEmailMessage[] {msg });
        
        
    }

    if (Trigger.isBefore && Trigger.isDelete){
        
        for(Account a: Trigger.old){
            //Check if the account has related contact(s)
          List<Contact> relatedContacts = [SELECT Id FROM Contact WHERE AccountId =: a.Id];
            
            if(!relatedContacts.isEmpty()){
                
                //Throw an error
               a.addError('Can not delete account that is associated with a contact. Please contact with system admin for further help');
            }
            
            
        }
        
        
    }    
        
        if (Trigger.isAfter && Trigger.isDelete){
             List <DeletedAccount__c> delAccs = new List<DeletedAccount__c>();
    for(Account a : Trigger.Old){
        
        
        DeletedAccount__c dacc = new DeletedAccount__c();
        
        dacc.Name = a.Name;
        dacc.Phone__c = a.Phone;
        dacc.Type__c = a.Type;
        dacc.DeletedDate__c = system.now();
        delAccs.add(dacc);
        
    }
    
    insert delAccs;   
    
}
    
}


          
           */