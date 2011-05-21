//
//  DataManager.m
//  UnrealPackageExporter
//
//  Created by Andrew Dudney on 7/27/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "DataManager.h"


@implementation DataManager

@synthesize fileData, curPos;

- (id)initWithFileData:(NSData *)data{
	self = [super init];
	if(self != nil){
		fileData = [data retain];
		self.curPos = 0;
	}
	return self;
}

- (void)setCurPos:(unsigned int)newCurPos{
	if(newCurPos <= [self.fileData length]){
		curPos = newCurPos;
	}else{
		printf("Error! Offset is past the end of the file!");
	}
}

- (unsigned int)distanceToEOF{
	return [self.fileData length]-self.curPos;
}

- (BOOL)endOfFile{
	if(self.curPos >= [fileData length]){
		self.curPos = [fileData length];
		return YES;
	}
	return NO;
}

- (Byte)loadByte{
	if(![self endOfFile] && [self distanceToEOF] >= 1){
		Byte data;
		[self.fileData getBytes:(void *)&data range:NSMakeRange(self.curPos, 1)];
		self.curPos++;
		return data;
	}
	return 0;
}

- (short)loadShort{
	if(![self endOfFile] && [self distanceToEOF] >= 2){
		short data;
		[self.fileData getBytes:(void *)&data range:NSMakeRange(self.curPos, 2)];
		self.curPos += 2;
		return data;
	}
	return 0;
}

- (int)loadInt{
	if(![self endOfFile] && [self distanceToEOF] >= 4){
		int data;
		[self.fileData getBytes:(void *)&data range:NSMakeRange(self.curPos, 4)];
		self.curPos += 4;
		return data;
	}
	return 0;
}

- (long)loadLong{
	if(![self endOfFile] && [self distanceToEOF] >= 8){
		long data;
		[self.fileData getBytes:(void *)&data range:NSMakeRange(self.curPos, 8)];
		self.curPos += 8;
		return data;
	}
	return 0;
}

- (float)loadFloat{
	if(![self endOfFile] && [self distanceToEOF] >= 4){
		float data;
		[self.fileData getBytes:(void *)&data range:NSMakeRange(self.curPos, 4)];
		self.curPos += 4;
		return data;
	}
	return 0.0f;
}

- (void)dealloc{
	[fileData release];
	[super dealloc];
}

@end
