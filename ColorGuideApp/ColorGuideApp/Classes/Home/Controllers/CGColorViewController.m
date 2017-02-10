//
//  CGColorViewController.m
//  ColorGuideApp
//
//  Created by victor on 2017/2/10.
//  Copyright © 2017年 wsl. All rights reserved.
//

#import "CGColorViewController.h"
#import <QuartzCore/QuartzCore.h>

//view
#import "UIView+Tools.h"
#import "ColorDetectView.h"

@interface CGColorViewController ()

@end

@implementation CGColorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//设置状态栏
- (BOOL)prefersStatusBarHidden
{
    return YES;
}


@end
