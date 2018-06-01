name: Browser APIs

description: The browser. The mother of javascript. You'll work better, together. 

sections:
  '0':
    - navigation
    - toolbox-i
  '1':
    - measuring-performance
    - reading-writing
    - toolbox-ii
    - user-interaction

standards:
  dom:
    name: Use the Document object to programmatically create and alter layouts
    description: This standard specifically deals with manipulating the Document Object Model
    objectives:
      0: Create and append elements to the Document
      1: Create complex elements from structured data
      2: Modify the style or state of elements
      3: Create events handlers for events relating to Document elements
  browser-apis-device:
    name: Use modern Browser APIs to interact with the device
    description: This standard deals with use of device sensors and details made available by the browser on the device.
    objectives:
      0: Use modern browser APIs to interact with device performance information, like battery level, memory usage, or storage availability
      1: Use modern browser APIs to interact with device location information, like location or accelerometer data
      2: Use modern browser APIs to interact with device ports, such as serial or usb
  browser-apis-browser:
    name: Use built-in Browser APIs to control the browser
    description: This standard specifically deals with using built-in APIs to control aspects of modern browsers.
    objectives:
      0: Use the Geolocation API to determine a browser's physical location
      1: Use browser APIs to manage windows and tabs
  browser-store-data:
    name: Use browser APIs to store and manage data on the client
    description: This standard covers issuing instructions to cache assets or store data in any available API that persistently stores data on the client.
    objectives:
      0: Use localstorage to store data
      1: Use WebSQL to store data
      2: Use Cookies to store data
      3: Use Session storage to store data
      4: Direct the browser to cache responses
      5: Direct the browser to clear data from persistent stores
  browser-connect-to-remote-hosts:
    name: Use built-in Browser APIs to connect to remote hosts
    description: This standard deals specifically with using the browser to connect to remote hosts via any network protocol.
    objectives:
      0: Use the XMLHttpRequest API to send and receive data from a remote host
      1: Use the WebSocket API to maintain a stateful connection between a browser and remote host
      2: Use the WebRTC API to create a real-time communication channel between two browsers
  browser-tooling:
    name: Use modern browser tooling and APIs to improve load performance
    description: This standard deals with use of Chrome Dev Tools, Safari Web Inspector, Firefox Developer Console, or Internet Explorer Developer Tools. Not all toolchains support all activities, so some performances may require the use of a specific toolset.
    objectives:
      0: Use in-browser tooling to measure resource loading times to identify network bottlenecks
      1: Use in-browser tooling to profile memory issues and identify memory leaks
      2: Use in-browser tooling to analyze runtime performance and improve efficiency

next:
  - javascript:node

prerequisites:
  - javascript:ecmascript-2015
