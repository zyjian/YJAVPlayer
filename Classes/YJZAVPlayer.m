//
//  YJPlayer.m
//  YJPlayerDemo
//
//  Created by zhu on 2018/4/20.
//  Copyright © 2018年 cn.jy. All rights reserved.
//

#import "YJZAVPlayer.h"
#import "AVPlayerItem+MCCacheSupport.h"

@implementation YJZAVPlayer

static YJZAVPlayer* _instance = nil;

+(instancetype)sharePlayer {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [self new];
    });
    return _instance;
}

-(void)playWithPath:(NSString *)pathStr {
    
    AVPlayerItem *playerItem = nil;
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if ([fileManager fileExistsAtPath:pathStr]){
        playerItem = [[AVPlayerItem alloc]initWithURL: [NSURL fileURLWithPath:pathStr]];
        [_instance replaceCurrentItemWithPlayerItem:playerItem];
    }else{
        NSURL *url = [NSURL URLWithString:pathStr];
        playerItem = [AVPlayerItem mc_playerItemWithRemoteURL:url error:nil];
    }
    
    [_instance replaceCurrentItemWithPlayerItem:playerItem];
    [_instance play];
}

@end
