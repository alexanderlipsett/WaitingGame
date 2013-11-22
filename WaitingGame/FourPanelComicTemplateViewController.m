//
//  FourPanelComicTemplateViewController.m
//  WaitingGame
//
//  Created by Alex Lipsett on 11/21/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import "FourPanelComicTemplateViewController.h"

@interface FourPanelComicTemplateViewController ()

@end

@implementation FourPanelComicTemplateViewController

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
    
    UIImage *one = [UIImage imageNamed:self.template.comicOne];
    [self.comicOne setImage:one];
    
    UIImage *two = [UIImage imageNamed:self.template.comicTwo];
    [self.comicTwo setImage:two];
    
    UIImage *three = [UIImage imageNamed:self.template.comicThree];
    [self.comicThree setImage:three];
    
    UIImage *four = [UIImage imageNamed:self.template.comicFour];
    [self.comicFour setImage:four];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(id)initWithTemplate:(FourPanelComicTemplate *)template
{
    self = [super self];
    if (self)
    {
        self.template = template;
    }
    return self;
}

- (IBAction)nextPressed:(id)sender {
    
}
@end
