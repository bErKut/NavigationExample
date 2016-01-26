//
//  AppDelegate.m
//  NavigationExample
//
//  Created by spb-VBerkuta on 25/01/16.
//  Copyright © 2016 spb-VBerkuta. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewControllerA.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.viewController = [[ViewControllerA alloc] initWithNibName:NSStringFromClass([ViewControllerA class]) bundle:nil];
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:self.viewController];
    self.window.rootViewController = navController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
