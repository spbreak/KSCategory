//
//  UIBarButtonItem+Sp.h
//  NameAnalysisS
//
//  Created by owen on 14/11/21.
//  Copyright (c) 2014年 Spbreak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (KS)
-(id)initWithIcon:(NSString *)icon highlightedIcon:(NSString *)highlighted target:(id)target action:(SEL)action;
+(id)itemWithIcon:(NSString *)icon highlightedIcon:(NSString *)highlighted target:(id)target action:(SEL)action;
@end
