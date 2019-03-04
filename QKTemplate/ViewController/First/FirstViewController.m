//
//  FirstViewController.m
//  QKTemplate
//
//  Created by 梁强坤 on 2019/3/4.
//  Copyright © 2019 梁强坤. All rights reserved.
//

#import "FirstViewController.h"
#import "Masonry.h"
#import "UIButton+Common.h"
#import "SDAutoLayout.h"

@interface FirstViewController ()
@property (nonatomic,strong)UIButton *commonBtn;
@property (nonatomic,strong)UIButton *commonBtn2;
@end

@implementation FirstViewController

//- (id)init{
//    if (self) {
//        self.title = @"会话";
//    }
//    return self;
//}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initSubViews];
}
//初始化子视图
- (void)initSubViews{
    [self.view addSubview:self.commonBtn];
    [self.view addSubview:self.commonBtn2];
    [self addMasonry];
}
- (void)addMasonry{
    [self.commonBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self.view.mas_centerX);
        make.width.mas_equalTo(self.view.mas_width).multipliedBy(.3);
        make.top.mas_equalTo(self.view.mas_top).mas_offset(QKNaviAndSta_Height + 40);
        make.height.mas_equalTo(50);
    }];
    self.commonBtn2.sd_layout.topSpaceToView(self.commonBtn, 50);
    self.commonBtn2.sd_layout.widthRatioToView(self.commonBtn, 1);
    self.commonBtn2.sd_layout.heightRatioToView(self.commonBtn, 1);
    self.commonBtn2.sd_layout.centerXEqualToView(self.view);
}
#pragma mark ---getter---
- (UIButton *)commonBtn{
    if (!_commonBtn) {
        _commonBtn = [UIButton createBtnWithTitle:@"点击" titleFontSize:18 bgImg:NULL bgColor:QKColorDefaultBlue action:^(UIButton *button) {
        }];
    }
    return _commonBtn;
}
- (UIButton *)commonBtn2{
    if (!_commonBtn2) {
        _commonBtn2 = [UIButton createBtnWithTitle:@"点击" titleFontSize:18 bgImg:nil bgColor:QKColorCoolGrayColor action:^(UIButton *button) {
        }];
    }
    return _commonBtn2;
}
#pragma mark -- UIAlertViewDelegate

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (buttonIndex == 0){
    }else{
        [self jumpSetting];
    }
}

- (void)jumpSetting
{
    //打开设置页面，去设置定位
    NSURL *url = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
    if ([[UIApplication sharedApplication] canOpenURL:url])
    {
        [[UIApplication sharedApplication] openURL:url];
        
    }
}


@end
