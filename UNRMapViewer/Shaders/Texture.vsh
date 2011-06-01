//
//  Shader.vsh
//  UNRMapViewer
//
//  Created by Andrew Dudney on 5/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//
uniform mat4 modelViewProjection;

attribute vec4 position;
attribute vec2 inTexCoord;

varying highp vec2 texCoord;

void main(){
	gl_Position = position*modelViewProjection;
	texCoord = inTexCoord;
}
