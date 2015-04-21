//
//  KiwiTestTests.m
//  KiwiTestTests
//
//  Created by Andrew Park on 4/15/15.
//  Copyright (c) 2015 Vurb. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

#import <Kiwi.h>

SPEC_BEGIN(TEST1)

describe(@"testing 1", ^{
    
    beforeAll(^{
        NSLog(@"test 1");
    });
    
    context(@"int test", ^{
        it(@"should work", ^{
            int i = 1;
            [[theValue(i) should] equal:theValue(1)];
        });
    });
    
    context(@"string test", ^{
        it(@"should work", ^{
            NSString *test = @"hello";
            [[test shouldNot] equal:@"bye"];
        });
    });
});

SPEC_END
