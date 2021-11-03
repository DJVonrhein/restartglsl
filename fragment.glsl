varying vec4 position;
varying vec3 normal;
varying vec4 world_position;

float pi=4.0*atan(1.0);

void main()
{
    ec4 ambient = vec4(1,0,0,1);
    vec4 diffuse = vec4(0,1,0,1);
    vec4 specular = vec4(0,0,1,1)
    
    uniform gl_LightSourceParameters gl_LightSource[gl_MaxLights];  //array of lights
    uniform gl_LightModelParameters gl_LightModel;  // what the heck do we do with this 
    uniform gl_MaterialParameters gl_FrontMaterial; //Material intersected

    vec4 tot_ambient_lights = vec4(0,0,0,0);
    vec4 diffuse = vec4(0,0,0,0);
    vec4 specular = vec4(0,0,0,0);

    vec4 camera = vec4(0,0,0,0);
    vec4 V = camera - 
    vec4 L;
    for(unsigned i = 0; i < gl_MaxLights; ++i){
        L = gl_LightSource[i].position - 
        tot_ambient_lights += gl_LightSource[i].ambient;
    
        double dot_diffuse = dot(normal, normalized(gl_LightSource[i]));
        if(dot_diffuse > 0)
            diffuse += gl_LightSource[i].diffuse * gl_LightSource[i] * dot_diffuse;
    
        double dot_spectral = dot(normal, )
        if(dot_spectral > 0)
            spectral += gl_LightSource[i].spectral * gl_LightSource[i] * pow(dot_spectral,gl_FrontMaterial.shininess);
    }
    vec4 ambient = tot_ambient_lights * gl_FrontMaterial.ambient;

    gl_FragColor = ambient + diffuse + specular;
}
