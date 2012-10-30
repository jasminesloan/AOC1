//
//  ViewController.m
//  testApp
//
//  Created by Jasmine Jamieson on 10/29/12.
//  Copyright (c) 2012 com.fullsail. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Background Color (firebrick4) 
    self.view.backgroundColor = [UIColor colorWithRed:0.545 green:0.102 blue:0.102 alpha:1]; /*#8b1a1a*/
    
    title = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 30.0f)];
    //title call
    if (title != nil)
    {
        //title background color (ash)
        title.backgroundColor = [UIColor colorWithRed:0.776 green:0.765 blue:0.71 alpha:1]; /*#c6c3b5*/
        //title of book
        title.text = @"50 Shades of Grey";
        //title text alignment centered
        title.textAlignment = UITextAlignmentCenter;
    }
    
    [self.view addSubview:title];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
