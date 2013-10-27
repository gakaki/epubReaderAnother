//
//  IntroView.h
//  AePubReader
//
//  Created by 贺 贤明 on 13-10-11.
//
//

#import <UIKit/UIKit.h>
@class DuokanViewLayoutCalc;

@interface IntroView : UIView
{
    DuokanViewLayoutCalc *duokan_layout;
    
}

@property(nonatomic,retain)DuokanViewLayoutCalc *duokan_layout;


@end
