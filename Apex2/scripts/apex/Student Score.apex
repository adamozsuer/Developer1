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

//Delete Multiple Records ALL ROWS

List<Account> listToDelete = [SELECT Id, Name FROM Account WHERE Name IN('acc1', 'acc2', 'acc3') ALL ROWS];
Delete listToDelete;


 */