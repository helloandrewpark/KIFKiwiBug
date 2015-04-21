//
//  Kiwi2Tests.m
//  KiwiTest
//
//  Created by Andrew Park on 4/15/15.
//  Copyright (c) 2015 Vurb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <KIF-Kiwi.h>

#import "ViewController.h"

SPEC_BEGIN(TEST2)

describe(@"testing 1", ^{
    
    beforeAll(^{
        NSLog(@"test 2");
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