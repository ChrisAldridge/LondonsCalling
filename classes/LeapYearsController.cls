/*
    Controller for the LeapYears Visualforce page
*/
public class LeapYearsController 
{
    public Integer InputNumber { get; set; }
    public Boolean IsLeapYear { get; set; }
    
    /*
        Instead of instantiating a LeapYearService class, we allow any ILeapYearService class to be
        passed in to the constructor and we will use that instead.
        This is known as dependency injection - this controller no longer has a dependency on the
        LeapYearService class, and whichever class creates this controller can dictate which
        ILeapYearService implementation it uses.
    */
    private ILeapYearService LYService;
    
    /*
        Default constructor. If the calling code does not pass in the leap year
        service to use, then just use the default one.
    */
    public LeapYearsController()
    {
        this(new LeapYearService());
    }
    
    /*
        Overloaded constructor allows us to pass in the ILeapYearService implementation
        for unit testing.
    */
    public LeapYearsController(ILeapYearService leapYearService)
    {
        this.LYService = leapYearService;
    }
    
    /*
        Uses the LeapYearService to check if the year is a leap year
    */
    public void CheckLeapYear()
    {
        try
        {
            // We do not instantiate the LeapYearService, we use the service
            // which was set up by the constructor (or passed in by parent class)
            IsLeapYear = LYService.IsLeapYear(inputNumber);    
        }
        catch (exception ex)
        {
            ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.Error, ex.getMessage()));
        }
    }
}