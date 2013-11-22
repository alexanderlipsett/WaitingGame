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
    
    self.view.backgroundColor = [UIColor colorWithRed:244/255.0f green:241/255.0f blue:215/255.0f alpha:1.0f];
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
