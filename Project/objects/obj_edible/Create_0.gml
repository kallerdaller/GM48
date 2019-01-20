rnd = irandom(2)
currentColor = "red";

switch (rnd) {
    case 0:
        sprite_index = spr_edible_red;
		currentColor = "red";
        break;
    case 1:
        sprite_index = spr_edible_green;
		currentColor = "green";
        break;
    case 2:
        sprite_index = spr_edible_blue;
		currentColor = "blue";
        break;
}

run = false;