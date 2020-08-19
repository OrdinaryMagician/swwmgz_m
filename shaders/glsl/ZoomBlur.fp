void main()
{
	vec2 p = CenterSpot-TexCoord;
	vec4 res = vec4(0.);
	vec2 d = (p/150.)*Str;
	float w = 1.;
	vec2 s = TexCoord;
	float sum = 0.;
	for ( int i=0; i<32; i++ )
	{
		res += w*texture(InputTexture,s);
		sum += w;
		w *= .8;
		s += d;
	}
	res /= sum;
	FragColor = mix(texture(InputTexture,TexCoord),vec4(res.rgb,1.),Fade);
}
