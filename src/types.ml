(* will be replaced with obeam *)

module Value = struct
  type t =
    | Int of int
    | Float of float
    | Atom of string
end

module rec Expr : sig
  type t =
    | Val of Value.t
    | Var of String.t
    | Struct of t list
    | App of t * t list
    | Abs of String.t list * t
    | Let of String.t * t * t
    | Letrec of (String.t * t) list * t
    | Case of t * (Pattern.t * t) list
end = struct
  type t =
    | Val of Value.t
    | Var of String.t
    | Struct of t list
    | App of t * t list
    | Abs of String.t list * t
    | Let of String.t * t * t
    | Letrec of (String.t * t) list * t
    | Case of t * (Pattern.t * t) list
end

and Pattern : sig
  type t =
    | Var of String.t * Expr.t
    | Struct of String.t list * Expr.t
end = struct
  type t =
    | Var of String.t * Expr.t
    | Struct of String.t list * Expr.t
end

module rec Type : sig
  type t =
    | Var of String.t
    | Struct of t list
    | Fun of t list * t
    | Union of t * t
    | Constraint of t * Constraint.t
    | Any
    | None
    | Integer
    | Atom
    | Val of Value.t
end = struct
  type t =
    | Var of String.t
    | Struct of t list
    | Fun of t list * t
    | Union of t * t
    | Constraint of t * Constraint.t
    | Any
    | None
    | Integer
    | Atom
    | Val of Value.t
end

and Constraint : sig
  type t =
    | Subtype of Type.t * Type.t
    | Conj of t list
    | Disj of t list
    | Empty
end = struct
  type t =
    | Subtype of Type.t * Type.t
    | Conj of t list
    | Disj of t list
    | Empty
end
