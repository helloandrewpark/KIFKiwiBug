//
//  ViewController.m
//  KiwiTest
//
//  Created by Andrew Park on 4/15/15.
//  Copyright (c) 2015 Vurb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"test" forState:UIControlStateNormal];
    button.frame = CGRectMake(0, 0, 100, 100);
    [self.view addSubview:button];
    button.accessibilityLabel = @"controllerview";
    [button addTarget:self action:@selector(pressedButton) forControlEvents:UIControlEventTouchUpInside];
}

- (void)pressedButton
{
    self.tapped = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
