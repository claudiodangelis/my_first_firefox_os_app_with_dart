// imports the "html" standard library for DOM manipulation,
// client-side HTTP requests and more
//
// https://api.dartlang.org/apidocs/channels/stable/dartdoc-viewer/dart-dom-html
import 'dart:html';

// `main()` is the entry point of every Dart app
void main() {
  // selects the DOM element with id "sample_text_id"
  querySelector("#sample_text_id")
      // ".." is the cascade operator: `querySelector()` is the receiver of
      // both `text` and `onClick`
      ..text = "Click me!"  // sets text
      ..onClick.listen(reverseText);  // registers a callback function
}

void reverseText(MouseEvent event) {
  var text = querySelector("#sample_text_id").text;
  // creates a new StringBuffer to build the final string
  var buffer = new StringBuffer();
  for (int i = text.length - 1; i >= 0; i--) {
    buffer.write(text[i]);
  }
  // returns the string and sets it as text of #sample_text_id
  querySelector("#sample_text_id").text = buffer.toString();
}
