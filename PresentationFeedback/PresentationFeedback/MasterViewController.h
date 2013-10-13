//
//  MasterViewController.h
//  PresentationFeedback
//
//  Created by Gautham on 7/28/13.
//  Copyright (c) 2013 gautham. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Constants.h"

@interface MasterViewController : UITableViewController
{
    NSMutableArray *moduleTitles;
    UIViewController *SecondViewController;
}
@property (nonatomic, strong) NSMutableArray *moduleTitles;
@property (nonatomic, strong) UIViewController *SecondViewController;
@end
