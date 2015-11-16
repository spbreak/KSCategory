//
//  NSArray+Sp.m
//  NameAnalysisS
//
//  Created by owen on 14/11/24.
//  Copyright (c) 2014年 Spbreak. All rights reserved.
//

#import "NSArray+KS.h"
#import "UIBarButtonItem+KS.h"

@implementation NSArray (KS)
+(NSArray *)leftBarButtonItemsWithIcon:(NSString *)icon highlightedIcon:(NSString *)highlighted target:(id)target action:(SEL)action{
    UIBarButtonItem *negativeSpacer=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
   
    UIBarButtonItem *left=[UIBarButtonItem itemWithIcon:icon highlightedIcon:highlighted target:target action:action];
    
    return [NSArray arrayWithObjects:negativeSpacer,left, nil];
}

@end
