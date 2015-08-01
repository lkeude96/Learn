//
//  ViewController.m
//  AlertMe
//
//  Created by Eude K Lesperance on 10/3/14.
//  Copyright (c) 2014 Eude K Lesperance. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIAlertView *myAlert =[[UIAlertView alloc] initWithTitle:@"Immediate Alert!" message:@"Here's you immediate alert message. It should appear when the app launches." delegate:nil cancelButtonTitle:@"Okay" otherButtonTitles:nil, nil];
    
    [myAlert show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
