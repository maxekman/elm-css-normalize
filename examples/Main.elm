module Examples.Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Svg
import Svg.Attributes
import Html.App
import Html.CssHelpers
import Css.File
import Css.Normalize


main : Program Never
main =
    Html.App.beginnerProgram
        { model = {}
        , update = (\_ _ -> {})
        , view = view
        }


compiledCss : String
compiledCss =
    Css.Normalize.css
        |> Css.File.compile
        |> .css


view : a -> Html.Html b
view model =
    div []
        [ Html.CssHelpers.style compiledCss
        , viewElement
        ]


viewElement : Html.Html b
viewElement =
    div [ id "top" ]
        [ header []
            [ h1 [] [ text "Css.Normalize Test page" ]
            , p [] [ text "This page shows off the normalized styles of basic HTML elements" ]
            ]
        , nav []
            [ ul []
                [ li []
                    [ a [ href "#text"] [ text "Text" ]
                    , ul []
                        [ li []  [ a [ href "#text__headings" ] [ text "Headings" ] ]
                        , li []  [ a [ href "#text__paragraphs" ] [ text "Paragraphs" ] ]
                        , li []  [ a [ href "#text__blockquotes" ] [ text "Blockquotes" ] ]
                        , li []  [ a [ href "#text__lists" ] [ text "Lists" ] ]
                        , li []  [ a [ href "#text__hr" ] [ text "Horizontal rules" ] ]
                        , li []  [ a [ href "#text__tables" ] [ text "Tabular data" ] ]
                        , li []  [ a [ href "#text__code" ] [ text "Code" ] ]
                        , li []  [ a [ href "#text__inline" ] [ text "Inline elements" ] ]
                        ]
                    ]
                , li []
                    [ a [ href "#embedded" ] [ text "Embedded content" ]
                    , ul []
                        [ li [] [ a [ href "#embedded__images" ] [ text "Images" ] ]
                        , li [] [ a [ href "#embedded__audio" ] [ text "Audio" ] ]
                        , li [] [ a [ href "#embedded__video" ] [ text "Video" ] ]
                        , li [] [ a [ href "#embedded__canvas" ] [ text "Canvas" ] ]
                        , li [] [ a [ href "#embedded__meter" ] [ text "Meter" ] ]
                        , li [] [ a [ href "#embedded__progress" ] [ text "Progress" ] ]
                        , li [] [ a [ href "#embedded__svg" ] [ text "Inline" ] ]
                        , li [] [ a [ href "#embedded__iframe" ] [ text "IFrames" ] ]
                        ]
                    ]
                , li []
                    [ a [ href "#forms" ] [ text "Form elements" ]
                    , ul []
                        [ li [] [ a [ href "#forms__input" ] [ text "Inputfields" ] ]
                        , li [] [ a [ href "#forms__select" ] [ text "Select" ] ]
                        , li [] [ a [ href "#forms__checkbox" ] [ text "Checkboxes" ] ]
                        , li [] [ a [ href "#forms__radio" ] [ text "Radio buttons" ] ]
                        , li [] [ a [ href "#forms__textareas" ] [ text "Textareas" ] ]
                        , li [] [ a [ href "#forms__html5" ] [ text "HTML5 inputs" ] ]
                        , li [] [ a [ href "#forms__action" ] [ text "Action buttons" ] ]
                        ]
                    ]
                ]
            ]
        , main' []
            [ section [ id "text" ]
                [ header [] [ h1 [] [ text "Text" ] ]
                , article [ id "text__headeings" ]
                    [ header [] [ h1 [] [ text "Headings "] ]
                    , div []
                        [ h1 [] [ text "Header 1" ]
                        , h2 [] [ text "Header 2" ]
                        , h3 [] [ text "Header 3" ]
                        , h4 [] [ text "Header 4" ]
                        , h5 [] [ text "Header 5" ]
                        , h6 [] [ text "Header 6" ]
                        ]
                    , footer [] [ p [] [ a [ href "#top" ] [ text "[Top]" ] ] ]
                    ]
                , article [ id "text__paragraphs" ]
                    [ header [] [ h1 [] [ text "Paragraphs" ] ]
                    , div []
                        [ p []
                            [ text "A paragraph (from the Greek paragraphos, “to write beside” or “written beside”) is a self-contained unit of a discourse in writing dealing with a particular point or idea. A paragraph consists of one or more sentences. Though not required by the syntax of any language, paragraphs are usually an expected part of formal writing, used to organize longer prose." ]
                        ]
                    , footer [] [ p [] [ a [ href "#top" ] [ text "[Top]" ] ] ]
                    ]
                , article [ id "text__blockquotes" ]
                    [ header [] [ h1 [] [ text "Blockquotes" ] ]
                    , div []
                        [ blockquote []
                            [ p [] [ text "A block quotation (also known as a long quotation or extract) is a quotation in a written document, that is set off from the main text as a paragraph, or block of text." ]
                            , p [] [  text "It is typically distinguished visually using indentation and a different typeface or smaller size quotation. It may or may not include a citation, usually placed at the bottom." ]
                            , Html.cite [] [ a [ href "#!" ] [ text "Said no one, ever."] ]
                            ]
                        ]
                    , footer [] [ p [] [ a [ href "#top" ] [ text "[Top]" ] ] ]
                    ]
                , article [ id "text__lists" ]
                    [ header [] [ h1 [] [ text "Lists" ] ]
                    , div []
                        [ h3 [] [ text "Defintion list" ]
                        , dl []
                            [ dt [] [ text "Definition List Title" ]
                            , dd [] [ text "This is a definition list division." ]
                            ]
                        , h3 [] [ text "Ordered List" ]
                        , ol []
                            [ li [] [ text "List Item 1" ]
                            , li [] [ text "List Item 2" ]
                            , li [] [ text "List Item 3" ]
                            ]
                        , h3 [] [ text "Unordered List" ]
                        , ul []
                            [ li [] [ text "List Item 1" ]
                            , li [] [ text "List Item 2" ]
                            , li [] [ text "List Item 3" ]
                            ]
                        ]
                    , footer [] [ p [] [ a [ href "#top" ] [ text "[Top]" ] ] ]
                    ]
                , article [ id "text__hr" ]
                    [ header [] [ h1 [] [ text "Horizontal rules" ] ]
                    , div [] [ hr [] [] ]
                    , footer [] [ p [] [ a [ href "#top" ] [ text "[Top]" ] ] ]
                    ]
                , article [ id "text__tables" ]
                    [ header [] [ h1 [] [ text "Tabular data" ] ]
                    , table []
                        [ caption [] [ text "Table Caption" ]
                        , thead []
                            [ tr []
                                [ th [] [ text "Table Header 1" ]
                                , th [] [ text "Table Header 2" ]
                                , th [] [ text "Table Header 3" ]
                                , th [] [ text "Table Header 4" ]
                                , th [] [ text "Table Header 5" ]
                                ]
                            ]
                        , tfoot []
                            [ tr []
                                [ th [] [ text "Table Footer 1" ]
                                , th [] [ text "Table Footer 2" ]
                                , th [] [ text "Table Footer 3" ]
                                , th [] [ text "Table Footer 4" ]
                                , th [] [ text "Table Footer 5" ]
                                ]
                            ]
                        , tbody []
                            [ tr []
                                [ td [] [ text "Table Cell 1" ]
                                , td [] [ text "Table Cell 2" ]
                                , td [] [ text "Table Cell 3" ]
                                , td [] [ text "Table Cell 4" ]
                                , td [] [ text "Table Cell 5" ]
                                ]
                            , tr []
                                [ td [] [ text "Table Cell 1" ]
                                , td [] [ text "Table Cell 2" ]
                                , td [] [ text "Table Cell 3" ]
                                , td [] [ text "Table Cell 4" ]
                                , td [] [ text "Table Cell 5" ]
                                ]
                            , tr []
                                [ td [] [ text "Table Cell 1" ]
                                , td [] [ text "Table Cell 2" ]
                                , td [] [ text "Table Cell 3" ]
                                , td [] [ text "Table Cell 4" ]
                                , td [] [ text "Table Cell 5" ]
                                ]
                            ]
                        ]
                    , footer [] [ p [] [ a [ href "#top" ] [ text "[Top]" ] ] ]
                    ]
                , article [ id "text__code" ]
                    [ header [] [ h1 [] [ text "Code" ] ]
                    , div []
                        [ p []
                            [ strong [] [ text "Keyboard input: " ]
                            , kbd [] [ text "Cmd" ]
                            ]
                        , p []
                            [ strong [] [ text "Inline code: " ]
                            , code [] [ text "<div>code</div>" ]
                            ]
                        , p []
                            [ strong [] [ text "Sample output: " ]
                            , samp [] [ text "This is sample output from a computer program." ]
                            ]
                        , h2 [] [ text "Pre-formatted text" ]
                        , pre []
                            [ text """
P R E F O R M A T T E D T E X T
! " # $ % & ' ( ) * + , - .
0 1 2 3 4 5 6 7 8 9 : ; < = > ?
@ A B C D E F G H I J K L M N O
P Q R S T U V W X Y Z   ^ _
` a b c d e f g h i j k l m n o
p q r s t u v w x y z { | } ~
                            """
                            ]
                        ]
                    , footer [] [ p [] [ a [ href "#top" ] [ text "[Top]" ] ] ]
                    ]
                , article [ id "text__inline" ]
                    [ header [] [ h1 [] [ text "Inline elements" ] ]
                    , div []
                        [ p [] [ a [ href "#!" ] [ text "This is a text link" ] ]
                        , p [] [ strong [] [ text "Strong is used to indicate strong importance." ] ]
                        , p [] [ em [] [ text "This text as added emphasis." ] ]
                        , p []
                            [ text "The "
                            , b [] [ text "b element " ]
                            , text "is stylistically different text from normal text, wihtout any special importance"
                            ]
                        , p []
                            [ text "The "
                            , i [] [ text "i element " ]
                            , text "is text that is offset from the normal text."
                            ]
                        , p []
                            [ text "The "
                            , u [] [ text "u element " ]
                            , text "is text with an unarticulated, though explicitly rendered, non-textual annotation."
                            ]
                        , p []
                            [ del [] [ text "This text is deleted"]
                            , text " and "
                            , ins [] [ text "This text is inserted" ]
                            ]
                        , p [] [ s [] [ text "This text has a strikethrough" ] ]
                        , p [] [ text "Superscript", sup [] [ text "®" ] ]
                        , p []
                            [ text "Subscript for things like H"
                            , sub [] [ text "2" ]
                            , text "O."
                            ]
                        , p [] [ small [] [ text "This small text is small for for fine print, etc." ] ]
                        , p [] [ text "Abbreviation: ", abbr [ title "HyperText Markup Language"] [ text "HTML" ] ]
                        , p [] [ q [ Html.Attributes.cite "https://developer.mozilla.org/en-US/docs/HTML/Element/q"] [ text "This text is a short inline quotation." ] ]
                        , p [] [ Html.cite [] [ text "This is a citation." ] ]
                        , p []
                            [ text "The "
                            , dfn [] [ text "dfn element" ]
                            , text " indicates a definition."
                            ]
                        , p []
                            [ text "The "
                            , mark [] [ text "mark element" ]
                            , text " indicates a highlight."
                            ]
                        , p []
                            [ text "The "
                            , var [] [ text "variable element" ]
                            , text ", such as "
                            , var [] [ text "x" ]
                            , text " = "
                            , var [] [ text "y" ]
                            , text "."
                            ]
                        , p []
                            [ text "The time element: "
                            , time [ datetime "2013-04-06T12:32+00:00" ] [ text "2 weeks ago" ]
                            ]
                        ]
                    , footer [] [ p [] [ a [ href "#top" ] [ text "[Top]" ] ] ]
                    ]
                ]
            , section [ id "embedded" ]
                [ header [] [ h1 [] [ text "Embedded content" ] ]
                , article [ id "embedded__images" ]
                    [ header [] [ h2 [] [ text "Images" ] ]
                    , div []
                        [ h3 []
                            [ text "No "
                            , code [] [ text "<figure>" ]
                            , text " element"
                            ]
                        , p [] [ img [ src "http://placekitten.com/480/480", alt "Image alt text" ] [] ]
                        , h3 []
                            [ text "wrapped in a "
                            , code [] [ text "<figure>" ]
                            , text " element, no "
                            , code [] [ text "<figcaption>" ]
                            ]
                        , figure []
                            [ img [ src "http://placekitten.com/420/420", alt "Image alt text" ] []
                            ]
                        , h3 []
                            [ text "Wrapped in a "
                            , code [] [ text "<figure>" ]
                            , text " element, with a "
                            , code [] [ text "<figcaption>" ]
                            ]
                        , figure []
                            [ img [ src "http://placekitten.com/420/420", alt "Image alt text" ] []
                            , figcaption [] [ text "Here is a caption for this image." ]
                            ]
                        ]
                    , footer [] [ p [] [ a [ href "#top" ] [ text "[Top]" ] ] ]
                    ]
                , article [ id "embedded__audio" ]
                    [ header [] [ h2 [] [ text "Audio" ] ]
                    , div [] [ audio [ controls True ] [] ]
                    , footer [] [ p [] [ a [ href "#top" ] [ text "[Top]" ] ] ]
                    ]
                , article [ id "embedded__video" ]
                    [ header [] [ h2 [] [ text "Video" ] ]
                    , div [] [ video [ controls True ] [] ]
                    , footer [] [ p [] [ a [ href "#top" ] [ text "[Top]" ] ] ]
                    ]
                , article [ id "embedded__canvas" ]
                    [ header [] [ h2 [] [ text "Canvas" ] ]
                    , div [] [ canvas [] [ text "canvas" ] ]
                    , footer [] [ p [] [ a [ href "#top" ] [ text "[Top]" ] ] ]
                    ]
                , article [ id "embedded__meter" ]
                    [ header [] [ h2 [] [ text "Meter" ] ]
                    , div []
                        [ meter
                            [ value "2"
                            , Html.Attributes.min "0"
                            , Html.Attributes.max "10"
                            ]
                            [ text "2 out of 10" ]
                        ]
                    , footer [] [ p [] [ a [ href "#top" ] [ text "[Top]" ] ] ]
                    ]
                ,  article [ id "embedded__progress" ]
                    [ header [] [ h2 [] [ text "Progress" ] ]
                    , div [] [ progress [] [ text "progress" ] ]
                    , footer [] [ p [] [ a [ href "#top" ] [ text "[Top]" ] ] ]
                    ]
                , article [ id "embedded__svg" ]
                    [ header [] [ h2 [] [ text "Inline SVG" ] ]
                    , div []
                        [ Svg.svg
                            [ Svg.Attributes.width "100px"
                            , Svg.Attributes.height "100px"
                            ]
                            [ Svg.circle
                                [ Svg.Attributes.cx "100"
                                , Svg.Attributes.cy "100"
                                , Svg.Attributes.r "100"
                                , Svg.Attributes.fill "#1fa3ec"
                                ]
                                []
                            ]
                        ]
                    , footer [] [ p [] [ a [ href "#top" ] [ text "[Top]" ] ] ]
                    ]
                , article [ id "embedded__iframe" ]
                    [ header [] [ h2 [] [ text "IFrame" ] ]
                    , div [] [ iframe [ src "index.html", height 300 ] [] ]
                    , footer [] [ p [] [ a [ href "#top" ] [ text "[Top]" ] ] ]
                    ]
                ]
            ]
        ]


