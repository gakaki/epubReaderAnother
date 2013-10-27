//
//  DuokanViewLayoutCalc.h
//  AePubReader
//
//  Created by 贺 贤明 on 13-10-19.
//
//

#import <Foundation/Foundation.h>

@interface DuokanViewLayoutCalc : NSObject
{
    CGRect frame;
    int    cx;
    int    cy;
    int    ry;
    int    rx;
    int    frame_height;
    int    frame_width;
    

    
}
@property CGRect frame;
@property int  cx;
@property int  cy;
@property int  ry;
@property int  rx;
@property int  frame_height;
@property int  frame_width;

@property int  rx_prev;
@property int  rx_menu;
@property int  rx_next;

@property CGRect  rect_prev;
@property CGRect  rect_menu;
@property CGRect  rect_next;

-(id)initWithFrameSize:(CGRect)frame_in;

-(BOOL)is_in_rect:(CGRect)rect withPoint:(CGPoint)point;


-(BOOL)is_in_prev_rect_with_location:(CGPoint)location;
-(BOOL)is_in_menu_rect_with_location:(CGPoint)location;
-(BOOL)is_in_next_rect_with_location:(CGPoint)location;

@end
