//
//  RSViewController.m
//  CALayerAdditions
//
//  Created by Josh Brown on 8/2/12.
//  Copyright (c) 2012 Roadfire Software. All rights reserved.
//

#import "RSViewController.h"
#import "CALayer+RSAdditions.h"

@interface RSViewController ()

@end

@implementation RSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    CALayer *blackBox = [[CALayer alloc] init];
    blackBox.backgroundColor = [UIColor blackColor].CGColor;
    blackBox.width = 40;
    blackBox.height = 40;
    [self.view.layer addSublayer:blackBox];
    
    CALayer *whiteBox = [[CALayer alloc] init];
    whiteBox.backgroundColor = [UIColor whiteColor].CGColor;
    whiteBox.width = 80;
    whiteBox.height = 80;
    whiteBox.left = blackBox.right;
    [self.view.layer addSublayer:whiteBox];
    
    CALayer *redBox = [[CALayer alloc] init];
    redBox.backgroundColor = [UIColor redColor].CGColor;
    redBox.width = 40;
    redBox.height = 40;
    redBox.right = whiteBox.right;
    redBox.top = whiteBox.bottom;
    [self.view.layer addSublayer:redBox];
    
    CALayer *yellowBox = [[CALayer alloc] init];
    yellowBox.backgroundColor = [UIColor yellowColor].CGColor;
    yellowBox.height = whiteBox.height;
    yellowBox.width = whiteBox.width;
    yellowBox.bottom = redBox.bottom;
    yellowBox.left = redBox.right;
    [self.view.layer addSublayer:yellowBox];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
