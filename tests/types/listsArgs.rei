module MyQuery: {
  type t = Js.t {. listsInput : string};
  let make:
    nullableOfNullable::array (option string)? =>
    nullableOfNonNullable::array string? =>
    nonNullableOfNullable::array (option string) =>
    nonNullableOfNonNullable::array string =>
    unit =>
    Js.t {
      .
      parse : Js.Json.t => t, query : string, variables : Js.Json.t
    };
};