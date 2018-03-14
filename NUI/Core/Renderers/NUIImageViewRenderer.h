//
//  NUIImageViewRenderer.h
//  NUIDemo
//
//  Created by Nicholas LoGioco on 3/14/18.
//  Copyright © 2018 Tom Benner. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "NUIRenderer.h"

@interface NUIImageViewRenderer : NSObject

+ (void)render:(UIImageView*)imageView withClass:(NSString*)className;

@end
