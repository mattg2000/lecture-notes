# Intro to JavaScript: Events and syntax
## JavaScript - What is it?
- **JavaScript** - The most used programming language in the world.
  - Not necessarily the most used primary language. But many, many applications use it as a secondary language in their applications.
- **script** - small utility that is designed to be run locally to automate tasks.
- Syntax is based on the Java language, hence the name.
- Not the same thing! Don't confuse the two, or you will look VERY bad.
- Originally built in 10 days in 1995 so that we could do things without going back to the server, because pre-broadband, going back to the server was v e r y s l o w.
  - led to a bad reputation, and had (still has!) very serious design limitations.
- For a long time, it stayed only in the browser.
- 2009, Node.js popularizes server-side JavaScript
  - Weirdly absurd endpoint – JavaScript everywhere! But nonetheless, it works.
  - We don't use server-side in this class, only browser-side
- "Science fiction / comedy / absurdist / completely serious talk [on] the history of JavaScript, and programming in general, from 1995 until 2035"
  - https://www.destroyallsoftware.com/talks/the-birthand-death-of-javascript

## JavaScript Events
- **event** - In JavaScript, something that happens that can be reacted to with code.
  - Either something the browser does (timeline) or something the user does

### Browser timeline events
Something that happens on every page visit. These are the most important events.
- `DOMContentLoaded` AKA **ready**: ALL HTML is loaded and we have a plain black-and-white version of the page - images, CSS, JavaScript still loading
- `load` : all images, CSS, and JavaScript are loaded - **cursor is no longer busy**
the timeline events are very important for these key reasons:
- users don't get full control until `load`
- JavaScript files (custom and libraries) often have to wait for `load` to manipulate data
- these events show you how fast your site is

### User events
https://bootcamp-coders.cnm.edu/class-materials/javascript/events/

## Mouse events
- `click`: single click with the primary button - tap on mobile
- `dblclick`: two clicks with the primary button - double tap on mobile
- `auxclick`: single click with any secondary button - long press on mobile
- `mouseenter`: mouse enters an area
- `mouseover`: mouse is in an area
- `mouseout`: mouse exits an area

### Keyboard events
- `keydown`: key is pressed
- `keypress`: repeats while key is held in
- `keyup`: key is let go

#### Window events
- `focus`: when a window (or object within a window) grabs the keyboard
- `blur`: inverse of focus, when it loses the keyboard
- `resize`: when the window area changes - also a zoom in/out
- `scroll`: when the content is pushed up or down

## The Document Object
Many objects/methods access/manipulate the HTML document
- You can map events, delete content, read content, add content, etc.
- `document.getElementById`: method to get `<div id="foo">`
- `document.getElementByClassName`: method to get elements `<div class="foo">` as an array
- `document.forms`: array of forms in the HTML document
- `document.querySelector`: method to get objects by CSS selectors
- `document.onfoo`: reaction to the foo event
**IMPORTANT**: `document.getElementById("foo").value` gives you the value of the form data as a string, even if this is a `number` field
- frequently used tactic: create an empty tag with an id for user output from a function
  - `<p id="foo"></p>`

## Unique JavaScript Syntax Quirks
- JavaScript does very strange things with functions that most other languages don't allow you to do.
  - This is much of what makes it appealing, and also what makes other people dislike it strongly
- **closure** - A function that creates and returns another function instead of a variable
  - Allows us to build boilerplate functions that can be used to build more specific functions that can be very useful for shorthand.
  - Examples and Further reading:
    - https://bootcamp-coders.cnm.edu/class-materials/javascript/closures/
    - https://developer.mozilla.org/en-US/docs/Web/JavaScript/
- **foreach loop** - given an array of elements, do one thing on each item in the array
  - JavaScript uses function syntax to do this.
  - https://developer.mozilla.org/enUS/docs/Web/JavaScript/Reference/Global_Objects/Array/forEach
- **spread syntax** - pass an array as its individual elements
  - https://developer.mozilla.org/enUS/docs/Web/JavaScript/Reference/Operators/Spread_syntax