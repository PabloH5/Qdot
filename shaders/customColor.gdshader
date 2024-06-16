shader_type canvas_item;

uniform vec4 primary_color : source_color  = vec4(0.0, 0.0, 0.1, 1.0);  // Color original 1
uniform vec4 secondary_color : source_color  = vec4(0.0, 0.0, 0.1, 1.0);  // Color original 2
uniform vec4 custom_primary_color : source_color  = vec4(1.0, 0.0, 0.0, 1.0);  // Nuevo color 1
uniform vec4 custom_secondary_color : source_color  = vec4(0.0, 1.0, 0.0, 1.0);  // Nuevo color 2

// Compare colors with a tolerance
bool is_similar_color(vec4 color1, vec4 color2, float tolerance) {
    return (abs(color1.r - color2.r) < tolerance &&
            abs(color1.g - color2.g) < tolerance &&
            abs(color1.b - color2.b) < tolerance &&
            abs(color1.a - color2.a) < tolerance);
}

void fragment() {
    vec4 current_color = texture(TEXTURE, UV);

    // Compare the current color texture with the custom color 1.
    if (is_similar_color(current_color, primary_color, 0.01)) {
        COLOR = custom_primary_color;
    }
    // Compare the current color texture with the custom color 2.
    else if (is_similar_color(current_color, secondary_color, 0.01)) {
        COLOR = custom_secondary_color;
    }
    // Mantein the default colors.
    else {
        COLOR = current_color;
    }
}
