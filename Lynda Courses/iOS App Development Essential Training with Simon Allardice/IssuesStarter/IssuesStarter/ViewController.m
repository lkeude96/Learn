//
//  ViewController.m
//  IssuesStarter
//
//  Created by Simon Allardice on 11/14/13.
//  Copyright (c) 2013 Simon Allardice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

// one outlet
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@end

@implementation ViewController

// and one action
- (IBAction)refreshTime:(id)sender {
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"HH:mm"];
    NSString *timeString = [formatter stringFromDate:[NSDate date]];
    [[self timeLabel]setText:timeString];
}
- (IBAction)changeLabel:(id)sender {
    
    NSLog(@"in the method");
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
