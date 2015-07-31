
//
//  YKScreenShot.m
//  YKScreenCaptureDemo
//
//  Created by 王永康 on 15/7/31.
//  Copyright (c) 2015年 王永康. All rights reserved.
//

#import "YKScreenShot.h"

@implementation YKScreenShot

+ (UIImage *)getImageContext:(CGRect)rect andView:(UIView *)view
{
    UIGraphicsBeginImageContext(view.frame.size); //currentView 当前的View
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *viewImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    //从全屏截取指定范围
    CGImageRef imageRef = viewImage.CGImage;
    
    CGImageRef imageRefRect = CGImageCreateWithImageInRect(imageRef, rect);
    UIImage *sendImage = [[UIImage alloc] initWithCGImage:imageRefRect];
    
    return sendImage;
    
    /******截取图片保存的位置，如果想要保存，请把return向后移动*********
    NSData*data=UIImagePNGRepresentation(viewImage);
    NSString*path=[NSHomeDirectory() stringByAppendingString:@"/documents/1.png"];
    [data writeToFile:path atomically:YES];
    
    NSLog(@"%@",path);
    
    UIImageWriteToSavedPhotosAlbum(sendImage, nil, nil, nil);
    CGImageRelease(imageRefRect);
    ***************/
    
}
@end
