//
//  SYNViewController.m
//  SYNFadingLabel
//
//  Created by Sidhant Gandhi on 01/14/2015.
//  Copyright (c) 2014 Sidhant Gandhi. All rights reserved.
//

#import "SYNViewController.h"
#import "SYNFadingLabel.h"

@interface SYNViewController ()
@end

@implementation SYNViewController

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.smallFadingLabel.backgroundColor = [UIColor clearColor];
    [self.smallFadingLabel configureWithFont:[UIFont fontWithName:@"AvenirNext-Regular" size:16] fadeDelay:2.5 fadeDuration:0.3];
    
    self.bigFadingLabel.backgroundColor = [UIColor clearColor];
    [self.bigFadingLabel configureWithFont:[UIFont fontWithName:@"AvenirNext-Regular" size:24] fadeDelay:3.0 fadeDuration:1.0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tapped:(id)sender {
    NSMutableString *str = [[NSMutableString alloc] initWithString:@"hello"];
    
    [self.smallFadingLabel setText:[NSString stringWithString:str]];

    CFStringRef transliterations[] = {kCFStringTransformLatinThai, kCFStringTransformLatinCyrillic, kCFStringTransformLatinGreek, kCFStringTransformLatinKatakana, kCFStringTransformLatinHangul, kCFStringTransformLatinHebrew};
    
    // CFStringTransform magic
    CFStringTransform((__bridge CFMutableStringRef)str, NULL, transliterations[0 + arc4random() % 5], FALSE);
    NSMutableString *thaiNumberString = [str mutableCopy];
    
    [self.bigFadingLabel setText:[NSString stringWithString:thaiNumberString]];
}

@end
