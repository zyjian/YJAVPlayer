//
//  YJPlayer.h
//  YJPlayerDemo
//
//  Created by zhu on 2018/4/20.
//  Copyright © 2018年 cn.jy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@interface YJAVPlayer : AVPlayer

+(instancetype)sharePlayer;

-(void)playWith:(NSString *)strUrl;

@end
