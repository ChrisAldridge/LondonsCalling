/*
    Interface for the LeapYearService.
    Used to remove tight coupling between the LeapYearsController and the LeapYearService.
*/
public Interface ILeapYearService
{
    boolean IsLeapYear(Integer year);
}