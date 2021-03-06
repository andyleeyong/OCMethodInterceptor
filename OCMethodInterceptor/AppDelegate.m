//
//  AppDelegate.m
//  OCMethodInterceptor
//
//  Created by Aryan Gh on 8/5/13.
//  Copyright (c) 2013 Aryan Ghassemi. All rights reserved.
//

#import "AppDelegate.h"
#import "NSObject+MethodInterceptor.h"
#import "Car.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
	
	/*[Car interceptAllMethod:@selector(start) withExecuteBlock:^(id instance){
		NSLog(@"Intercept all instances");
	}andExecutionType:BlockExecutionTypeOverrideOriginalCall];*/
	
	Car *car = [[Car alloc] init];
	//[car start];
	
	// Should not call original
	/*[car interceptMethod:@selector(start) withExecuteBlock:^(id instance){
		NSLog(@"Overrides start");
	} andExecutionType:BlockExecutionTypeOverrideOriginalCall];
	NSString *result = [car start];
	
	NSLog(@"============================================");
	
	// Should call original first then the block
	[car interceptMethod:@selector(start) withExecuteBlock:^(id instance){
		NSLog(@"After start");
	} andExecutionType:BlockExecutionTypeAfterOriginalCall];
	[car start];
	
	NSLog(@"============================================");
	
	// Should not call block first then the original
	[car interceptMethod:@selector(start) withExecuteBlock:^(id instance){
		NSLog(@"Before start");
	} andExecutionType:BlockExecutionTypeBeforeOriginalCall];
	[car start];*/
	
	/*[car interceptMethod:@selector(stop) withExecuteBlock:^(id object){
		NSLog(@"Before Stop");
	}andExecutionType:BlockExecutionTypeBeforeOriginalCall];
	[car stop];
	
	//NSLog(@"%@", result);
	
	[car interceptMethod:@selector(start) withExecuteBlock:^(id instance){
		NSLog(@"Before start");
	} andExecutionType:BlockExecutionTypeBeforeOriginalCall];
	id something = [car start];*/
	
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
	// Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
	// Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
	// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
	// If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
	// Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
	// Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
	// Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
