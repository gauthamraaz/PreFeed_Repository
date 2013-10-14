//
//  ReasoningViewController.m
//  PresentationFeedback
//
//  Created by Gautham raaz on 7/28/13.
//  Copyright (c) 2013 Gautham raaz. All rights reserved.
//

#import "ReasoningViewController.h"

@interface ReasoningViewController ()

@end

@implementation ReasoningViewController

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
    
    for (int j=0; j<[preCommentsDic count]; j++) {
        
        UIButton *button = (UIButton*)[self.view viewWithTag:[[preCommentsDic objectForKey:[[preCommentsDic allKeys] objectAtIndex:j]] integerValue]];
        [button setImage:[UIImage imageNamed:@"CheckBoxChecked.jpeg"] forState:UIControlStateNormal];
        [button setSelected:YES];
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)checkButton:(id)sender {
    
    NSLog(@"clicked tag: %ld", (long)[sender tag]);
    
    UIButton *checkButton = (UIButton*)sender;
    
    checkButton.selected = !checkButton.selected;
    
    if(checkButton.selected)
    {
        [checkButton setImage:[UIImage imageNamed:@"CheckBoxChecked.jpeg"] forState:UIControlStateNormal];
        [preCommentsDic setObject:[NSString stringWithFormat:@"%ld",(long)[sender tag]] forKey:[NSString stringWithFormat:@"%ld",(long)[sender tag]]];
        
    }
    else
    {
        [checkButton setImage:[UIImage imageNamed:@"CheckBox.jpeg"] forState:UIControlStateNormal];
        [preCommentsDic removeObjectForKey:[NSString stringWithFormat:@"%ld",(long)[sender tag]]];
        
    }
    
    
    NSLog(@"preCommentsDic : %@", preCommentsDic);
    
}

- (IBAction)check:(id)sender {
}
@end
