//
//  DDNavTextTests.m
//  DDNavTextTests
//
//  Created by Pauli Jokela on 7.1.2015.
//  Copyright (c) 2015 Didstopia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

#import "DDNavText.h"

@interface DDNavTextTests : XCTestCase

@end

@implementation DDNavTextTests

- (void)testDisplayingNavText
{
    [DDNavText showWithText:@"Testing"];
    XCTAssert([DDNavText isVisible], @"NavText needs to be visible to pass this test.");
    [DDNavText dismiss];
}

- (void)testDismissingNavText
{
    [DDNavText showWithText:@"Testing"];
    [DDNavText dismiss];
    XCTAssert(![DDNavText isVisible], @"NavText needs to be hidden to pass this test.");
}

@end
