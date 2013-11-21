//
//  TitleViewController.m
//  WaitingGame
//
//  Created by Derrick J Chie on 11/21/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import "TitleViewController.h"
#import "MenuViewController.h"

@interface TitleViewController ()

@end

@implementation TitleViewController

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)beginButtonTapped:(id)sender
{
    MenuViewController *menuViewController = [[MenuViewController alloc] init];
    [self.navigationController pushViewController:menuViewController animated:YES];
}

@end
