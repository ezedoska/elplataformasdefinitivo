
velocity_ = [0,0]
gravity_ = 1.5;
jump_speed_ = 28;
max_velocity_ = [8,32];
acceleration_ = 2.1;

//get the tilemapID
var layer_id = layer_get_id("CollisionTiles");
collision_tile_map_id_ = layer_tilemap_get_id(layer_id);