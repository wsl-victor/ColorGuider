//
//  CGCustomColorController.m
//  ColorGuideApp
//
//  Created by victor on 2017/2/10.
//  Copyright © 2017年 wsl. All rights reserved.
//

#import "CGCustomColorController.h"

@interface CGCustomColorController ()

@end

@implementation CGCustomColorController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UIButton *customColor=[[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 44)];
    [customColor setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [customColor setTitle:@"返回" forState:UIControlStateNormal];
    [customColor addTarget:self action:@selector(closecustomColorOnClick) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc] initWithCustomView:customColor];
}


-(void)closecustomColorOnClick
{
    [self dismissViewControllerAnimated:YES completion:nil];
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
