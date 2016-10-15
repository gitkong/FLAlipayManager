//
//  ViewController.m
//  FLAlipayDemo
//
//  Created by clarence on 16/10/15.
//  Copyright © 2016年 clarence. All rights reserved.
//

#import "ViewController.h"
#import "FLAlipayManager.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 40)];
    btn.center = self.view.center;
    [btn setTitle:@"点我支付" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor grayColor];
    [btn addTarget:self action:@selector(clickToPay) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}


- (void)clickToPay {
    NSString *orderString = @"订单信息（签名后）";
    NSString *appScheme = @"FLAlipayDemo";
    /**
     *  @author 孔凡列, 16-09-21 08:09:06
     *
     *  发起支付
     */
    [[FLAlipayManager shareManager] fl_alipayWithOrderStr:orderString appScheme:appScheme];
    
    /**
     *  @author 孔凡列, 16-09-21 08:09:06
     *
     *  支付回调
     */
    [FLAlipayManager shareManager].fl_callback = ^(NSDictionary *result){
        if ([result[@"resultStatus"] isEqualToString:@"9000"]){
            NSLog(@"支付成功");
        }
        else{
            NSLog(@"支付失败");
        }
    };
}


@end
