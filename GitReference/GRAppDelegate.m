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

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    GRViewController *mainViewController = [GRViewController new];
    self.window.rootViewController = mainViewController;
    mainViewController.view.backgroundColor = [UIColor colorWithWhite:1 alpha:.8];
    
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController: mainViewController];
    self.window.rootViewController = navController;
    
    [[UINavigationBar appearance] setBarTintColor:UIColorFromRGB(0x067AB5)];
    
    
    [self.window makeKeyAndVisible];
    
    
    
    return YES;
}

@end
