//
//  UIImageView+NUI.m
//  NUIDemo
//
//  Created by Nicholas LoGioco on 3/14/18.
//  Copyright © 2018 Tom Benner. All rights reserved.
//

#import "UIImageView+NUI.h"

@implementation UIImageView (NUI)

- (void)initNUI
{
    if (!self.nuiClass) {
        self.nuiClass = @"ImageView";
    }
}

- (void)applyNUI
{
    [self initNUI];
    if (![self.nuiClass isEqualToString:kNUIClassNone]) {
        [NUIRenderer renderImageView:self withClass:self.nuiClass];
    }
    self.nuiApplied = YES;
}

- (void)changeTintColor:(UIColor*)color {
    self.image = [self.image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    self.tintColor = color;
}

@end
