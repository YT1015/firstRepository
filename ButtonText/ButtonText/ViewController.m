//
//  ViewController.m
//  ButtonText
//
//  Created by 杨彤 on 2018/10/19.
//  Copyright © 2018年 JJXT. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+Edgs.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    
    [self.view addSubview:btn];
    
    [btn setTitle:@"中国移动" forState:UIControlStateNormal];
    
    [btn setImage:[UIImage imageNamed:@"tabbar_home"] forState:UIControlStateNormal];
    
    btn.frame = CGRectMake(100, 100, 160, 100);
    btn.backgroundColor = [UIColor redColor];
    btn.titleLabel.backgroundColor = [UIColor purpleColor];
    
    [btn setImagePositionWithType:BtnImageTyleLeft andSpace:5];
    
//    CGFloat imaH=btn.currentImage.size.height;
//    CGFloat imaW=btn.currentImage.size.width;
//
//    CGFloat titleH=btn.titleLabel.intrinsicContentSize.height;
//     CGFloat titleW=btn.titleLabel.intrinsicContentSize.width;
//
//    btn.imageEdgeInsets=UIEdgeInsetsMake(-titleH, 0, 0, -titleW);
//    btn.titleEdgeInsets=UIEdgeInsetsMake(0, -imaW, -imaH, 0);
    
}


@end
