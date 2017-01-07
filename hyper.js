module.exports = {
  config: {
    // default font size in pixels for all tabs
    fontSize: 14,

    // font family with optional fallbacks
    fontFamily: '"Source Code Pro for Powerline", "Lucida Console", monospace',

    // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
    cursorColor: '#E7278E',

    // `BEAM` for |, `UNDERLINE` for _, `BLOCK` for █
    cursorShape: 'BLOCK',

    // color of the text
    foregroundColor: '#E0E0E0',

    // terminal background color
    backgroundColor: '#002934',

    // border color (window, tabs)
    borderColor: '#333',

    // custom css to embed in the main window
    css: '',

    // custom css to embed in the terminal window
    termCSS: '',

    // custom padding (css format, i.e.: `top right bottom left`)
    padding: '12px 14px',

    // the full list. if you're going to provide the full color palette,
    // including the 6 x 6 color cubes and the grayscale map, just provide
    // an array here instead of a color map object
    colors: {
      black:        '#000',
      red:          '#f00',
      green:        '#3f0',
      yellow:       '#ff0',
      blue:         '#06f',
      magenta:      '#c0f',
      cyan:         '#0ff',
      white:        '#d0d0d0',
      lightBlack:   '#808080',
      lightRed:     '#f00',
      lightGreen:   '#3f0',
      lightYellow:  '#ff0',
      lightBlue:    '#06f',
      lightMagenta: '#c0f',
      lightCyan:    '#0ff',
      lightWhite:   '#fff'
    },

    // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
    // if left empty, your system's login shell will be used by default
    shell: 'zsh'

    // for advanced config flags please refer to https://hyperterm.org/#cfg
  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hyperpower`
  //   `@company/project`
  //   `project#1.0.1`
  plugins: [
    'hyperterm-1password',
    'hyperterm-bold-tab',
    'hyperterm-material-dark'
  ],

  // in development, you can create a directory under
  // `~/.hyperterm_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: []
};
