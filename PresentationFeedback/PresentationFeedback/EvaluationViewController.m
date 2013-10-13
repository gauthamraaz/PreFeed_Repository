//
//  EvaluationViewController.m
//  PresentationFeedback
//
//  Created by Presentation Feedback on 7/29/13.
//  Copyright (c) 2013 Gautham raaz. All rights reserved.
//

#import "EvaluationViewController.h"
#import "DetailViewManager.h"
@interface EvaluationViewController ()

@end

@implementation EvaluationViewController
@synthesize DropBoxButton;

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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveToDropbox:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"http://www.dropbox.com"]];
    
    DetailViewManager *detailViewManager = (DetailViewManager*)self.splitViewController.delegate;
    // Create and configure a new detail view controller appropriate for the selection.
    UIViewController *firstVC = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewController"];
    detailViewManager.detailViewController = firstVC;
}
@end
