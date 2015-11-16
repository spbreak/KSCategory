//
//  UIBarButtonItem+Sp.m
//  NameAnalysisS
//
//  Created by owen on 14/11/21.
//  Copyright (c) 2014年 Spbreak. All rights reserved.
//

#import "UIBarButtonItem+KS.h"

@implementation UIBarButtonItem (KS)

-(id)initWithIcon:(NSString *)icon highlightedIcon:(NSString *)highlighted target:(id)target action:(SEL)action{
    // 1.创建按钮
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    // 2.设置普通背景图片
    UIImage *image=[UIImage imageNamed:icon];
    [btn setBackgroundImage:image forState:UIControlStateNormal];
    
    // 3.设置高亮图片
    [btn setBackgroundImage:[UIImage imageNamed:highlighted] forState:UIControlStateHighlighted];
    
    // 4.设置尺寸
    btn.frame=(CGRect){CGPointZero,image.size};
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return [self initWithCustomView:btn];
}

+(id)itemWithIcon:(NSString *)icon highlightedIcon:(NSString *)highlighted target:(id)target action:(SEL)action{
    return [[self alloc]initWithIcon:icon highlightedIcon:highlighted target:target action:action];
}

@end
