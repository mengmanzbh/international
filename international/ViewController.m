//
//  ViewController.m
//  international
//
//  Created by kuailefu on 15/12/15.
//  Copyright © 2015年 kuailefu. All rights reserved.
//
//获取本地化语言文件
#define L(name) NSLocalizedString(name, nil)
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 100, 35)];
    lab.text = L(@"Take photo");
    [self.view addSubview:lab];
    
    //获得所支持的语言
    NSLog(@"%@",[[NSUserDefaults standardUserDefaults]objectForKey:@"AppleLanguages"]);
    //获取当前使用语言
    NSArray *languages = [NSLocale preferredLanguages];
    NSString *currentLanguage = [languages objectAtIndex:0];
    NSLog ( @"%@" , currentLanguage);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
