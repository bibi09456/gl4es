tinygl4angle
====

A tiny OpenGL implemenation for Minecraft 1.17+ to run on [ANGLE](https://github.com/google/angle) based on gl4es.

## Implemented functions

<table>
	  <thead>
		<tr>
		  <th align="center">OpenGL Function</th>
		  <th align="center">Wrapped to</th>
		  <th align="center">Required extension</th>
		</tr>
	  </thead>
	  <tbody>
		<tr>
		  <td>glBindFragDataLocation</td>
		  <td>glBindFragDataLocationEXT</td>
		  <td>GL_EXT_blend_func_extended</td>
		</tr>
		<tr>
		  <td>glClearDepth</td>
		  <td>glClearDepthf</td>
		  <td></td>
		</tr>
		<tr>
		  <td>glMapBuffer</td>
		  <td>glMapBufferRange</td>
		  <td></td>
		</tr>
	  </tbody>
	</table>

## Emulated functions extensions

<table>
	  <thead>
		<tr>
		  <th align="center">OpenGL Function</th>
		  <th align="center">Emulate behavior</th>
		</tr>
	  </thead>
	  <tbody>
		<tr>
		  <td>glGetTexLevelParameteriv</td>
		  <td>emulate GL_PROXY_TEXTURE_*</td>
		</tr>
		<tr>
		  <td>glTexImage2D</td>
		  <td>emulate GL_PROXY_TEXTURE_*</td>
		</tr>
		<tr>
		  <td>glShaderSource</td>
		  <td>change #version value: 100,110 -> 120; 130,140,150 -> 330</td>
		</tr>
	  </tbody>
	</table>
