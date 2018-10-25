//
//  UIButton+Edgs.m
//  ButtonText
//
//  Created by 杨彤 on 2018/10/19.
//  Copyright © 2018年 JJXT. All rights reserved.
//

#import "UIButton+Edgs.h"

@implementation UIButton (Edgs)

-(void)setImagePositionWithType:(BtnImageTyle)btnTyle andSpace:(CGFloat)space{
    UIEdgeInsets imageEdge = UIEdgeInsetsZero;
    UIEdgeInsets labelEdge = UIEdgeInsetsZero;
    
    CGFloat imaH=self.currentImage.size.height;
    CGFloat imaW=self.currentImage.size.width;
    
    CGFloat labelH=self.titleLabel.intrinsicContentSize.height;
     CGFloat labelW=self.titleLabel.intrinsicContentSize.width;
    
    switch (btnTyle) {
        case BtnImageTyleTop:{
            imageEdge=UIEdgeInsetsMake(-(labelH+space), 0, 0, -labelW);
            labelEdge=UIEdgeInsetsMake(0, -imaW, -(imaH+space), 0);
        }
            break;
        case BtnImageTyleBottom:{
            imageEdge=UIEdgeInsetsMake(0, 0, -(labelH+space), -labelW);
            labelEdge=UIEdgeInsetsMake(-(imaH+space), -imaW,0 , 0);
        }
            break;
        case BtnImageTyleLeft:{
            imageEdge=UIEdgeInsetsMake(0, -space, 0, space);
            labelEdge=UIEdgeInsetsMake(0, space,0 , -space);
        }
            break;
        case BtnImageTyleRight:{
            imageEdge=UIEdgeInsetsMake(0, space+labelW, 0, -(space+labelW));
            labelEdge=UIEdgeInsetsMake(0, -(space+imaW),0 , space+imaW);
        }
            break;
            
        default:
            break;
    }
    self.imageEdgeInsets=imageEdge;
    self.titleEdgeInsets=labelEdge;
    
}
@end
