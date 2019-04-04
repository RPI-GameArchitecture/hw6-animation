#version 400

uniform mat4 u_mvp;


//****

// TODO: Homework 6.
// First, create a mat4 array to hold the skinning matrices of the skeleton.
// Refer to ga_animated_material::bind for clues on how to define this array, 
// and for what other uniform variables this shader will need to handle. 

// Next, create in variables for vertex attributes of the bar model.


//****


//****

out vec3 o_normal;
out vec3 o_color;
out vec2 o_uv;

void main(void)
{

	// TODO: Homework 6.
	// Implement skinning math.
	// Each vertex must be multiplied by the skinning matrices of the joints
	// that influence it, and each result weighted by the influence of each joint.
	// The sum of the transformed, weighted positions is the skinned position of
	// the vertex.  It can then be multiplied by the mvp matrix.
	// The same will need to be done for the normal vectors 
	
    //****

	//*****
	o_normal = vec3(1.0, 0.0, 0.0);
	o_color = vec3(1.0, 1.0, 1.0);
	o_uv = in_texcoord;
	gl_Position = u_mvp * vec4(in_vertex,1.0);

}