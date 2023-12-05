extends TextureRect

# Variables for controlling blurriness
var blurAmount : float = 1.0  # Initial blur amount
var blurDecrement : float = 0.2  # Amount to decrement the blur per correct guess

func _process(delta):
	# Update the shader to control blurriness
	update_shader()

func update_shader():
	# Create a ShaderMaterial if it doesn't exist
	if not material:
		material = ShaderMaterial.new()
		set_material(material)

	# Update the shader code dynamically to control blurriness
	var shader_code = "shader_type canvas_item;\n"
	shader_code += "uniform float blur_amount : hint_range(0.0, 1.0);\n"
	shader_code += "void fragment() {\n"
	shader_code += "    COLOR = textureLod(SCREEN_TEXTURE, FRAGCOORD / SCREEN_SIZE, 0.0);\n"
	shader_code += "    COLOR.a = 1.0 - blur_amount;\n"
	shader_code += "}\n"

	# Set the shader code and blur amount in the material
	material.set_shader_code(shader_code)
	material.set_shader_param("blur_amount", blurAmount)

# Function to decrease blur amount on correct guess
func decrease_blur():
	blurAmount = max(0.0, blurAmount - blurDecrement)
	update_shader()
	# You can also add logic to stop decreasing blur after a certain threshold is reached
