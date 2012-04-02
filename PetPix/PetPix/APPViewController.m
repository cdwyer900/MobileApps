//
//  APPViewController.m
//  PetPix
//
//  Created by Professor on 4/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "APPViewController.h"

@implementation APPViewController
@synthesize dogButton;
@synthesize catButton;
@synthesize petImage;
- (IBAction)dogButtonPressed:(id)sender {
    petImage.image=[UIImage imageNamed:@"happy-dog1.png"];
}
- (IBAction)catButtonPressed:(id)sender {
    petImage.image=[UIImage imageNamed:@"cat.png"];

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
    [self.view addSubview:petImage];
    petImage.contentMode=UIViewContentModeScaleAspectFit;
    
   	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setPetImage:nil];
    [self setDogButton:nil];
    [self setCatButton:nil];
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
