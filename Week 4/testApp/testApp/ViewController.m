//
//  ViewController.m
//  testApp
//
//  Created by Jasmine Jamieson on 11/8/12.
//  Copyright (c) 2012 com.fullsail. All rights reserved.
//

#import "ViewController.h"

#define BUTTON_ZERO 0
#define BUTTON_ONE 1
#define BUTTON_TWO 2

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Background Color (firebrick4)
    self.view.backgroundColor = [UIColor colorWithRed:0.545 green:0.102 blue:0.102 alpha:1]; /*#8b1a1a*/
    
    //UserName Label
    userNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(15.0f, 25.0f, 85.0f, 20.0f)];
    if (userNameLabel != nil)
    {
        userNameLabel.backgroundColor = [UIColor clearColor];
        userNameLabel.text = @"Username:";
        userNameLabel.textColor = [UIColor whiteColor];
        
        [self.view addSubview:userNameLabel];
    }
    
    //TextField
    textField = [[UITextField alloc] initWithFrame:CGRectMake(125.0f, 20.0f, 190.0f, 30.0f)];
    if (textField != nil)
    {
        textField.placeholder = @"youremail@email.com";
        textField.borderStyle = UITextBorderStyleRoundedRect;

        [self.view addSubview:textField];
        
        //Makes keyboard disappear
        [textField addTarget:self action:@selector(hideKeyboard:) forControlEvents:UIControlEventEditingDidEndOnExit];
    }
    
    //Login Button
    loginButton = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    if (loginButton != nil)
    {
        loginButton.frame = CGRectMake(235.0f, 65.0f, 70.0f, 30.0f);
        [loginButton setTitle:@"Login" forState:UIControlStateNormal];
        [loginButton addTarget:self action:@selector(onClick:) forControlEvents: UIControlEventTouchUpInside];
        
        loginButton.tag = BUTTON_ZERO;
        [self.view addSubview:loginButton];
    }
    
    //Please Enter UserName Field
    pleaselabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 140.0f, 320.0f, 50.0f)];
    if (pleaselabel != nil)
    {
        pleaselabel.backgroundColor = [UIColor colorWithRed:0.133 green:0.192 blue:0.424 alpha:1]; /*#22316c*/
        pleaselabel.textColor = [UIColor colorWithRed:0.259 green:0.753 blue:0.984 alpha:1]; /*#42c0fb*/
        pleaselabel.text = @"Please Enter Your Username";
        pleaselabel.textAlignment = kCTRightTextAlignment;

        [self.view addSubview:pleaselabel];
    }
    // Date Button
    dateButton = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    if (dateButton != nil)
    {
        dateButton.frame = CGRectMake(15.0f, 235.0f, 105.00, 40.0f);
        [dateButton setTitle:@"Show Date" forState:UIControlStateNormal];
        [dateButton addTarget:self action:@selector(onClick:) forControlEvents: UIControlEventTouchUpInside];
        
        dateButton.tag = BUTTON_ONE;
        [self.view addSubview:dateButton];
    }
    // Info Button
    infoButton = [UIButton buttonWithType:UIButtonTypeInfoLight];
    if (infoButton != nil)
    {
        infoButton.frame = CGRectMake(15.0f, 320.0f, 20.0f, 20.0f);
        [infoButton addTarget:self action:@selector(onClick:) forControlEvents: UIControlEventTouchUpInside];
        
        infoButton.tag = BUTTON_TWO;
        [self.view addSubview:infoButton];
    }
    
    //Info Label
    infoButtonLabel = [[UILabel alloc] initWithFrame: CGRectMake(0.0f, 370.0f, 320.0f, 50.0f)];
    if (infoButtonLabel != nil)
    {
        infoButtonLabel.backgroundColor = [UIColor clearColor];
        infoButtonLabel.textAlignment = kCTRightTextAlignment;
        infoButtonLabel.numberOfLines = 2;
        
        [self.view addSubview:infoButtonLabel];
    }
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)onClick: (UIButton*)button
{
    //Date Button
    if (button.tag == BUTTON_ZERO)
    {
        NSString *userInput = [textField text];
        if (userInput.length != 0)
        {
            pleaselabel.backgroundColor = [UIColor colorWithRed:0.522 green:0.922 blue:0.416 alpha:1]; /*#85eb6a*/
            pleaselabel.textColor = [UIColor colorWithRed:0.008 green:0.243 blue:0.004 alpha:1]; /*#023e01*/
            
            NSString *userString = [[NSString alloc] initWithFormat: @"User: %@ has been logged in",userInput];
            pleaselabel.text = userString;
            pleaselabel.numberOfLines = 2;
            
        }
        else
        {
            pleaselabel.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:1]; /*#000000*/
            pleaselabel.textColor = [UIColor colorWithRed:0.933 green:0.933 blue:0 alpha:1]; /*#eeee00*/
            pleaselabel.text = @"Please enter a UserName";
        }
    }
    
    //Date Button
    if (button.tag == BUTTON_ONE)
    {
        // NSDate
        NSDate *date = [NSDate date];
        NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
        if (dateFormat != nil)
        {
            [dateFormat setDateStyle:NSDateFormatterLongStyle];
            [dateFormat setTimeStyle:NSDateFormatterFullStyle];
        }
        NSString *dateString = [dateFormat stringFromDate:date];
        
        // UIAlertView
        UIAlertView *dateAlert = [[UIAlertView alloc] initWithTitle:@"Date" message:dateString delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        [dateAlert show];
    }
    
    // Info Button
    if (button.tag == BUTTON_TWO)
    {
        infoButtonLabel.textColor = [UIColor whiteColor];
        infoButtonLabel.text = @"This application was made by: Jasmine Sloan";
    }
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
