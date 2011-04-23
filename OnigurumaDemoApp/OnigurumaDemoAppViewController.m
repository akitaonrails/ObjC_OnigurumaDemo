//
//  OnigurumaDemoAppViewController.m
//  OnigurumaDemoApp
//
//  Created by Fabio Akita on 4/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "OnigurumaDemoAppViewController.h"
#import "OnigRegexp.h"

@implementation OnigurumaDemoAppViewController
@synthesize initialText;
@synthesize regexPattern;
@synthesize result;

- (void)dealloc
{
    [initialText release];
    [regexPattern release];
    [result release];
    [result release];
    [result release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [self setInitialText:nil];
    [self setRegexPattern:nil];
    [result release];
    result = nil;
    [self setResult:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)runRegex:(id)sender {
    OnigRegexp* regex = [OnigRegexp compile:[regexPattern text]];
    OnigResult* res = [regex match:[initialText text]];
    NSMutableString* tmpResult = [NSMutableString stringWithString:@""];
    for(int i = 0; i < [res count]; i++) {
        [tmpResult appendString:@"("];
        [tmpResult appendString:[res stringAt:i]];
        [tmpResult appendString:@")"];
    }
    [result setText:tmpResult];
}
@end
