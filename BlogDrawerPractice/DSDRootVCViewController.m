//
//  DSDRootVCViewController.m
//  BlogDrawerPractice
//
//  Created by dasmer on 11/12/13.
//  Copyright (c) 2013 Columbia University. All rights reserved.
//

#import "DSDRootVCViewController.h"
#import "MMDrawerBarButtonItem.h"

@interface DSDRootVCViewController ()

@end

@implementation DSDRootVCViewController

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
    MMDrawerBarButtonItem *button = [[MMDrawerBarButtonItem alloc] initWithTarget:self action:@selector(leftDrawerButtonPress:)];
    self.navigationItem.leftBarButtonItem  = button;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Button Handlers
-(void)leftDrawerButtonPress:(id)sender{
    [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
}


@end
