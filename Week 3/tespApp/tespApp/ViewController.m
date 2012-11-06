//
//  ViewController.m
//  tespApp
//
//  Created by Jasmine Jamieson on 11/4/12.
//  Copyright (c) 2012 com.fullsail. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//Add function to call
- (int)Add:(NSInteger)intSix plus:(NSInteger)intTwenty
{
    return (intSix + intTwenty);
}

//BOOL compare function
- (BOOL)Compare:(NSInteger)intZero isEqual:(NSInteger)intFour
{
    if (intZero == intFour)
    {
        return YES;
    }
    else
    {
        return NO;
    }
}

//Append function to be called
- (NSString*)Append:(NSString*)stringOne appendWith:(NSString*)stringTwo
{
    NSMutableString *appendString = [[NSMutableString alloc] initWithString:stringOne];
    NSString *newString = [appendString stringByAppendingString:stringTwo];
    return newString;
}

// DisplayAlertWithString function
- (void)displayAlertWithString:(NSString*)alertString
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Hello!" message:alertString delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    if (alertView != nil) {
        [alertView show];
    }
}
// Loading screen, really just a filler
- (void)viewDidLoad
{
    {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Loading" message:@"Please Wait...." delegate:nil cancelButtonTitle:nil otherButtonTitles:nil];
        if (alertView != nil)
        {
            [alertView show];
            UIActivityIndicatorView *indicator = [[UIActivityIndicatorView alloc]
                initWithActivityIndicatorStyle: UIActivityIndicatorViewStyleWhiteLarge];
            if (indicator != nil)
            {
                indicator.center = CGPointMake((alertView.bounds.size.width/2.0f), (alertView.bounds.size.height/2.0f) + 30.0f);
                [indicator startAnimating];
                [alertView addSubview:indicator];
            }
        }
        for (int i=0; i<10000000; i++)
        {
        }
            [alertView dismissWithClickedButtonIndex:0 animated:TRUE];
    }
    
    //Calling addition function to pass through
    int addSum = [self Add:6 plus:20];

    NSNumber *total = [[NSNumber alloc] initWithInt:addSum];

    NSString *addMessage = [NSString stringWithFormat:@"My name is Jasmine, and I'm "];
    NSString *numString = [total stringValue];
    NSString *addAppendMessage = [self Append:addMessage appendWith:numString];
        [self displayAlertWithString:addAppendMessage];
    
//Calling compare function, if the answer is YES or TRUE, alert will display
    int numOfDays = 0;
    int numofDaysLeft = 4;
    BOOL intCompare = [self Compare:numOfDays isEqual:numofDaysLeft];
    NSString *compareString = [NSString stringWithFormat:@"Are there %d days left to vote? %d, %@", numofDaysLeft, numOfDays, intCompare? @"YES":@"No"];
        [self displayAlertWithString:compareString];
    
// Append call function to display 
    NSString *stringToAppend = [self Append:@"Welcome to my" appendWith:@" testApp!"];

    [self displayAlertWithString:stringToAppend];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
