//
//  YJPlayer.h
//  YJPlayerDemo
//
//  Created by zhu on 2018/4/20.
//  Copyright © 2018年 cn.jy. All rights reserved.
//
/*
 
 使用案例：如下
 就是把之前的AVPlayer 换成YJAVPlayer 即可，就可以实现边下边播的功能了
 
 #import "ViewController.h"
 #import <YJAVPlayer/YJZAVPlayer.h>
 
 @interface ViewController ()
 @property(nonatomic,strong)YJAVPlayer *player;
 @end
 
 @implementation ViewController
 
 - (void)viewDidLoad {
 [super viewDidLoad];
 // Do any additional setup after loading the view, typically from a nib.
 }
 
 -(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
 self.player = [YJAVPlayer sharePlayer];
 [self.player playWithUrlStr:@"http://sc1.111ttt.cn:8282/2018/1/03m/13/396131232171.m4a?tflag=1519095601&pin=6cd414115fdb9a950d827487b16b5f97#.mp3"];
 }
 
 */



#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@interface YJZAVPlayer : AVPlayer

+(instancetype)sharePlayer;

/**
 播放地址方法，给一个远程的地址，就可以实现边下边播的功能了
 
 @param strUrl url地址
 eg:http://sc1.111ttt.cn:8282/2018/1/03m/13/396131232171.m4a?tflag=1519095601&pin=6cd414115fdb9a950d827487b16b5f97#.mp3
 */
-(void)playWithUrlStr:(NSString *)strUrl;

@end
