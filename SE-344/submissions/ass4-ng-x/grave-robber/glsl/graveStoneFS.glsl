
#version 330 core

struct Material {
    sampler2D diffuse;
    sampler2D specular;
    sampler2D emission;
    float     shininess;
};

uniform bool debug;
uniform vec3 objectColor;
uniform vec3 lightColor;
uniform vec3 lightPosition;
uniform vec3 eyePosition;
uniform Material material;

in vec3 fragPosition;
in vec3 outNormal;
in vec2 textureCoordinates;

void main() {
    if ( true ) {
        vec3  normalMap       = texture( material.emission, textureCoordinates ).rgb * 2.0 - 1.0;
        vec3  normalNormal    = normalize( normalMap.rgb );
        float ambientStrength = 0.1;
        vec3  ambientLight    = ambientStrength * lightColor * vec3( texture( material.diffuse, textureCoordinates ) );

        vec3  N               = normalize( normalNormal );
        vec3  L               = normalize( lightPosition - fragPosition );
        float diffuseStrength = max( dot( N, L ), 0.0f );
        vec3  diffuseColor    = diffuseStrength * lightColor * vec3( texture( material.diffuse, textureCoordinates ) );

        vec3  V                = normalize( eyePosition - fragPosition );
        vec3  R                = reflect( -L, N );
        float specularStrength = pow( max( dot( V, R ), 0.0f ), material.shininess );
        // vec3 specular = specularStrength * lightColor * ( vec3(1.0) - vec3(texture(material.specular, textureCoordinates)));
        vec3 specular = specularStrength * lightColor * vec3( texture( material.specular, textureCoordinates ) );

        gl_FragColor = vec4( ambientLight + diffuseColor + specular, 1.0f );
    }
    else {
        gl_FragColor = vec4( 0.0f, 0.0f, 0.0f, 1.0f );
    }
}