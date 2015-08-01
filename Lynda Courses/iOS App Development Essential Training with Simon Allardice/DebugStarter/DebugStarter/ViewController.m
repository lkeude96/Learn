//
//  ViewController.m
//  DebugStarter
//
//  Created by Simon Allardice on 11/14/13.
//  Copyright (c) 2013 Simon Allardice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end

@implementation ViewController

- (int) calculateFirstValue {
	return 10000;
}

- (int) calculateSecondValue {
    
	// imagine a lot of complex code here!
    
    int a = 10;
    int b = [self calculateFirstValue];
    
    for (int i = 0; i < 5000; i++) {
        b++;
    }
    
	return a;
}

- (IBAction) performCalculation: (id) sender {
    
	int firstVal = [self calculateFirstValue];
	int secondVal = [self calculateSecondValue];
	
	int result = firstVal / secondVal;
	
	NSString *msg = [[NSString alloc] initWithFormat:@"The result is %d", result];
	
    [[self resultLabel] setText:msg];
	
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
