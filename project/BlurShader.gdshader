shader_type canvas_item;

uniform float blur_strength : hint_range(0.0, 1.0);

void fragment() {
    // Calculate the blur amount based on blur_strength
    float blur_amount = 1.0 - blur_strength;
    
    // Calculate the blur offset
    vec2 offset = vec2(blur_amount * 0.03, blur_amount * 0.03);
    
    // Apply blur effect
    COLOR = textureLod(SCREEN_TEXTURE, SCREEN_UV, 0.0, offset);
}
