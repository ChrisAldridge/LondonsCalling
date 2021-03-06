/*
    Code written to satisfy second unit test, and first unit test is still passing.
    
    Requirements met:
    √   If the year is before 1582, then it is not a leap year
    √   If the year is divisible by four but not 100, then it is a leap year
    x   If the year is divisible by 100, but NOT 400, it is NOT a leap year
    x   If the year is divisible by 100 AND by 400, then it is a leap year
    x   Otherwise, not a leap year

*/
@IsTest
public class LeapYearService_v2_2_Test
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
        
        LeapYearService_v2_2 leapYearService = new LeapYearService_v2_2();
        
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
        Test will fail as the code has not been updated to meet this requirement yet.
    */
    private static testMethod void IsLeapYear_returns_true_if_divisible_by_4_but_not_100()
    {
        /*
            Arrange
        */
        Integer yearToTest = 2004;
        
        LeapYearService_v2_2 leapYearService = new LeapYearService_v2_2();
        
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
}