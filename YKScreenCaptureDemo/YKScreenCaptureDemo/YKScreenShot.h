//
//  YKScreenShot.h
//  YKScreenCaptureDemo
//
//  Created by 王永康 on 15/7/31.
//  Copyright (c) 2015年 王永康. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface YKScreenShot : NSObject


+ (UIImage *)getImageContext:(CGRect) rect andView:(UIView *) view;

@end
