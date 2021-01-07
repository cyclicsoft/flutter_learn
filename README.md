# flutter_learn

A step by step flutter learning project for developers.

## Getting Started

This project is a starting point for a Flutter application.
###Key Points
1. In flutter every view is a widget.
2. Widget are two types: i) Stateless ii) Stateful
3. Main app is always a Stateless widget
4. flutter never update the ui element it recreates the widgets if its view need to be updated.

###Stateless Widget
The widget which do not have a state.
The widget (View) who never changes at runtime.
Ex. Text('Learn Flutter')
Here Text() widget never updated so its a Stateless widget. Its render only based on parameter values one time.
Ex2. LearningApp widget at main.dart in this app is a Stateless widget.
why?
Learning app renders one time and never gets updated during runtime at this point. There is no user interaction with ui for now. So view creates one time and never changes. 

###Stateful widget
he widget which have a state.
The widget (View) who changes at runtime.
Remember flutter never update the ui element it recreates the widgets if its view need to be updated.
Ex. Now HomePage widget is a stateful widget.
why?
Because home page ui changed on button press. That means state changes if user press on update button.


A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
