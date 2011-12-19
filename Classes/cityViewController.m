//
//  cityViewController.m
//  Navigationbar
//
//  Created by Xubing Zhang on 11-12-19.
//  Copyright 2011 Ad-Sage. All rights reserved.
//

#import "cityViewController.h"
#import"cityDetailViewController.h"
#import"TitleView.h"
@implementation cityViewController



// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	
	
		//add the segmentText Content
	NSArray *segmentTextContent = [NSArray arrayWithObjects:
								   @"Image",
								   @"Text",
								   @"Video",
								   nil];
	UISegmentedControl *segmentedControl = [[UISegmentedControl alloc] initWithItems:segmentTextContent];
	segmentedControl.selectedSegmentIndex = 1;
	segmentedControl.autoresizingMask = UIViewAutoresizingFlexibleWidth;
	segmentedControl.segmentedControlStyle = UISegmentedControlStyleBezeled;//effect the style
	segmentedControl.frame = CGRectMake(0, 0, 300, 30);
	segmentedControl.tintColor =[UIColor brownColor]; //set the color of the segmentedContorl
	[segmentedControl addTarget:self action:@selector(segmentAction:) forControlEvents:UIControlEventValueChanged];
	self.navigationItem.titleView = segmentedControl;
	[segmentedControl release];
	
	
		//add the leftButton with the StyleBordered.
	UIBarButtonItem *discountButton = [[UIBarButtonItem alloc] initWithTitle:@"Info" 
																	   style:UIBarButtonItemStyleBordered target:self action:@selector(discount:)];
	self.navigationItem.leftBarButtonItem = discountButton;
	[discountButton release];
	
	
	
    [super viewDidLoad];
}

- (void)segmentAction:(id)sender
{
	// The segmented control was clicked, handle it here 
	UISegmentedControl *segmentedControl = (UISegmentedControl *)sender;
	NSLog(@"Segment clicked: %d", segmentedControl.selectedSegmentIndex);
}



-(void)discount:(id)sender
{
	
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


#pragma mark --
#pragma mark implementation	 the selectCity	
-(void)selectCity:(id)sender
{
	cityDetailViewController *cityDetail = [[cityDetailViewController alloc] init];
	cityDetail.title=@"北京欢迎你";
	
	[self.navigationController pushViewController:cityDetail animated:YES];
	[cityDetail release];
	
}

@end
