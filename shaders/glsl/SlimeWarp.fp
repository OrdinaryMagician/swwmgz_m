vec2 calcdist( vec2 duv )
{
	vec2 uv = vec2(0.);
	vec2 dist = 2.*texture(warptex,duv*.4).xy-1.;
	dist.x *= abs(mod(dist.y+timer*0.24536,4.)-2.)-1.;
	uv.x += dist.x*.02*dfact;
	dist = 2.*texture(warptex,(duv+uv)*.3).xy-1.;
	dist.y *= abs(mod(dist.x+timer*0.15363,4.)-2.)-1.;
	uv.y -= dist.y*.03*dfact;
	return uv;
}

void main()
{
	vec2 uv = TexCoord+calcdist(TexCoord-vec2(0.,timer*.08));
	vec2 bresl = textureSize(InputTexture,0);
	vec2 sr = vec2(1.,bresl.y/bresl.x);
	float p = distance(uv,vec2(.5));
	uv = (uv-.5)*(1.-dfact*.11)+.5;
	vec4 res = texture(InputTexture,uv);
	vec4 flood = texture(fluidtex,uv*sr+vec2(timer*.02,timer*.05));
	res.rgb += flood.rgb*dfact*.3;
	flood = texture(fluidtex,uv*sr*2.+vec2(-timer*.04,timer*.08));
	res.rgb += flood.rgb*dfact*.4;
	FragColor = vec4(res.rgb,1.);
}
