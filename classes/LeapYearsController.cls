/*
    Controller for the LeapYears Visualforce page
*/
public class LeapYearsController 
{
    public Integer InputNumber { get; set; }
    public Boolean IsLeapYear { get; set; }
    
    public ILeapYearService LYService
    {
        get
        {
            // If this property has not been overridden (dependency injection),
            // then let's assume the class should use the LeapYearService class.
            if (LYService == null)
                LYService = new LeapYearService();
            
            return LYService;
        }
        set;
    }
    
    /*
        Uses the LeapYearService to check if the year is a leap year
    */
    public void CheckLeapYear()
    {
        try
        {
            IsLeapYear = LYService.IsLeapYear(inputNumber);    
        }
        catch (exception ex)
        {
            ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.Error, ex.getMessage()));
        }
    }
}