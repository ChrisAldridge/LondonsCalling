# Leap Years TDD Exercise for London's Callling

This is the Leap Years exercise presented at London's Calling by Chris Aldridge on February 5th, 2016.

The exercise is a walkthrough of how to apply Test Driven Development to a simple problem: calculating whether or not a date is a leap year.

Click here to install the code directly in your developer edition org:
<a href="https://githubsfdeploy.herokuapp.com?owner=chrisaldridge&repo=LondonsCalling">
  <img alt="Deploy to Salesforce"
       src="https://raw.githubusercontent.com/afawcett/githubsfdeploy/master/src/main/webapp/resources/img/deploy.png">
</a>

##Leap Year Requirements
Leap years are fairly easy to calculate. The following rules determine whether or not a year is a leap year: <br />
1. If the year is before 1582, then it is not a leap year. <br />
2. If the year is divisible by four but not 100, then it is a leap year. <br />
3. If the year is divisible by 100, but NOT 400, it is NOT a leap year. <br />
4. If the year is divisible by 100 AND by 400, then it is a leap year. <br />
5. Otherwise, not a leap year


This ruleset will make up the basis of our unit tests.

##Code Structure

Each iteration of the code is versioned with a major and minor version. Each major version is the adding of a new requirement, with subsequent sub-versions being the updating of the code to make the test pass, and refactoring (if applicable).
Each version of the service has a related test class version.
In a real TDD application, we would obviously not version the code, but structuring the code in this way for the exercise makes it easy to demonstrate how the code evolves when TDD is applied.

## Feedback

Want to get in touch and discuss this exercise? Get in touch with me on [twitter](http://twitter.com/caldridg3)

