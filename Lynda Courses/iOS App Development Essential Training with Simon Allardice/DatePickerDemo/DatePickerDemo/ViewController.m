//
//  ViewController.m
//  DatePickerDemo
//
//  Created by Eude K Lesperance on 10/5/14.
//  Copyright (c) 2014 Eude K Lesperance. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

@end

@implementation ViewController
- (IBAction)displatDay:(id)sender {
    // grab the selected date on the date picker
    NSDate *chosen = [self.datePicker date];
    // create an NSDateFormatter
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"EEEE"];
    
    NSString *weekday = [formatter stringFromDate:chosen];
    NSString *msg = [[NSString alloc]initWithFormat:@"That's a %@", weekday];
    
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"What day is that?" message:msg delegate:nil cancelButtonTitle:@"Okay" otherButtonTitles:nil, nil];
    
    [alert show];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
