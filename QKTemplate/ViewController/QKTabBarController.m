//
//  QKTabBarController.m
//  QKTemplate
//
//  Created by 梁强坤 on 2019/3/4.
//  Copyright © 2019 梁强坤. All rights reserved.
//

#import "QKTabBarController.h"
#import "First/FirstViewController.h"
#import "Second/SecondViewController.h"
#import "Third/ThirdViewController.h"
#import "Fourth/FourthViewController.h"
#import "RDVTabBarItem.h"

@interface QKTabBarController ()

@end

@implementation QKTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIViewController *firstViewController = [[FirstViewController alloc] init];
    firstViewController.title = @"会话";
    UIViewController *firstNavigationController = [[UINavigationController alloc]
                                                   initWithRootViewController:firstViewController];
    UIViewController *secondViewController = [[SecondViewController alloc] init];
    secondViewController.title = @"联系人";
    UIViewController *secondNavigationController = [[UINavigationController alloc]
                                                    initWithRootViewController:secondViewController];
    UIViewController *thirdViewController = [[ThirdViewController alloc] init];
    thirdViewController.title = @"发现";
    UIViewController *thirdNavigationController = [[UINavigationController alloc]
                                                   initWithRootViewController:thirdViewController];
    UIViewController *fourthViewController = [[FourthViewController alloc] init];
    fourthViewController.title = @"我";
    UIViewController *fourthNavigationController = [[UINavigationController alloc]
                                                   initWithRootViewController:fourthViewController];
    
    [self setViewControllers:@[firstNavigationController, secondNavigationController,
                              thirdNavigationController,fourthNavigationController]];
    //设置背景图片
    NSArray *imageNames = @[@"tabbar_icon1",@"tabbar_icon2",@"tabbar_icon3",@"tabbar_icon4"];
    for (int i = 0; i < [[[self tabBar] items] count]; i++) {
        RDVTabBarItem *item = [[[self tabBar] items] objectAtIndex:i];
        NSString *imgName = [imageNames objectAtIndex:i];
        UIImage *unselImg = [UIImage imageNamed:[NSString stringWithFormat:@"%@_unsel.png",imgName]];
        UIImage *selImg = [UIImage imageNamed:[NSString stringWithFormat:@"%@_sel.png",imgName]];
        [item setFinishedSelectedImage:selImg withFinishedUnselectedImage:unselImg];
    }
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
