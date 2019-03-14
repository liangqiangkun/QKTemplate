//
//  UIButton+Common.m
//  QKTemplate
//
//  Created by liangqiangkun on 2019/2/28.
//  Copyright © 2019 liangqiangkun. All rights reserved.
//
//
//                       .::::.
//                     .::::::::.
//                    :::::::::::
//                 ..:::::::::::'
//              '::::::::::::'
//                .::::::::::
//           '::::::::::::::..
//                ..::::::::::::.
//              ``::::::::::::::::
//               ::::``:::::::::'        .:::.
//              ::::'   ':::::'       .::::::::.
//            .::::'      ::::     .:::::::'::::.
//           .:::'       :::::  .:::::::::' ':::::.
//          .::'        :::::.:::::::::'      ':::::.
//         .::'         ::::::::::::::'         ``::::.
//     ...:::           ::::::::::::'              ``::.
//    ```` ':.          ':::::::::'                  ::::..
//                       '.:::::'                    ':'````..
#import "UIButton+Common.h"
#import <objc/runtime.h>

@implementation UIButton (Common)
static NSString *keyOfUseCategoryMethod;//用分类方法创建的button，关联对象的key
static NSString *keyOfBlock;
+ (UIButton *)createBtnWithTitle:(NSString *)title titleFontSize:(CGFloat)size bgImg:(UIImage *)bgImg bgColor:(UIColor *)bgColor action:(tapActionBlock)tapActionBlock{
    UIButton *button = [[UIButton alloc] init];
    if (title) {
        [button setTitle:title forState:UIControlStateNormal];
    }
    if (size) {
        [[button titleLabel] setFont:[UIFont systemFontOfSize:size]];
    }
    if (bgColor) {
        [button setBackgroundColor:bgColor];
    }
    if (bgImg) {
        [button setBackgroundImage:bgImg forState:UIControlStateNormal];
    }
    [button addTarget:button action:@selector(tapAction:) forControlEvents:UIControlEventTouchUpInside];
    /**
     *用runtime中的函数通过key关联对象
     *
     *objc_setAssociatedObject(id object, const void *key, id value, objc_AssociationPolicy policy)
     *id object                     表示关联者，是一个对象，变量名理所当然也是object
     *const void *key               获取被关联者的索引key
     *id value                      被关联者，这里是一个block
     *objc_AssociationPolicy policy 关联时采用的协议，有assign，retain，copy等协议，一般使用OBJC_ASSOCIATION_RETAIN_NONATOMIC
     
     */
    objc_setAssociatedObject (button , &keyOfUseCategoryMethod , tapActionBlock, OBJC_ASSOCIATION_COPY_NONATOMIC );
    return button;
}
- (void)tapAction:(UIButton*)sender{
    /**
     * 通过key获取被关联对象
     *objc_getAssociatedObject(id object, const void *key)
     *
     */
    tapActionBlock block = ( tapActionBlock )objc_getAssociatedObject (sender , &keyOfUseCategoryMethod );
    if (block) {
        block(sender);
    }
}
- (void)setTapActionBlock:(tapActionBlock)tapActionBlock{
    objc_setAssociatedObject (self , &keyOfBlock , tapActionBlock, OBJC_ASSOCIATION_COPY_NONATOMIC );
}
- (tapActionBlock)tapActionBlock{
    return objc_getAssociatedObject (self , &keyOfBlock );
}

@end
