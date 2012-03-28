//
//  APPViewController.m
//  CIT342V3
//
//  Created by Professor on 3/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "APPViewController.h"

@implementation APPViewController
@synthesize yellowButton;
@synthesize redButton;
@synthesize blueButton;
- (IBAction)blueButtonpress:(id)sender {
    
    self.view.backgroundColor= [UIColor blueColor];
    
}
- (IBAction)redButtonpresses:(id)sender {
    
    self.view.backgroundColor= [UIColor redColor];

}
- (IBAction)pressYellowbutton:(id)sender {
    
    self.view.backgroundColor= [UIColor yellowColor];


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setBlueButton:nil];
    [self setRedButton:nil];
    [self setYellowButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
