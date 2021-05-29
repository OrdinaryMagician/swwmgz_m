// pseudo-matcap + scrolling overlay

void SetupMaterial( inout Material mat )
{
	vec3 rnorm = normalize(vEyeNormal.xyz)*vec3(1,-1,1);
	vec4 basemap = getTexel(rnorm.xy*.49+.5);
	basemap.rgb *= .25;
	vec3 grad = texture(bartex,vec2(0.,vTexCoord.t*5.+timer)).rgb;
	grad *= .25;
	mat.Base = basemap+vec4(grad,0.);
}
