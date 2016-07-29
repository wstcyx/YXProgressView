//
//  ViewController.m
//  sdfdsds
//
//  Created by 200h-53-1 on 16/2/17.
//  Copyright © 2016年 yx. All rights reserved.
//

#import "ViewController.h"
#import "TKProgressView.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISlider *slide;
@property(nonatomic , strong)TKProgressView *p;
@property(nonatomic , assign)NSInteger dddd;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.p = [TKProgressView new];
    self.p.frame = CGRectMake(30, 100, 200, 30);
    [self.view addSubview:self.p];
    self.p.progress = 0;
    self.p.text = @"下载中";
    self.p.prsColor = [UIColor blueColor];
    [self.slide addTarget:self action:@selector(log:) forControlEvents:UIControlEventValueChanged];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)log:(id)sender{
    self.p.progress = self.slide.value;
}
@end
