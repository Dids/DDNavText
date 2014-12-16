//
//  DDNavText.h
//  DDNavTextDemo
//
//  Created by Pauli Jokela on 16.12.2014.
//  Copyright (c) 2014 Didstopia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DDNavText : NSObject

+ (void)showWithText:(NSString*)text;
+ (void)showWithText:(NSString*)text dismissWithDelay:(double)delay;

+ (void)dismiss;
+ (void)dismissWithDelay:(double)delay;

+ (BOOL)isVisible;

@end
