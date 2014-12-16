//
//  DDNavText.m
//  DDNavTextDemo
//
//  Created by Pauli Jokela on 16.12.2014.
//  Copyright (c) 2014 Didstopia. All rights reserved.
//

#import "DDNavText.h"

#import <UIKit/UIKit.h>

@interface DDNavText ()

@property (nonatomic, readonly) BOOL isVisible;

@end

@implementation DDNavText

#pragma mark - Initialization

+ (id)sharedInstance
{
    static DDNavText *_sharedInstance = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^
    {
        _sharedInstance = [[DDNavText alloc] init];
    });
    return _sharedInstance;
}

- (id)init
{
    if (self = [super init])
    {
        _isVisible = NO;
    }
    return self;
}

#pragma mark - Presentation

+ (void)showWithText:(NSString*)text
{
    [[DDNavText sharedInstance] _showWithText:text];
}
+ (void)showWithText:(NSString*)text dismissWithDelay:(double)delay
{
    [[DDNavText sharedInstance] _showWithText:text dismissWithDelay:delay];
}

#pragma mark - Dismissal

+ (void)dismiss
{
    [[DDNavText sharedInstance] _dismiss];
}
+ (void)dismissWithDelay:(double)delay
{
    [[DDNavText sharedInstance] _dismissWithDelay:delay];
}

#pragma mark - Helpers

+ (BOOL)isVisible
{
    return [[DDNavText sharedInstance] isVisible];
}

#pragma mark - Private functions

- (void)_showWithText:(NSString*)text
{
    UINavigationItem *navigationItem = [self _getTopViewNavigationItem];
    if (navigationItem)
    {
        _isVisible = YES;
        [navigationItem setPrompt:text];
    }
}
- (void)_showWithText:(NSString*)text dismissWithDelay:(double)delay
{
    [self _showWithText:text];
    [self _dismissWithDelay:delay];
}

- (void)_dismiss
{
    if (!self.isVisible) return;
    UINavigationItem *navigationItem = [self _getTopViewNavigationItem];
    if (navigationItem)
    {
        _isVisible = NO;
        [navigationItem setPrompt:nil];
    }
}
- (void)_dismissWithDelay:(double)delay
{
    if (!self.isVisible) return;
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(_dismiss) object:nil];
    [self performSelector:@selector(_dismiss) withObject:nil afterDelay:delay];
}

- (UINavigationItem*)_getTopViewNavigationItem
{
    UIViewController *rootViewController = [UIApplication sharedApplication].keyWindow.rootViewController;
    if ([rootViewController isKindOfClass:[UINavigationController class]])
    {
        UINavigationController *navigationController = (UINavigationController*)rootViewController;
        UIViewController *topViewController = [navigationController.viewControllers lastObject];
        UINavigationItem *navigationItem = topViewController.navigationItem;
        return navigationItem;
    }
    else
    {
        // TODO: Add support for when the root view controller is not a UINavigationController
        NSLog(@"DDNavText could not present: Root view controller is not a UINavigationController");
        return nil;
    }
}

@end
