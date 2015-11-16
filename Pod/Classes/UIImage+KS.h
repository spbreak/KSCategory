//
//  UIColor+KS.h
//  BabyNamedCollection
//
//  Created by huanglexian on 15/9/22.
//  Copyright (c) 2015年 sp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (KS)
+ (UIImage *)createImageWithColor:(UIColor *)color;
+ (UIImage *)circleImageWithName:(NSString *)name borderColor:(UIColor *)borderColor;
-(UIImage *)addText:(NSString *)strText withPoint:(CGPoint)point withDict:(NSDictionary *)dict;
@end
