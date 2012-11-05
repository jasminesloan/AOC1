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

- (void)viewWillAppear:(BOOL)animated
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

- (void)viewDidLoad
{
        
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
