//
//  ConclusionViewController.m
//  PresentationFeedback
//
//  Created by Gautham raaz on 7/28/13.
//  Copyright (c) 2013 Gautham raaz. All rights reserved.
//

#import "ConclusionViewController.h"

@interface ConclusionViewController ()

@end

@implementation ConclusionViewController
@synthesize CheckBoxButton;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    checked = NO;
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)checkBox:(id)sender {
    if(!checked)
    {
        [CheckBoxButton setImage:[UIImage imageNamed:@"CheckBoxChecked .jpeg"] forState:UIControlStateNormal];
        checked= YES;
    }
    else if(checked)
    {
        [CheckBoxButton setImage:[UIImage imageNamed:@"CheckBox.jpeg"] forState:UIControlStateNormal];
        checked= NO;
    }
    

}
@end
