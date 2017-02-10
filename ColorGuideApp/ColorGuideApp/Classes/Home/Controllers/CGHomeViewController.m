//
//  CGHomeViewController.m
//  ColorGuideApp
//
//  Created by victor on 2017/2/9.
//  Copyright © 2017年 wsl. All rights reserved.
//

#import "CGHomeViewController.h"
#import "CGCustomColorController.h"
#import "CGNavigationController.h"
@interface CGHomeViewController ()

@end

@implementation CGHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title=@"七色系";
    UIButton *customColor=[[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 44)];
    [customColor setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [customColor setTitle:@"自定义" forState:UIControlStateNormal];
    [customColor addTarget:self action:@selector(customColorOnClick) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc] initWithCustomView:customColor];
 
}



-(void)customColorOnClick
{
    CGCustomColorController *homeCustomVc=[[CGCustomColorController alloc] init];
    CGNavigationController *cgnavVc=[[CGNavigationController alloc] initWithRootViewController:homeCustomVc];
    [self presentViewController:cgnavVc animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
