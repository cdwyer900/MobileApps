//
//  APPViewController.m
//  SayHello
//
//  Created by Professor on 3/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "APPViewController.h"

@implementation APPViewController
@synthesize messageLabel;
@synthesize nameTextField;
@synthesize helloButton;
@synthesize clearButton;

- (BOOL) textFieldShouldReturn:(UITextField *)textField {
    
    [nameTextField resignFirstResponder];
    return YES;
}

- (IBAction)pressClear:(id)sender {
   // nameTextField.text=@"";
    nameTextField.text=nil;
    //reset label too
}
- (IBAction)helloPress:(id)sender {
    /*

    
    messageLabel.text = [NSString stringWithFormat: @"Hello, %@ !",nameTextField.text];
                      
    */
    if ([nameTextField.text length]==0)
    {
        messageLabel.text = @"Enter your name please";
                             
    }
    else
    {
        messageLabel.text = [NSString stringWithFormat: @"Hello, %@ !",nameTextField.text];
                             
    }
        
    
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
    nameTextField.delegate=self;
}

- (void)viewDidUnload
{
    [self setMessageLabel:nil];
    [self setNameTextField:nil];
    [self setHelloButton:nil];
    [self setClearButton:nil];
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
