# Cubos Widgets

Flutter package containing the most used Widgets in Cubos Tecnologia's projects.

## Features
- HorizontalSpacing
- VerticalSpacing
- AlwaysDisabledFocusNode
- HtmlWidget

### HtmlWidget
It uses the `flutter_html` library to allow us to use HTML tags to customize text styles without using the RichText widget. It also allows us to customize texts from the backend. Example:

```
HtmlWidget(
    data: """
      Hello <strong>World</strong>!
      <br>
      <br>
      <strong>Uma lista qualquer:</strong>
      <ul>
        <li>2x Cadeiras</li>
        <li>1x Cobertor</li>
        <li>1x Folha de papel</li>
        <li>1x caixa de lápis de cor</li>
        <li>1x caixa de tinta guache</li>
      </ul>
      """,
    textStyle: TextStyle(color: Colors.blue, fontSize: 20),
);
```
### ResponsiveTextScaleFactor
Responsive text scale factor should be used to create a range of text scale factor for a specific widget or all your screen, and ensures better usability without layout overflow when users with vision problems use the app with TextScaleFactor increased on your devices.

```
ResponsiveTextScaleFactor(
  minScaleFactor: 0.5,
  maxScaleFactor: 2.0,
  child: Text('Hello world'),
),
```

## Let's grow together!

You can support us making your own contributions! Report bugs or unexpected behaviors and suggest new features on the issues page from the [Github repository](https://github.com/daniloapr/cubos_widgets). Widget tests are very appreciated and recommended in the Pull Requests.

## Get to know us

Find out more about Cubos Tecnologia on [cubos.io](https://cubos.io)