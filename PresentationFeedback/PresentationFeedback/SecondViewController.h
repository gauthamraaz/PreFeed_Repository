//
//  SecondViewController.h
//  PresentationFeedback
//
//  Created by Gautham on 7/28/13.
//  Copyright (c) 2013 Gautham. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
{
    bool checked;
}
@property (weak, nonatomic) IBOutlet UIButton *CheckBoxButton;

- (IBAction)checkBox:(id)sender;


@end
