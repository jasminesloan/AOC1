//
//  AppDelegate.m
//  testApp
//
//  Created by Jasmine Jamieson on 10/22/12.
//  Copyright (c) 2012 com.fullsail. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    //Week 1:
    
    BOOL playSong = YES;
    BOOL stopSong = NO;
    int songsPlayed = 1;
    int songsInQue = 1;
    int songsNeeded = 25;
    float totalTime = 5.50f;
    float timeRemaining = 4.5f;
    
    
    //Simple call function
    NSLog(@"Jasmine Sloan, Project:1 AOC1, 1211 Term ");
    
    //Cast to Int
    NSLog(@"I'm Jasmine, and I'm am the DJ for %d hours (really %.2f, but I'm tired) at Central Station tonight",(int)totalTime, totalTime);
    
    // Loops through what songs has been played
    for (songsPlayed = 1; songsPlayed < 5; songsPlayed++) {
        // Loops through the songs in que, that have been played, and how many more to close the set
        for (songsInQue = 1; songsInQue < 5; songsInQue++) {
            if (songsInQue < 15) {
                NSLog(@"Songs in Que for the set, %d has been played, need to add more to close this set", songsInQue);
            }
            else if (songsInQue == 25) {
                NSLog(@"When %d have been played, the set will be over.", songsNeeded);
            }
        }
        NSLog(@"Set of %d songs is done, time to go home!", songsNeeded );
    }
    
    // While, And, and BOOL statements
    // Loops through how many students are left in the degree program counting down by 3's
    while (songsNeeded > 0) {
        if (songsNeeded % 5 == 0) {
            NSLog(@"This is a long set, only %d songs remain from the original set.", songsNeeded);
        }
        // Displays 5 songs are left
        else if (songsNeeded < 6) {
            NSLog(@"It is now down to the remaining %d songs for the set.", songsNeeded);
            break;
        }
        songsNeeded--;
    }
    
    
    // Conditional else, else if, else statments
    if (songsInQue == 10  && playSong == YES) {
        NSLog(@"I have %d songs left in que, I need to add more.", songsInQue);
    }
    else if (songsInQue < 5 && stopSong == NO) {
        NSLog(@"Since I have %.2f hours left, I will play %d songs to continue the set until the end.", timeRemaining, songsInQue);
    }
    else {
        NSLog(@"I have played %d songs so far.", songsPlayed);
    }
    
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



