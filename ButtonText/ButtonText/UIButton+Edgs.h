//
//  UIButton+Edgs.h
//  ButtonText
//
//  Created by 杨彤 on 2018/10/19.
//  Copyright © 2018年 JJXT. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef   NS_ENUM(NSInteger,BtnImageTyle) {
    BtnImageTyleTop,//图片在上
    BtnImageTyleLeft,
    BtnImageTyleRight,
    BtnImageTyleBottom
};
@interface UIButton (Edgs)
- (void)setImagePositionWithType:(BtnImageTyle)btnTyle andSpace:(CGFloat)space;
@end

NS_ASSUME_NONNULL_END
