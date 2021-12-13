(** The abstract type of values representing a node *)
type t

type terrain_id = string

type building_id = string

(** [node_maker id neigh terr b pix] takes an id [id], the list of
    neighbors [neigh], the terrain type and die numer [terr], the type
    of building [b] and the location [pix] on the graphic and creates a
    node instance. *)
val node_maker :
  string ->
  (t ref * int) array ->
  (terrain_id * int) list ->
  building_id ->
  int * int ->
  t

(** [get_id n] is the identifier of node [n]. *)
val get_id : t -> string

(** [node_pix n] is the (x,y) value of the pixel location of the node on
    the graphic. *)
val node_pix : t -> int * int

(** [check_building n b] is false if the node [n] has the building_id
    [b] and true if it does not. *)
val check_building : t -> building_id -> bool

(** [non_empt b p] is the id of the node if there is a building on node
    [s]. If not [non_empt s] is the empty string. *)
val non_empt : building_id -> t -> string

(** [assign_neighbor n neigh] changes the neighbors of node [n] to
    [neigh]*)
val assign_neighbor : t -> (t ref * int) list -> unit

val change_building : t array -> int -> building_id -> unit

val get_tile_array : t -> (int * terrain_id) array
