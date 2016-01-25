/*
    Code is refactored to be more readable.
    All unit tests are still passing, so we know we haven't broken anything
*/
public class LeapYearService_v5_2
{
    public boolean IsLeapYear(Integer year)
    {
        // No leap years before 1582
        if (year < 1582)
            return false;
            
        // If divisible by 4 but not by 100, then it IS a leap year
        if (math.mod(year, 4) == 0 && math.mod(year, 100) != 0)
            return true;
             
        // If divisible by 100 and 400, then it is a leap year   
        if (math.mod(year, 100) == 0 && math.mod(year, 400) == 0)
            return true;

        // If we haven't already hit a rule above, then it is not a leap year.
        return false;    
    }
}