//
//  ViewController.m
//  ResizableImage
//
//  Created by Hiroki Kouchi on 12/07/02.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (void)configureButtonImage;
@end

@implementation ViewController
{
    UIImage *image;
}

@synthesize button;
@synthesize sliderTop;
@synthesize sliderLeft;
@synthesize sliderBottom;
@synthesize sliderRight;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    image = [UIImage imageNamed:@"button.png"];
    [self configureButtonImage];
}

- (void)viewDidUnload
{
    [self setSliderTop:nil];
    [self setSliderLeft:nil];
    [self setSliderBottom:nil];
    [self setSliderRight:nil];
    [self setButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)configureButtonImage
{
    CGFloat top = 0.0;
    CGFloat left = 10.0;
    CGFloat bottom = 0.0;
    CGFloat right = 10.0;
    
//    top = sliderTop.value;
//    left = sliderLeft.value;
//    bottom = sliderBottom.value;
//    right = sliderRight.value;
    
    UIImage *resizedImage = [image resizableImageWithCapInsets:UIEdgeInsetsMake(top, left, bottom, right)];
    [button setBackgroundImage:resizedImage forState:UIControlStateNormal];
}

- (IBAction)valueChangeTop:(id)sender
{
    [self configureButtonImage];
}

- (IBAction)valueChangeLeft:(id)sender
{
    [self configureButtonImage];
}

- (IBAction)valueChangeBottom:(id)sender
{
    [self configureButtonImage];
}

- (IBAction)valueChangeRight:(id)sender
{
    [self configureButtonImage];
}

@end
