public class Dinner {
   public Integer numberOfJuice;
   public String mealName;
    
    public dinner(){
         numberOfJuice = 2;
        mealName = 'Pizza';
        
    }
    
     public dinner(String otherMeal, Integer newNumberOfJuice){
         numberOfJuice = newNumberOfJuice;
        mealName = otherMeal;
        
    }
    
    public dinner(String otherMeal, Integer newNumberOfJuice, Integer afterDinnerNumberOfJuice){
         numberOfJuice = newNumberOfJuice + afterDinnerNumberOfJuice;
        mealName = otherMeal;
        
    }
    
    
public void DinnerMethod(){

    System.debug('I ate ' + mealName + ' and drunk ' + numberOfJuice + ' glass of juice');


}

}