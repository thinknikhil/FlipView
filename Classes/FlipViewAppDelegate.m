//
//  FlipViewAppDelegate.m
//  FlipView
//
//  Created by Reefaq Mohammed on 16/07/11.
//  Copyright 2010 raw eng. All rights reserved.
//

#import "FlipViewAppDelegate.h"
#import "WallViewController.h"

@implementation FlipViewAppDelegate

@synthesize window;
@synthesize viewController;


+ (FlipViewAppDelegate *) instance {
	return (FlipViewAppDelegate *) [[UIApplication sharedApplication] delegate];
}

#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch. 
	viewController = [[WallViewController alloc] initWithNibName:nil bundle:nil];
	
    [self.window addSubview:viewController.view];
    [self.window makeKeyAndVisible];

	return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}


- (void)applicationWillTerminate:(UIApplication *)application {
    /*
     Called when the application is about to terminate.
     See also applicationDidEnterBackground:.
     */
}

-(void)showViewInFullScreen:(UIViewExtention*)viewToShow withModel:(MessageModel*)model{
	[viewController showViewInFullScreen:viewToShow withModel:model];
}
-(void)closeFullScreen {
	[viewController closeFullScreen];
}


#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
