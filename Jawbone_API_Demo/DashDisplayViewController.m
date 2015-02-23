//
//  DashDisplayViewController.m
//  Jawbone_API_Demo
//
//  Created by Michael Haley on 2/23/15.
//  Copyright (c) 2015 Michael Haley. All rights reserved.
//

#import "DashDisplayViewController.h"
#import <UPPlatformSDK/UPPlatformSDK.h>

@interface DashDisplayViewController ()

//@property (weak, nonatomic) IBOutlet UILabel *fname;



@end




@implementation DashDisplayViewController

- (void)viewDidLoad {
      [super viewDidLoad];
    /*
     
    INITIAL SETUP
    Since I do not own an UP tracker I manually added the below information so that I'd have values for both mood and calories.  If you were to uncomment the below segment of code, I am simply pushing data from my app to the data stored on the UP Servers.
     */
    
    /*
    UPWorkout *workout = [UPWorkout workoutWithType:UPWorkoutTypeBike
                                          startTime:nil
                                            endTime:nil
                                          intensity:UPWorkoutIntensityEasy
                                     caloriesBurned:@300];
    workout.distance=@7;
    
    [UPWorkoutAPI postWorkout:workout completion:^(UPWorkout *workout, UPURLResponse *response, NSError *error) {
        // Your completion code here.
    }];
    
    
    UPMood *newMood = [UPMood moodWithType:UPMoodTypeGood title:@"Happy!"];
    [UPMoodAPI postMood:newMood completion:^(UPMood *mood, UPURLResponse *response, NSError *error) {
        // Your code goes here.
    }];
    */
    
    /*
        API CALLS
        Below I call the information from the API to be placed in my label variables and displayed on the dashboard view of the app
    */
    
    /*sets first and last name of the user*/
    [UPUserAPI getCurrentUserWithCompletion:^(UPUser *user, UPURLResponse *response, NSError *error) {
        // Your code to process returned UPUser object.
        self.fname.text = user.firstName;
        self.lname.text = user.lastName;
        
    }];
    
    
    /*sets mood of the user */
    [UPMoodAPI getCurrentMoodWithCompletion:^(UPMood *mood, UPURLResponse *response, NSError *error) {
        // Your code goes here.
        self.u_mood.text = mood.title;
    }];
    
    
    /* sets the number of calories for user */
    [UPMoveAPI getMovesWithLimit:10U completion:^(NSArray *moves, UPURLResponse *response, NSError *error) {
        // Your code here to process an array of UPMove objects.
     
         UPMove *today = [moves objectAtIndex:0];
        self.u_cals.text = [today.totalCalories stringValue];
     
        
        
    }];

    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
