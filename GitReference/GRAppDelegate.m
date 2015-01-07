//
//  GRAppDelegate.m
//  GitReference
//
//  Created by Joshua Howland on 5/12/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "GRAppDelegate.h"
#import "GRViewController.h"

@implementation GRAppDelegate




- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    GRViewController *mainViewController = [GRViewController new];
    self.window.rootViewController = mainViewController;
    mainViewController.view.backgroundColor = [UIColor colorWithWhite:.2 alpha:.2];
    
    
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
