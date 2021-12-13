type player = {
  mutable settlements : int;
  mutable cities : int;
  mutable cards : string array;
  mutable dev_cards : string array;
  mutable points : int;
  mutable tile_array : (int * Node.terrain_id) array;
  mutable n_array : Node.t array;
  p_name : string;
  color : Graphics.color;
}

val make_player : string -> Graphics.color -> player

val color : player -> Graphics.color

val add_to_tile_array :
  player -> (int * Node.terrain_id) array -> Node.t -> unit

val update_cities : player -> unit

val count_cards : string list -> string -> int

val seven_rule : player -> int -> unit

val update_settlements : player -> unit

val random_card : string array -> string

val dev_card_point : player -> string -> unit

val dev_card_remove : player -> unit

val draw_dev_card : player -> string array -> string

val buy_dev_shelper : player -> bool

val buy_dev_chelper : player -> bool

val buy_dev_whelper : player -> bool

val can_buy_devcard : player -> bool

val draw_card : player -> int -> Node.terrain_id array

val get_cards : Node.terrain_id array -> string array

val add_cards : player -> string array -> unit
