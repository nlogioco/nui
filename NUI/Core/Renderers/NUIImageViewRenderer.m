//
//  NUIImageViewRenderer.m
//  NUIDemo
//
//  Created by Nicholas LoGioco on 3/14/18.
//  Copyright © 2018 Tom Benner. All rights reserved.
//

#import "NUIImageViewRenderer.h"
#import "UIImageView+NUI.h"

@implementation NUIImageViewRenderer

+ (void)render:(UIImageView*)imageView withClass:(NSString*)className {
    
    [NUIViewRenderer renderSize:imageView withClass:className];
    
    if ([NUISettings hasProperty:@"image" withClass:className]) {
        [imageView setImage:[NUISettings getImage:@"image" withClass:className]];
    }
    
    if ([NUISettings hasProperty:@"tint-color" withClass:className]) {
        CGFloat alphaValue = 1.0;
        if([NUISettings hasProperty:@"tint-color-alpha" withClass:className]) {
            alphaValue = [NUISettings getFloat:@"tint-color-alpha" withClass:className];
        }
        [imageView changeTintColor:[[NUISettings getColor:@"tint-color" withClass:className] colorWithAlphaComponent:alphaValue]];
    }
    
    if ([NUISettings getBoolean:@"masks-to-bounds" withClass:className]) {
        imageView.layer.masksToBounds = [NUISettings getBoolean:@"masks-to-bounds" withClass:className];
    }
}

@end
