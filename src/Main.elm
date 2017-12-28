module Main exposing (main)

import Html exposing (..)


type Model
    = Foo
    | Bar


type Msg
    = NoOp


init : ( Model, Cmd Msg )
init =
    ( Foo
    , Cmd.none
    )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )


view : Model -> Html Msg
view model =
    text "🌳 hello world"


main : Program Never Model Msg
main =
    Html.program
        { view = view
        , init = init
        , update = update
        , subscriptions = always Sub.none
        }
