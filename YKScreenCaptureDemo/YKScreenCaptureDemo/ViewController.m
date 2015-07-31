//
//  ViewController.m
//  YKScreenCaptureDemo
//
//  Created by 王永康 on 15/7/31.
//  Copyright (c) 2015年 王永康. All rights reserved.
//

#import "ViewController.h"
#import "YKScreenShot.h"
#import <SVProgressHUD.h>

@interface ViewController ()

@end

@implementation ViewController
- (IBAction)captureScreenAction:(id)sender {
    UIImage *image = [YKScreenShot getImageContext:self.view.frame andView:self.view];
    
    /*写入到相册*/
    UIImageWriteToSavedPhotosAlbum(image, self ,@selector(image:didFinishSavingWithError:contextInfo:), nil);
}

// 指定回调方法
- (void)image: (UIImage *) image didFinishSavingWithError: (NSError *) error contextInfo: (void *) contextInfo
{

    if(error != NULL){
        [SVProgressHUD showErrorWithStatus:@"error" maskType:SVProgressHUDMaskTypeGradient];

    }else{
        [SVProgressHUD showSuccessWithStatus:@"success" maskType:SVProgressHUDMaskTypeClear];

    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
