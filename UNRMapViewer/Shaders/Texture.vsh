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
attribute vec2 inLightCoord;

varying vec2 texCoord;
varying vec2 lightCoord;

void main(){
	gl_Position = modelViewProjection*position;
	texCoord = inTexCoord;
	lightCoord = inLightCoord;
}
