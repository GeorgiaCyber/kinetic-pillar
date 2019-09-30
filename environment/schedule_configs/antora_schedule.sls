## How often your docs server should pull the latest code from your docs repository

schedule:
  highstate:
    function: state.highstate
    minutes: 60
