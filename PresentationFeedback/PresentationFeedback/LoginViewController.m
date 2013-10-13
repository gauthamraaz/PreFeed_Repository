//
//  LoginViewController.m
//  PresentationFeedback
//
//  Created by Gautham on 7/28/13.
//  Copyright (c) 2013 Gautham. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

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
	// Do any additional setup after loading the view.
}

-(IBAction) loginButtonClicked:(id)sender
{
    NSLog(@"loginButtonClicked");
    //UISplitViewController *splitViewController = (UISplitViewController *)rootViewController;
    //[self.navigationController pushViewController:splitViewController animated:YES];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
