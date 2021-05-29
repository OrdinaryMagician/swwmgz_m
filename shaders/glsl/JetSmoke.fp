// scrolling smoke with gradient fade

void SetupMaterial( inout Material mat )
{
	vec3 base = getTexel(vTexCoord.st).rgb;
	vec2 scroll = vTexCoord.st*.5+vec2(.2,.5)*timer;
	float smk = texture(smoketex,scroll).x;
	scroll = vTexCoord.st*.9+vec2(-.2,.4)*timer;
	smk *= texture(smoketex,scroll).x;
	mat.Base = vec4(base*smk,1.);
}
