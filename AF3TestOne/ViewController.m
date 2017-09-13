//
//  ViewController.m
//  AF3TestOne
//
//  Created by JiaYuanFa on 2017/9/13.
//  Copyright © 2017年 JiaYuanFa. All rights reserved.
//

#import "ViewController.h"

#import "AFNetworking.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc] init];
    
    NSString *url = @"http://120.78.12.180/sports/addsports?userId=43&position=35&sportType=4&totalDistance=0.26&totalStep=0&totalTime=99";
    
    [manager GET:url parameters:nil progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        NSLog(@"%@",responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        NSLog(@"%@",error);
        
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
