//
//  DetailViewController.m
//  PresentationFeedback
//
//  Created by Gautham on 7/28/13.
//  Copyright (c) 2013 Gautham. All rights reserved.
//

#import "DetailViewController.h"
#import "AppDelegate.h"
#import <sqlite3.h>

@interface DetailViewController ()

@end


@implementation DetailViewController
@synthesize quickGrades;

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
    
    sqlite3 *database;
    
    NSString *stmt;
  
    [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(targetMethod:) userInfo:nil repeats:YES];
    
    
    if(sqlite3_open([[appDelegate getDBPath] UTF8String], &database) == SQLITE_OK)
    {
    appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
        
    stmt = @"INSERT INTO Student (StuLastName,StuFirstName,Section) VALUES ('Theo','raaz','Section007')";
//    sqlite3_open([[appDelegate getDBPath] UTF8String], &database);
    
    sqlite3_exec(database, [stmt  UTF8String],NULL, NULL, NULL);
//        sqlite3_exec(<#sqlite3 *#>, <#const char *sql#>, <#int (*callback)(void *, int, char **, char **)#>, <#void *#>, <#char **errmsg#>)
    sqlite3_close(database);
    }
    
    label = [[UILabel alloc] init];
    
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSLocale *twentyFour = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
    formatter.locale=twentyFour;
    //NSDate *testDate=[NSDate date];
    [formatter setDateFormat:@"HH:mm:ss "];
    NSString *dt = [formatter stringFromDate:[NSDate date]];
    NSDateFormatter *dateFormatter = [self getDateFormatter];
    NSDate *currentDate=[dateFormatter dateFromString:dt];
    
    
    label.text = [NSString stringWithFormat:@"%@",currentDate];
    label.frame = CGRectMake(200, 200, 200, 30);
    label.backgroundColor = [UIColor greenColor];
    //[self.view addSubview:label];
    
    
    quickGrades = [[NSMutableArray alloc] initWithObjects:@"Gets attention", @"States thesis", @"Topic relavant to audience",@"Establishes credibility",@"Previews main points",
                   @"Orients audience",nil];
    NSString * grades = @"";
    
    for (int i = 0; i < [quickGrades count]; i++) {
        grades = [grades stringByAppendingFormat:@"%@%@",[quickGrades objectAtIndex:i],@"\n"];
            }
    
    for (int j=0; j<[preCommentsDic count]; j++) {
        
        UIButton *button = (UIButton*)[self.view viewWithTag:[[preCommentsDic objectForKey:[[preCommentsDic allKeys] objectAtIndex:j]] integerValue]];
        [button setImage:[UIImage imageNamed:@"CheckBoxChecked.jpeg"] forState:UIControlStateNormal];
        [button setSelected:YES];
    }
    
    
  //  _QuickGradeLabel.text = grades;
    
    
	// Do any additional setup after loading the view.
}

-(NSDateFormatter *)getDateFormatter{
    
    // NSLocale *twentyFour = [[NSLocale alloc] initWithLocaleIdentifier:@"en_GB"];
    NSDateFormatter *dateFormatter1 = [[NSDateFormatter alloc] init];
    [dateFormatter1 setDateFormat:@"HH:mm:ss"];
    NSLocale *twentyFour = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
    dateFormatter1.locale=twentyFour;
    [dateFormatter1 setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"GMT+6"]];
    [dateFormatter1 setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0]];
    
    return dateFormatter1;
}

-(void) targetMethod:(NSTimer*)timer
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSLocale *twentyFour = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
    formatter.locale=twentyFour;
    //NSDate *testDate=[NSDate date];
    [formatter setDateFormat:@"HH:mm:ss"];
    NSString *dt = [formatter stringFromDate:[NSDate date]];
    NSDateFormatter *dateFormatter = [self getDateFormatter];
  //  NSDate *currentDate=[dateFormatter dateFromString:dt];
    
    label.text = [NSString stringWithFormat:@"%@",[NSDate date]];
//    NSLog(@"Time : %@", [NSDate date]);
    
    
}

//-(UIViewController *)quickView:(UIViewController *) quickView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    static NSString *CellIdentifier = @"QuickGradeLabel";
//    UIViewController *cell = [UIViewController de]
//}

- (void) viewDidDisappear:(BOOL)animated
{
    NSLog(@"Gone");
    
}
-(void) viewDidAppear:(BOOL)animated
{
    NSLog(@"Came");
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)checkButton:(id)sender {
    //if()
    
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



@end











