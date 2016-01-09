//
//  DZASpriteKitMenuView.m
//  SpriteKitUniversalVerticalMenus
//
//  Created by Davide Di Stefano on 05/01/16.
//  Copyright © 2016 Davide Di Stefano. All rights reserved.
//

#import "DZASpriteKitMenuScene.h"
@import SpriteKitUniversalMenus;

@interface DZASpriteKitMenuScene()

@property (strong, nonatomic) DZAMenuNode * menuNode;

@end

#if TARGET_OS_IPHONE
#define DZAFont UIFont
#define DZATouch UITouch
#define DZAColor UIColor
#else
#define DZAFont NSFont
#define DZATouch NSTouch
#define DZAColor NSColor
#endif


@implementation DZASpriteKitMenuScene

-(void) addMenuVoiceWithText:(NSString *) text y:(CGFloat) y
{
    DZAMenuVoiceNode * menuVoice = [[DZAMenuVoiceNode alloc] initWithColor:[DZAColor redColor] size:CGSizeMake(200, 44)];
    menuVoice.position = CGPointMake(0, y);
    [menuVoice setLabelWithText:text andFont:[DZAFont systemFontOfSize:15] withColor:[DZAColor whiteColor]];
    [_menuNode addChild:menuVoice];
}

-(void)didMoveToView:(SKView *)view
{
    _menuNode = [[DZAMenuNode alloc] init];
    _menuNode.position = CGPointMake(self.frame.size.width / 2, self.frame.size.height / 2);
    [self addChild:_menuNode];
    
    [self addMenuVoiceWithText:@"Play" y:55];
    [self addMenuVoiceWithText:@"Options" y:0];
    [self addMenuVoiceWithText:@"Exit" y:-55];
}

@end