//
//  SYNViewController.h
//  SYNFadingLabel
//
//  Created by Sidhant Gandhi on 01/14/2015.
//  Copyright (c) 2014 Sidhant Gandhi. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SYNFadingLabel;
@interface SYNViewController : UIViewController

@property (weak, nonatomic) IBOutlet SYNFadingLabel *bigFadingLabel;
@property (weak, nonatomic) IBOutlet SYNFadingLabel *smallFadingLabel;

@end
