//
//  UIColor+KS.h
//  BabyNamedCollection
//
//  Created by huanglexian on 15/9/22.
//  Copyright (c) 2015年 sp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (KS)

/**
 * @brief 通过十六进制配置颜色,
 * @param hexValue:十六进制数值,例如0x00AA00
 * @param alphaValue:透明度0~1.0 0为全透明,1为不透明
 */
+ (UIColor*)ksColorWithHex:(NSInteger)hexValue alpha:(CGFloat)alphaValue;

/**
 * @brief 通过十六进制配置颜色,透明度为1
 * @param hexValue:十六进制数值,例如0x00AA00
 */
+ (UIColor*)ksColorWithHex:(NSInteger)hexValue;

/**
 * @brief 通过十六进制字符串配置颜色,透明度为1
 * @param hex:十六进制数值字符串,例如0x00AA00
 */
+ (UIColor*)ksColorWithHexString:(NSString*)hex;

/** 带透明度的白色,在配置某些背景时使用 */
+ (UIColor*)ksWhiteColorWithAlpha:(CGFloat)alphaValue;

/** 带透明度的黑色,在配置某些背景时使用 */
+ (UIColor*)ksBlackColorWithAlpha:(CGFloat)alphaValue;

// 通过RGBA获取颜色,注意,rgba都是NSInteger,非NSFloat
+ (UIColor *)ksColorWithR:(NSInteger)red g:(NSInteger)green b:(NSInteger)blue;

// 通过RGBA获取颜色,注意,rgba都是NSInteger,非NSFloat
+ (UIColor *)ksColorWithR:(NSInteger)red g:(NSInteger)green b:(NSInteger)blue a:(CGFloat)alpha;

/**
 * @brief 通过十六进制字符串配置颜色,透明度为1
 * @param hex:十六进制数值字符串,例如0x00AA00
 * @param alpha:透明度
 */
+ (UIColor*)ksColorWithHexString:(NSString*)hex alpha:(CGFloat)alpha;

@end
