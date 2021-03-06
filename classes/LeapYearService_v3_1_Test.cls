/*
    Test written for third requirement. Actually happens to just pass because 
    the current code accounts for this scenario. Move on to next version
    
    Requirements met:
    √   If the year is before 1582, then it is not a leap year
    √   If the year is divisible by four but not 100, then it is a leap year
    √   If the year is divisible by 100, but NOT 400, it is NOT a leap year
    x   If the year is divisible by 100 AND by 400, then it is a leap year
    x   Otherwise, not a leap year

*/
@IsTest
public class LeapYearService_v3_1_Test
{
    /*
        First requirement: Is the year is earlier than 1582, then the service
        should always return false.
    */
    private static testMethod void IsLeapYear_returns_false_if_year_before_1582()
    {
        /*
            Arrange
        */
        Integer yearToTest = 1580;
        
        LeapYearService_v3_1 leapYearService = new LeapYearService_v3_1();
        
        /*
            Act
        */
        test.startTest();
        Boolean isLeapYear = leapYearService.isLeapYear(yearToTest);
        test.stopTest();
        
        /*
            Assert
        */
        
        System.assertEquals(false, isLeapYear, '1580 should not be a leap year');
    }
    
    /*
        If the year is divisible by four but not by 100, then it IS a leap year.
    */
    private static testMethod void IsLeapYear_returns_true_if_divisible_by_4_but_not_100()
    {
        /*
            Arrange
        */
        Integer yearToTest = 2004;
        
        LeapYearService_v3_1 leapYearService = new LeapYearService_v3_1();
        
        /*
            Act
        */
        test.startTest();
        Boolean isLeapYear = leapYearService.isLeapYear(yearToTest);
        test.stopTest();
        
        /*
            Assert
        */
        
        System.assertEquals(true, isLeapYear, '2004 should be a leap year');
    }
    
    /*
        If the year is divisible by 100, but not by 400, then it is not a leap year.
        This test actually just passes with the existing code, so move on to v4
    */
    private static testMethod void IsLeapYear_returns_false_if_divisible_by_100_not_400()
    {
        /*
            Arrange
        */
        Integer yearToTest = 1900;
        
        LeapYearService_v3_1 leapYearService = new LeapYearService_v3_1();
        
        /*
            Act
        */
        test.startTest();
        Boolean isLeapYear = leapYearService.isLeapYear(yearToTest);
        test.stopTest();
        
        /*
            Assert
        */
        System.assertEquals(false, isLeapYear, '1900 is divisible by 100 but not 400, so should not be a leap year');
    }
}