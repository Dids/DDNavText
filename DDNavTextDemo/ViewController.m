//
//  ViewController.m
//  DDNavTextDemo
//
//  Created by Pauli Jokela on 16.12.2014.
//  Copyright (c) 2014 Didstopia. All rights reserved.
//

#import "ViewController.h"

#import "DDNavText.h"

@interface ViewController ()
{
    int counter;
}

@end

@implementation ViewController

- (NSString*)counterString
{
    counter++;
    return [NSString stringWithFormat:@"Hello #%i", counter];
}

- (IBAction)show:(id)sender
{
    [DDNavText showWithText:[self counterString]];
}
- (IBAction)showAndDismissWithDelay:(id)sender
{
    [DDNavText showWithText:[self counterString] dismissWithDelay:2.0];
}

- (IBAction)dismiss:(id)sender
{
    [DDNavText dismiss];
}
- (IBAction)dismissWithDelay:(id)sender
{
    [DDNavText dismissWithDelay:2.0];
}

- (void)viewDidLoad
{
    [self setTitle:@"DDNavTextDemo"];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
