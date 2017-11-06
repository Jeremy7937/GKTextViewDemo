//
//  ViewController.m
//  GKTextViewDemo
//
//  Created by 郭凯 on 2017/11/6.
//  Copyright © 2017年 guokai. All rights reserved.
//

#import "ViewController.h"
#import "GKTextView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    GKTextView *textView = [[GKTextView alloc] initWithFrame:CGRectMake(50, 50, 300, 300)];
    textView.font = [UIFont systemFontOfSize:20];
    [self.view addSubview:textView];
    
    NSString *content = @"移动互联王卡来袭，视频流量全免费，一元500M自由加！";
    textView.text = content;
    
    NSRange range = [content rangeOfString:@"流量全免费"];
    [textView setTextWithRange:range normalColor:[UIColor orangeColor] coverColor:[UIColor greenColor] clickEvent:^(NSString *clickText) {
        NSLog(@"_____clickText = %@",clickText);
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
