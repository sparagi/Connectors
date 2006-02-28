button actions
chooseFont
       | menu |
        menu _ MenuMorph entitled: 'Choose Font'.
        TextStyle actualTextStyles keysAndValuesDo: [ :styleName :style |
		style isTTCStyle ifTrue: [ | ttfont |
  			ttfont _ style fontOfSize: 18.
                menu add: styleName target: self selector: #font: argument: ttfont.
                menu lastItem font: ttfont; setBalloonText: styleName ]].

        menu popUpInWorld: self currentWorld