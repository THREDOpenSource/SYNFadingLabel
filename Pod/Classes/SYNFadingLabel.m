//
//  SYNFadingLabel.m
//  Thred
//
//  Created by Sidhant Gandhi on 1/13/15.
//  Copyright (c) 2015 Syntertainment. All rights reserved.
//

#import "SYNFadingLabel.h"


@interface SYNFadingLabel ()

@property (weak, nonatomic) IBOutlet UILabel *textLabel;
@property (weak, nonatomic) IBOutlet UIView *view;
@property CGFloat fadeDelay;
@property CGFloat fadeDuration;

@end

@implementation SYNFadingLabel

#pragma mark - Lifecycle

- (instancetype)initWithCoder:(NSCoder *)coder
{
    
    self = [super initWithCoder:coder];
    
    if (self) {
        
        [[NSBundle mainBundle] loadNibNamed:@"SYNFadingLabel" owner:self options:nil];
        self.view.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
        self.view.layer.cornerRadius = self.bounds.size.height/2;
        [self addSubview:self.view];
    }
    
    return self;
}

#pragma mark - Configuration

- (void)configureWithFont:(UIFont *)font fadeDelay:(CGFloat)fadeDelay fadeDuration:(CGFloat)fadeDuration
{
    self.textLabel.font = font;
    self.fadeDelay = fadeDelay;
    self.fadeDuration = fadeDuration;
    
    // Alpha gets set to 1 when we set text on the label
    self.alpha = 0;
}

- (void)setText:(NSString *)text
{
    self.alpha = 1;
    [self.textLabel setText:text];
    
    [UIView animateWithDuration:self.fadeDuration delay:self.fadeDelay options:0 animations:^{
        self.alpha = 0;
    } completion:nil];
}

@end
