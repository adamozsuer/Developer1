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

//Delete Multiple Records ALL ROWS  /**example/ */ 

List<Account> listToDelete = [SELECT Id, Name FROM Account WHERE Name IN('acc1', 'acc2', 'acc3') ALL ROWS];
Delete listToDelete;

/**/ *//**/ */

 /*
 //Merge - mergin records into single record - up to 3 records can be merged (1 master+ 2 records)
//- Only for Leads, Contacts, Accounts, Cases can be merged /**/ */


/*
FIND {United} IN NAME FIELDS RETURNING Account(Name LIMIT 3 ), Contact(Name, AccountId, MailingStreet LIMIT 2), Opportunity(Name LIMIT 7) LIMIT 12



 */

// Structure: Merge masterRecord mergedRecord(single or List)
    
Account masterAcc = [SELECT Id, Name FROM Account WHERE Name = 'Acc1' LIMIT 1];
Account mergeAcc = [SELECT Id, Name FROM Account WHERE Name = 'Acc2' LIMIT 1];

Merge masterAcc mergeAcc;


Account masterAcc2 = [SELECT Id, Name FROM Account WHERE Name = 'Acc1' LIMIT 1];

List<Account> mergeList = [SELECT Id, Name FROM Account WHERE Name = 'Acc4' OR Name= 'Acc3'];

Merge masterAcc2 mergeList;
  */