//
//  Bullet.m
//  XBlaster
//
//  Created by NickPiatt on 5/2/14.
//  Copyright (c) 2014 iPiatt. All rights reserved.
//

#import "Bullet.h"

@implementation Bullet

- (instancetype)initWithPosition:(CGPoint)position
{
    if (self = [super initWithPosition:position]) {
        self.name = @"bulletSprite";
    }
    return self;
}

+(SKTexture *)generateTexture
{
    static SKTexture *texture = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        SKLabelNode *bullet = [SKLabelNode labelNodeWithFontNamed:@"Arial"];
        bullet.name = @"bullet";
        bullet.fontSize = 20.0f;
        bullet.fontColor = [SKColor whiteColor];
        bullet.text = @"↟";
        
        SKView *textureView = [SKView new];
        texture = [textureView textureFromNode:bullet];
        texture.filteringMode = SKTextureFilteringNearest;
    });
    
    return texture;
}

@end
