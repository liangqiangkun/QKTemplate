//
//  UIButton+Common.h
//  QKTemplate
//
//  Created by 梁强坤 on 2019/2/28.
//  Copyright © 2019 梁强坤. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^tapActionBlock)(UIButton *_Nullable button);
NS_ASSUME_NONNULL_BEGIN

@interface UIButton (Common)
@property (nonatomic,copy,nullable)tapActionBlock tapActionBlock;

/**
 生成自定义Button

 @param title 标题
 @param size 标题字号
 @param bgImg 背景图
 @param bgColor 背景色（背景图优先级更高）
 @param tapActionBlock 点击事件
 @return 自定义Button
 */
+ (UIButton *)createBtnWithTitle:(NSString *_Nullable)title titleFontSize:(CGFloat)size bgImg:(UIImage *__nullable)bgImg bgColor:(UIColor *_Nullable)bgColor action:(tapActionBlock _Nullable)tapActionBlock;
@end

NS_ASSUME_NONNULL_END
