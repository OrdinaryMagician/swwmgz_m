HardwareShader PostProcess beforebloom
{
	Name "WaterWarp"
	Shader "shaders/glsl/WaterWarp.fp" 330
	Texture warptex "textures/warptex.png"
	Texture fluidtex "textures/wetwarp.png"
	Uniform float dfact
	Uniform float timer
}
HardwareShader PostProcess beforebloom
{
	Name "LavaWarp"
	Shader "shaders/glsl/LavaWarp.fp" 330
	Texture warptex "textures/warptex.png"
	Texture fluidtex "textures/lavawarp.png"
	Uniform float dfact
	Uniform float timer
}
HardwareShader PostProcess beforebloom
{
	Name "SlimeWarp"
	Shader "shaders/glsl/SlimeWarp.fp" 330
	Texture warptex "textures/warptex.png"
	Texture fluidtex "textures/slimewarp.png"
	Uniform float dfact
	Uniform float timer
}
HardwareShader PostProcess beforebloom
{
	Name "ZoomBlur"
	Shader "shaders/glsl/ZoomBlur.fp" 330
	Uniform float Str
	Uniform float Fade
	Uniform vec2 CenterSpot
}
HardwareShader PostProcess beforebloom
{
	Name "SilverScope"
	Shader "shaders/glsl/SilverScope.fp" 330
}
HardwareShader PostProcess beforebloom
{
	Name "BarrierShader"
	Shader "shaders/glsl/Barrier.fp" 330
	Texture WarpTex "textures/heattex.png"
	Uniform float timer
}
HardwareShader PostProcess beforebloom
{
	Name "GhostShader"
	Shader "shaders/glsl/Ghostscreen.fp" 330
}
HardwareShader PostProcess scene
{
	Name "InvinciShader"
	Shader "shaders/glsl/Invinciscreen.fp" 330
	Uniform float str
}

HardwareShader PostProcess scene
{
	Name "RagekitShader"
	Shader "shaders/glsl/Ragescreen.fp" 330
	Texture WarpTex "textures/ragewarp.png"
	Texture NoiseTex "textures/graynoise.png"
	Uniform float timer
	Uniform float xtrastr
}

HardwareShader PostProcess scene
{
	Name "Glitch"
	Shader "shaders/glsl/Glitch.fp" 330
	Uniform float Timer
	Uniform float str1
	Uniform float str2
}
HardwareShader PostProcess scene
{
	Name "Grain"
	Shader "shaders/glsl/Grain.fp" 330
	Uniform float Timer
	Uniform float ni
	Texture NoiseTexture "textures/rgbnoise.png"
}
