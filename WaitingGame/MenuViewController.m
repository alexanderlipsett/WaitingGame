//
//  MenuViewController.m
//  WaitingGame
//
//  Created by Alex Lipsett on 11/16/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import "MenuViewController.h"
#import "SelectViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

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

- (IBAction)englishButtonTapped:(id)sender
{
    NSLog(@"Enlgish Button Tapped");
    SelectViewController *selectViewController = [[SelectViewController alloc] init];
    [self.navigationController pushViewController:selectViewController animated:YES];
}

- (IBAction)spanishButtonTapped:(id)sender
{
    NSLog(@"Spanish Button Tapped");
    SelectViewController *selectViewController = [[SelectViewController alloc] init];
    [self.navigationController pushViewController:selectViewController animated:YES];
}


@end
