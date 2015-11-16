//
//  UIColor+KS.m
//  BabyNamedCollection
//
//  Created by huanglexian on 15/9/22.
//  Copyright (c) 2015年 sp. All rights reserved.
//

#import "UIImage+KS.h"

@implementation UIImage (KS)

/**
 * 将UIColor变换为UIImage
 *
 **/
+ (UIImage *)createImageWithColor:(UIColor *)color
{
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return theImage;
}

// 画圆
+ (UIImage *)circleImageWithName:(NSString *)name borderColor:(UIColor *)borderColor
{
    // 1.加载原图
    UIImage *oldImage = [UIImage imageNamed:name];
    
    // 2.开启上下文
    CGFloat imageW = oldImage.size.width*1.8 ;
    CGFloat imageH = oldImage.size.height *1.8 ;
    CGSize imageSize = CGSizeMake(imageW, imageH);
    UIGraphicsBeginImageContextWithOptions(imageSize, NO, 0.0);
    
    // 3.取得当前的上下文,这里得到的就是上面刚创建的那个图片上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    //    // 4.画边框(大圆)
    [borderColor set];
    CGFloat bigRadius = imageW * 0.5; // 大圆半径
    CGFloat centerX = bigRadius; // 圆心
    CGFloat centerY = bigRadius;
    CGContextAddArc(ctx, centerX, centerY, bigRadius, 0, M_PI * 2, 0);
    CGContextFillPath(ctx); // 画圆。As a side effect when you call this function, Quartz clears the current path.
    //
    //    // 5.小圆
    //    CGFloat smallRadius = bigRadius - borderWidth;
    //    CGContextAddArc(ctx, centerX, centerY, smallRadius, 0, M_PI * 2, 0);
    //    // 裁剪(后面画的东西才会受裁剪的影响)
    //    CGContextClip(ctx);
    //
    //    // 6.画图
    [oldImage drawInRect:CGRectMake(bigRadius-oldImage.size.width/2, bigRadius-oldImage.size.height/2, oldImage.size.width, oldImage.size.height)];
    
    // 7.取图
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    
    // 8.结束上下文
    UIGraphicsEndImageContext();
    
    return newImage;
}

// 添加文字
-(UIImage *)addText:(NSString *)strText withPoint:(CGPoint)point withDict:(NSDictionary *)dict{
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0);
    [self drawInRect:CGRectMake(0, 0, self.size.width, self.size.height)];
    [strText drawAtPoint:point withAttributes:dict];
    UIImage *newImage=UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}
@end
