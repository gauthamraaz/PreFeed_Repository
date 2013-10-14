//
//  MasterViewController.m
//  PresentationFeedback
//
//  Created by Gautham on 7/28/13.
//  Copyright (c) 2013 Gautham. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewManager.h"
#import "SecondViewController.h"
@interface MasterViewController ()

@end

@implementation MasterViewController
@synthesize moduleTitles;
@synthesize SecondViewController;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    moduleTitles= [[NSMutableArray alloc] initWithObjects:@"Introduction", @"Organization", @"Reasoning and Evidence",@"Presentational Aid(s)",@"Voice and Language",
                   @"Physical Delivery",@"Conclusion",nil];
    
    preCommentsDic = [[NSMutableDictionary alloc] init];
    commentsArray = [[NSMutableArray alloc] init];
    pointsArray = [[NSMutableArray alloc] init];
    quickGradesDic = [[NSMutableDictionary alloc] init];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 7;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text= moduleTitles[indexPath.row];
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    if(indexPath.row==0)
    {
        //load ViewController related to first module
        DetailViewManager *detailViewManager = (DetailViewManager*)self.splitViewController.delegate;
        // Create and configure a new detail view controller appropriate for the selection.
        UIViewController *firstVC = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewController"];
        detailViewManager.detailViewController = firstVC;
        
    }
    else if(indexPath.row==1)
    {
        // Get a reference to the DetailViewManager.
        // DetailViewManager is the delegate of our split view.
        DetailViewManager *detailViewManager = (DetailViewManager*)self.splitViewController.delegate;
        // Create and configure a new detail view controller appropriate for the selection.
        UIViewController *secondVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
        detailViewManager.detailViewController = secondVC;  // setter of the DetailViewManager will be called

    }
    else if(indexPath.row==2)
    {
        DetailViewManager *detailViewManager = (DetailViewManager*)self.splitViewController.delegate;
        // Create and configure a new detail view controller appropriate for the selection.
        UIViewController *ReasoningVC = [self.storyboard instantiateViewControllerWithIdentifier:@"ReasoningViewController"];
        detailViewManager.detailViewController = ReasoningVC;  // setter of the DetailViewManager will be called

    }
    else if(indexPath.row == 3)
    {
        
        DetailViewManager *detailViewManager = (DetailViewManager*)self.splitViewController.delegate;
        // Create and configure a new detail view controller appropriate for the selection.
        UIViewController *PresentationVC = [self.storyboard instantiateViewControllerWithIdentifier:@"PresentationalAidViewController"];
        detailViewManager.detailViewController = PresentationVC;  // setter of the DetailViewManager will be called
    }
    //VoiceAndLanguageViewController
    else if(indexPath.row == 4)
    {
        
        DetailViewManager *detailViewManager = (DetailViewManager*)self.splitViewController.delegate;
        detailViewManager.detailViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"VoiceAndLanguageViewController"];  // setter of the DetailViewManager will be called
    }
    //PhysicalDeliveryViewController
    else if(indexPath.row == 5)
    {
        
        DetailViewManager *detailViewManager = (DetailViewManager*)self.splitViewController.delegate;
        detailViewManager.detailViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PhysicalDeliveryViewController"];  
    }
    else if(indexPath.row == 6)
    {
        
        DetailViewManager *detailViewManager = (DetailViewManager*)self.splitViewController.delegate;
        detailViewManager.detailViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ConclusionViewController"];
    }
    
    
}

@end
