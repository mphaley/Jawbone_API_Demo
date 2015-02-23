# Jawbone_API_Demo

I put together a simple Calorie Counter application using the iOS SDK that simily autheticates with Jawbone's API and makes a few simple calls to retreive and display the data.  In my testing I also used calls to push data to Jawbone since I do not own an UP Tracker.  In my code you will find comments regarding the specfic API calls as well.

ViewController.m:

This the file that I used as a login screen and where I authenticate the user in the didUserPressLogin function.  After the user is logged in successfully it segues to the next storyboard

DashDisplayViewController.m:

Here is where I setup the variables I am going to be displaying.  When the view is initialized (in viewDidLoad) I simply make a few calls to the API to assign the variables I need to correct values.  Also note that in the top half of the viewDidLoad function is where I pushed data to my UP account to test with.

