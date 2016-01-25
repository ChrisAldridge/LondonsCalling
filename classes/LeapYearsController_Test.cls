/*
    Unit test class for LeapYearsController
*/
@IsTest
public class LeapYearsController_Test
{
    /*
        Ensures that the CheckLeapYear method calls the LeapYearService and displays the result
    */
    private static testMethod void CheckLeapYear_displays_leapyear_result()
    {
        /*
            Test Setup
        */
        
        // Create the controller
        LeapYearsController controller = new LeapYearsController();
        controller.InputNumber = 2000;
        
        // Set up the stub response to return "true"
        LeapYearServiceStub stub = new LeapYearServiceStub();
        stub.ResultToReturn = true;
        
        // Inject the stub into the controller
        controller.LYService = stub;
        
        
        /*
            Call method under test
        */
        controller.CheckLeapYear();
        
        /*
            Assert Outcomes
        */
        
        // IsLeapYear property on controller should not be set to true
        System.assertEquals(true, controller.IsLeapYear);
    }
    
    private static testMethod void CheckLeapYear_adds_page_messages_if_exception()
    {
        /*
            Test Setup
        */
        
        // Create the controller
        LeapYearsController controller = new LeapYearsController();
        controller.InputNumber = 2000;
        
        // Set up the stub response to return "true"
        LeapYearServiceStub stub = new LeapYearServiceStub();
        stub.ExceptionToReturn = new CustomException('Something went wrong');
        
        // Inject the stub into the controller
        controller.LYService = stub;
        
        
        /*
            Call method under test
        */
        try
        {
            controller.CheckLeapYear();    
        }
        catch (exception ex)
        {
            // If the controller throws an exception, then the test has failed
            System.assert(false, 'controller did not handle exception correctly');
        }
        
        
        /*
            Assert Outcomes
        */
        
        // An error should have been added to ApexPages.getMessages()
        System.assertNotEquals(null, ApexPages.getMessages());
        System.assertEquals(1, ApexPages.getMessages().size());
    }
}