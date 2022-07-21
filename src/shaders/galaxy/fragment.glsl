varying vec2 vUv;
varying vec3 vColor;

void main () {
    // star
    float strength = 0.15 / (distance(vec2(gl_PointCoord.x, (gl_PointCoord.y - 0.5) * 5.0 + 0.5), vec2(0.5)));
    strength *= 0.15 / (distance(vec2(gl_PointCoord.y, (gl_PointCoord.x - 0.5) * 5.0 + 0.5), vec2(0.5)));

    vec3 color = mix(vec3(0.0), vColor, strength);
    gl_FragColor = vec4(color, 1.0);
}
