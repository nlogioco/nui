//
//  UIImageView+NUI.h
//  NUIDemo
//
//  Created by Nicholas LoGioco on 3/14/18.
//  Copyright © 2018 Tom Benner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h>
#import "NUIRenderer.h"

@interface UIImageView (NUI)

- (void)changeTintColor:(UIColor*)color;

@end
