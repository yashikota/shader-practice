// https://www.shadertoy.com/view/lcXSzs

void mainImage(out vec4 fragColor, in vec2 fragCoord)
{
    vec2 pos = fragCoord / iResolution.xy;

    vec3[4]colors = vec3[](
        vec3(1.0, 0.0, 0.0),
        vec3(0.0, 0.0, 1.0),
        vec3(0.0, 1.0, 0.0),
        vec3(1.0, 1.0, 0.0)
    );

    vec3 col = mix(mix(-sin(colors[0] * iTime), cos(colors[1] * iTime), pos.x), mix(cos(colors[2] * iTime), sin(colors[3] * iTime), pos.x), pos.y);

    fragColor = vec4(col, 1.0);
}
