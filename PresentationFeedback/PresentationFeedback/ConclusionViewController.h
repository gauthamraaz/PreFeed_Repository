//
//  ConclusionViewController.h
//  PresentationFeedback
//
//  Created by Gautham raaz on 7/28/13.
//  Copyright (c) 2013 Gautham raaz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ConclusionViewController : UIViewController
{
    bool checked;
}
@property (weak, nonatomic) IBOutlet UIButton *CheckBoxButton;
- (IBAction)checkBox:(id)sender;

@end
