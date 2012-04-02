//
//  APPViewController.m
//  GuessingGame
//
//  Created by Professor on 4/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "APPViewController.h"

@implementation APPViewController
@synthesize resetButton;
@synthesize guessMessage;
@synthesize guessTextField;
@synthesize guessButton;

- (BOOL) textFieldShouldReturn:(UITextField *)textField {
    
    [guessTextField resignFirstResponder];
    return YES;
}
- (IBAction)resetGame:(id)sender {
    //create secret number
    guess=0;
    secretNumber= (rand() %10)+1;
    guessMessage.text=@"Enter your guess (between 1 and 10).";
}
- (IBAction)guessButtonPress:(id)sender {
    //code to get guess
    guess=[guessTextField.text intValue];
           
    if (guess == secretNumber)
    {
        //win
        guessMessage.text=@"You guessed it!";
    }
    else
    {
        guessMessage.text=@"Nope, guess again.";

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
    guessTextField.delegate = self;
    //create secret number
    secretNumber= (rand() %10)+1;
    guess=0;
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setGuessMessage:nil];
    [self setGuessTextField:nil];
    [self setGuessButton:nil];
    
    [self setResetButton:nil];
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
