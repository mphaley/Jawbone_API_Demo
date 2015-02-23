//
//  DashDisplayViewController.h
//  Jawbone_API_Demo
//
//  Created by Michael Haley on 2/23/15.
//  Copyright (c) 2015 Michael Haley. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DashDisplayViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *fname;
 
//IBOutlet UILabel * fname;
   // NSString *a_fname;
@property (weak, nonatomic) IBOutlet UILabel *lname;

@property (weak, nonatomic) IBOutlet UILabel *u_cals;
@property (weak, nonatomic) IBOutlet UILabel *u_mood;


//@property(nonatomic, copy) NSString *fname;
@end
