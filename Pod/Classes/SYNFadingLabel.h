//
//  SYNFadingLabel.h
//  Thred
//
//  Created by Sidhant Gandhi on 1/13/15.
//  Copyright (c) 2015 Syntertainment. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SYNFadingLabel : UIView

/**
 *  The custom initialization point
 *
 *  @param font     the font for the label, size according to size of label
 *  @param delay    delay before fading out the label
 *  @param duration duration of the fade animation
 */
- (void)configureWithFont:(UIFont *)font fadeDelay:(CGFloat)delay fadeDuration:(CGFloat)duration;

/**
 *  Sets the text on the label. After setting the text, the label will fade after the configured delay.
 *
 *  @param text the text to show on the label
 */
- (void)setText:(NSString *)text;

@end