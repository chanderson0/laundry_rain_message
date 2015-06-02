exports.config =
  conventions:
    assets: /^app\/assets\//
  modules:
    definition: false
    wrapper: false
  paths:
    public: '_public'
  files:
    javascripts:
      joinTo:
        'js/vendor.js': [
          /^bower_components/,
          /^app\/vendor-js/
        ]
        'js/app.js': /^app\/js/
      order:
        before: [
          'bower_components/threejs/build/three.min.js',
          'bower_components/underscore/underscore.js'
        ]
    stylesheets:
      joinTo:
        'css/app.css': /^app\/css/
