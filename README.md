# Jawbone_API_Demo

I put together a simple Calorie Counter application using the iOS SDK that simply authenticates with Jawbone's API and makes a few simple calls to retrieve and display the data.  In my testing I also used calls to push data to my Jawbone account since I do not own an UP Tracker.  In my code you will find comments regarding the specific API calls as well.

ViewController.m:

This the view that I used as a login screen and where I authenticate the user in the didUserPressLogin function.  This function utilizes the WebView authentication screen provided by the iOS sdk to log the user into the application.  After the user is logged in successfully it segues to the next storyboard that contains the dashboard.

DashDisplayViewController.m:

Here is where I setup the variables I am going to be displaying on my dashboard.  When the view is initialized (in viewDidLoad) I simply make a few calls to the API to assign the variables I need to the correct values.  Also note that in the top half of the viewDidLoad function is where I pushed data to my UP account to test with initially.

Next steps for this project would have been adding a screen where you could push workouts directly to your UP account and have it reflect the new value on the dashboard.  Another feature would be to implement various statistics from the data returned from the API to produce graphs and other calculated data.
