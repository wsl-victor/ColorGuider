//
//  CGTabBarController.m
//  ColorGuideApp
//
//  Created by victor on 2017/2/9.
//  Copyright © 2017年 wsl. All rights reserved.
//

#import "CGTabBarController.h"

#import "CGMeViewController.h"
#import "CGHomeViewController.h"
#import "CGMessagesViewController.h"


#import "UIImage+PBSExtension.h"
#import "CGNavigationController.h"
@interface CGTabBarController ()

@property (nonatomic, weak) CGHomeViewController *homeVc;
@property (nonatomic, weak) CGMessagesViewController *messageVc;
@property (nonatomic, weak) CGMeViewController *meVc;

@end

@implementation CGTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self addAllChildVcs];
}


/**
 *  添加所有的子控制器
 */
- (void)addAllChildVcs
{
    CGHomeViewController *homeVc = [[CGHomeViewController alloc] init];
    [self addOneChlildVc:homeVc title:@"色系" imageName:@"tabbar_home" selectedImageName:@"tabbar_home_selected"];
    self.homeVc = homeVc;
    
    
    CGMessagesViewController *messageVc = [[CGMessagesViewController alloc] init];
    [self addOneChlildVc:messageVc title:@"配色" imageName:@"tabbar_message_center" selectedImageName:@"tabbar_message_center_selected"];
    self.messageVc = messageVc;
    
    CGMeViewController *meVc = [[CGMeViewController alloc] init];
    [self addOneChlildVc:meVc title:@"更多" imageName:@"tabbar_discover_selected" selectedImageName:@"tabbar_discover_selected"];
    self.meVc = meVc;
    
    
}


/**
 *  添加一个子控制器
 *
 *  @param childVc           子控制器对象
 *  @param title             标题
 *  @param imageName         图标
 *  @param selectedImageName 选中的图标
 */
- (void)addOneChlildVc:(UIViewController *)childVc title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName
{
    // 设置标题
    childVc.title = title;
    
    // 设置图标
    childVc.tabBarItem.image = [UIImage imageWithName:imageName];
    
    // 设置tabBarItem的普通文字颜色
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName]=[UIColor blackColor];
    textAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:10];
    [childVc.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    
    // 设置tabBarItem的选中文字颜色
    NSMutableDictionary *selectedTextAttrs = [NSMutableDictionary dictionary];
    selectedTextAttrs[NSForegroundColorAttributeName] = [UIColor orangeColor];
    [childVc.tabBarItem setTitleTextAttributes:selectedTextAttrs forState:UIControlStateSelected];
    
    // 设置选中的图标
    UIImage *selectedImage = [UIImage imageWithName:selectedImageName];
    if (iOS7) {
        // 声明这张图片用原图(别渲染)
        selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    childVc.tabBarItem.selectedImage = selectedImage;
    
    // 添加为tabbar控制器的子控制器
    CGNavigationController *nav = [[CGNavigationController alloc] initWithRootViewController:childVc];
    [self addChildViewController:nav];
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
