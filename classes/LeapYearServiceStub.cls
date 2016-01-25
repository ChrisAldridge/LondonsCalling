/*
    Stub implementation of ILeapYearService.
    Used to isolate controller test logic from the LeapYearService code
*/
@IsTest
public class LeapYearServiceStub implements ILeapYearService
{
    public boolean ResultToReturn { get; set; }
    public exception ExceptionToReturn { get; set; }
    
    public boolean IsLeapYear(Integer year)
    {
        if (ExceptionToReturn != null)
            throw exceptionToReturn;
            
        return ResultToReturn;
    }
}