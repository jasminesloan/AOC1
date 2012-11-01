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
        title.text = @"Fifty Shades of Grey";
        
        //title text alignment centered
        title.textAlignment = kCTRightTextAlignment;
    }
    
    [self.view addSubview:title];
    
    //Author label
      author = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 60.0f, 95.0f, 20.0f)];
    
    if (author != nil) {
    //author background (mistyrose4)
        author.backgroundColor = [UIColor colorWithRed:0.545 green:0.49 blue:0.482 alpha:1]; /*#8b7d7b*/
        
        //author label:
        author.text = @"Author:";
        
        //author text alignment right 
        author.textAlignment = kCTCenterTextAlignment;
        
        //author text color (snow2)
        author.textColor = [UIColor colorWithRed:0.933 green:0.914 blue:0.914 alpha:1]; /*#eee9e9*/
    }
    [self.view addSubview:author];
    
    //Author Name label
    authorName = [[UILabel alloc] initWithFrame:CGRectMake(105.0f, 60.0f, 215.0f, 20.0f)];
    
    if (authorName != nil) {
        //author name background (verydarkbrown)
        authorName.backgroundColor = [UIColor colorWithRed:0.361 green:0.251 blue:0.2 alpha:1]; /*#5c4033*/
        //Author name
        authorName.text = @"E.L. James";
        
        //author name alignment left
        authorName.textAlignment = kCTLeftTextAlignment;
        
        //author name color (slate blue)
        authorName.textColor = [UIColor colorWithRed:0 green:0.498 blue:1 alpha:1]; /*#007fff*/
    }
    [self.view addSubview:authorName];
    
    //Published label
    published = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 90.0f, 95.0f, 20.0f)];
    
    if (published != nil) {
        //published background (ivoryblack)
        published.backgroundColor = [UIColor colorWithRed:0.161 green:0.141 blue:0.129 alpha:1]; /*#292421*/
        
        //published label
        published.text = @"Published:";
        
        //published alignment left
        published.textAlignment = kCTCenterTextAlignment;
        
        //published color (turquoise)
        published.textColor = [UIColor colorWithRed:0.678 green:0.918 blue:0.918 alpha:1]; /*#adeaea*/
    }
    [self.view addSubview:published];
    
    //Published Date label
    publishedLabel = [[UILabel alloc] initWithFrame:CGRectMake(105.0f, 90.0f, 215.0f, 20.0f)];
    
    //Published Date background (darkolivegreen)
    if (publishedLabel != nil){
    publishedLabel.backgroundColor = [UIColor colorWithRed:0.31 green:0.31 blue:0.184 alpha:1]; /*#4f4f2f*/
    
    
    //Published Label text
    publishedLabel.text = @"March 5, 2012";
    
    //Published Text alignment left
    publishedLabel.textAlignment = kCTLeftTextAlignment;
    
    //Published Label color (light blue)
        publishedLabel.textColor = [UIColor colorWithRed:0.753 green:0.851 blue:0.851 alpha:1]; /*#c0d9d9*/
    }
    [self.view addSubview:publishedLabel];
    
    //Summary label
    summary = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 120.0f, 95.0f, 20.0f)];
    
    //Summary background (blackberry)
    if (summary != nil){
        summary.backgroundColor = [UIColor colorWithRed:0.227 green:0.227 blue:0.22 alpha:1]; /*#3a3a38*/
        
        
        //Summary label text
        summary.text = @"Summary:";
        
        //Summary Text alignment left
        summary.textAlignment = kCTLeftTextAlignment;
        
        //Summary label color (Quartz)
        summary.textColor = [UIColor colorWithRed:0.851 green:0.851 blue:0.953 alpha:1]; /*#d9d9f3*/
    }
    [self.view addSubview:summary];
    
    //Story Summary label
    bookSummary = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 150.0f, 320.0f, 150.0f)];
    
    //book summary background (tank)
    if (bookSummary != nil) {
        bookSummary.backgroundColor = [UIColor colorWithRed:0.38 green:0.369 blue:0.247 alpha:1]; /*#615e3f*/
        
        //book summary
        bookSummary.text = @"Fifty Shades of Grey, follows recent college graduate Anastasia Steele as she ventures into an awkward relationship with a slightly older, emotionally-damaged, billionaire tycoon Christian Grey, and the ups and downs of their relationship.";
        
        //multiple lines label
        bookSummary.numberOfLines = 8;
        
        //book summary text alignment center
        bookSummary.textAlignment = kCTRightTextAlignment;
        
        //book summary text color (light wood)
        bookSummary.textColor =  [UIColor colorWithRed:0.914 green:0.761 blue:0.651 alpha:1]; /*#e9c2a6*/
    }
    [self.view addSubview:bookSummary];
    
    // Creating the list label
    list = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 310.0f, 95.0f, 20.0f)];
    
    //list background color (light steelblue4)
    if (list != nil) {
        list.backgroundColor = [UIColor colorWithRed:0.431 green:0.482 blue:0.545 alpha:1]; /*#6e7b8b*/
        list.text = @"Item Lists:";
        
        //list text alignment left
        list.textAlignment = kCTLeftTextAlignment;
        
        //list text color (light grey)
        list.textColor = [UIColor colorWithRed:0.659 green:0.659 blue:0.659 alpha:1]; /*#a8a8a8*/
    }
    [self.view addSubview:list];
    
    // list item array
    listItem1 = [[NSString alloc] initWithString:@"Red Room"];
    listItem2 = [[NSString alloc] initWithString:@"Audi"];
    listItem3 = [[NSString alloc] initWithString:@"'Fifty Shades'"];
    listItem4 = [[NSString alloc] initWithString:@"Seattle"];
    listItem5 = [[NSString alloc] initWithString:@"BSDM"];
    
    //items NSArray
      listItemArray = [NSArray arrayWithObjects:listItem1, listItem2, listItem3, listItem4, listItem5, nil];
    [self.view addSubview:list];
    
    // NSMutableString
    itemList = [[NSMutableString alloc] initWithCapacity:5];
    
    // For loop to loop through each item and add a ", " after each item except the last
    for (int i =0; i < 5; i++) {
        [itemList appendString:[listItemArray objectAtIndex:i]];
        if (i < listItemArray.count -1) {
            [itemList appendString:@", "];
        }
    }
    
    //list label
    items = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 350.0f, 340.0f, 100.0f)];
    
    //item background (blue spider)
    if (items != nil) {
        items.backgroundColor = [UIColor colorWithRed:0.149 green:0.275 blue:0.427 alpha:1]; /*#26466d*/
        
        items.text = itemList;
        
        //multiple lines label
        items.numberOfLines = 3;
        
        //items text alignment center
        items.textAlignment = kCTRightTextAlignment;
        
        //items text color (silver)
        items.textColor = [UIColor colorWithRed:0.902 green:0.91 blue:0.98 alpha:1]; /*#e6e8fa*/
    }
    [self.view addSubview:items];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
