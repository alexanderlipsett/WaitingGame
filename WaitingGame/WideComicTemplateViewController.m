//
//  WideComicTemplateViewController.m
//  WaitingGame
//
//  Created by Alex Lipsett on 11/21/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import "WideComicTemplateViewController.h"

@interface WideComicTemplateViewController ()

@end

@implementation WideComicTemplateViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id)initWithTemplate:(WideComicTemplate *)template
{
    self = [super self];
    
    if (self)
    {
        self.template = template;
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    UIImage *comicImage = [UIImage imageNamed:self.template.comicName];
    [self.comic setImage:comicImage];
    
    [self.text setText:self.template.text];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nextPressed:(id)sender {
}
@end
