//
//  PlayAudio.m
//  MyDemo
//
//  Created by ishang on 15/4/2.
//  Copyright (c) 2015年 commondec. All rights reserved.
//

#import "PlayAudio.h"
@implementation PlayAudio

-(id)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

-(void)playAudio
{
    
    NSString *pathStr = [[NSBundle mainBundle] pathForResource:@"悬崖上的金鱼公主" ofType:@"mp3"];
    
    if([[NSFileManager defaultManager] fileExistsAtPath:pathStr])
    {
        NSURL *pathURL = [NSURL fileURLWithPath:pathStr];
        AVAudioPlayer* audioPlayer = [[AVAudioPlayer alloc]initWithContentsOfURL:pathURL error:nil];
        if (audioPlayer)
        {
            [audioPlayer setVolume:1];   //设置音量大小
            audioPlayer.numberOfLoops = -1;//设置音乐播放次数  -1为一直循环
            [audioPlayer prepareToPlay];
            [audioPlayer play];
        }
        
        [[AVAudioSession sharedInstance] setCategory: AVAudioSessionCategoryPlayback error:nil];
        [[AVAudioSession sharedInstance] setActive: YES error: nil];
    }
    
    
}

@end
