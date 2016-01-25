/*
    Requirements 1, 2, 3 passing
    Requirement 4 failing
*/
public class LeapYearService_v4_1
{
    public boolean IsLeapYear(Integer year)
    {
        // No leap years before 1582
        if (year > 1582)
        {
            // If divisible by 4 but not by 100, then it IS a leap year
            if (math.mod(year, 4) == 0 && math.mod(year, 100) != 0)
            {
                return true;
            }
        }
        
        return false;    
    }
}