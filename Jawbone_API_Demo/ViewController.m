//
//  ViewController.m
//  Jawbone_API_Demo
//
//  Created by Michael Haley on 2/22/15.
//  Copyright (c) 2015 Michael Haley. All rights reserved.
//

#import "ViewController.h"
#import <UPPlatformSDK/UPPlatformSDK.h>
#import "DashboardData.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [UPPlatform sharedPlatform].enableNetworkLogging = YES;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)didUserPressLogin:(UIButton *)sender {
    
    sender.enabled = NO;
    
    //log user in
    [[UPPlatform sharedPlatform] startSessionWithClientID:@"ACXeQKq5yV8"
                                             clientSecret:@"ee3845e82f95d77cadfbbf50af2a3add6c6d2d67"
                                                authScope:UPPlatformAuthScopeAll
                                               completion:^(UPSession *session, NSError *error) {
                                                   
                                                   sender.enabled = YES;
                                                  
                                                   if (session != nil) {
                                                       
                                                       [self performSegueWithIdentifier:@"UserLogged" sender:nil];
                                                   }
                                               }];
   
}



@end