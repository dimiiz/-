LJT   5   4 4  7> T?4  2  :G  
tablespells	typeComboBotConfig@   4   7  +  4 > G  ?ComboBotConfig	saveConfigNeoxj   4  4  7 :  7 4  7>4 7>G  	saveComboBot
setOnenabledComboBotConfigN  +   7 >+   7>+   7>G  ?
focus
raise	show<  +   7 >4 7>G  ?	saveComboBot	hide2     7    7 > >G  	isOn
setOn?  "+  4  74 7+ >4 4 7>+ 7 77>+ 7 77>+ 7	 7
7	>+  7>G  ??  ?destroysetValuedistancecooldown
spellsetTextspellNamereindexTablespellsComboBotConfigremove
tableR  +  +  7  : + 7  7+  7 >G  ??setCheckedenabledn  4  7+  )  94 4  7>+  7>G  ??destroyreindexTablespellsComboBotConfig? 84   7     T3?4  +  7 7> =  D? 7>BN?4  4  7> T?4 7%	 +  7>1 :
7 77>71 :71 : 7% 7	%
 7 % $>0 ?0 ?AN?G  ?scooldown]: CD: 
spell[setText remove onClicksetCheckedenabled onDoubleClickSpellEntrycreateWidgetUIipairsdestroygetChildrenspellList
pairsspellsComboBotConfig?? 
#?+  7  7> 7> 7>+  7 7> 7> 7> 7>	  T? T ?4 +  7 7> =   T?'  +  7 7	>+  7
 7> 7>	  T?4 % @   T?  T?4 % @ 4 74 73 4	 7				 		:	::::>  T?4 73 4 7 ::::94 7>4 7>+  7  7% >+  7 7% >+  7 7 ' >  T?+  7
 7!>4" 7>G  ?ComboBotonClicksetValuesetTextrefreshSpells	saveTimeSpelltotalTimeonScreen activeTime totalCd enabledy'x activeCd TimeSpellConfigshouldLinkTimeSpell
spell
index enabledspellsComboBotConfiginsert
tableBComboBot: Enter a cooldown or disable time spell integration.#ComboBot: Enter a valid spell.	warn	isOntimeSpellLinkgetValuedistancecooldowntonumberlenorangeMsg
lower	trimgetTextspellName -   7  7   T?) T?) H 
index? 5+   7     7  >    T?0 +?+  7  7  >'  T?0 "?+  7  7   >+  7  7  >4 76 :4 7 6:4 7	4 71
 >4 7>G  G  G  ?	saveComboBot 	sort
table
indexspellsComboBotConfigensureChildVisiblemoveChildToIndexgetChildIndexgetFocusedChildspellList-   7  7   T?) T?) H 
index? 9+   7     7  >    T?0 /?+  7  7  >+  7  7> T?0 "?+  7  7   >+  7  7  >4 76 :4 7 6:4	 7
4 71 >4 7>G  G  G  ?	saveComboBot 	sort
table
indexspellsComboBotConfigensureChildVisiblemoveChildToIndexgetChildCountgetChildIndexgetFocusedChildspellListl   4  76 
  T?4  76 74  T?) H ) H nowtotalTimespellsTimeSpellConfig*   4  : G  currentTargetComboBot?  	 T+   7     7  >    T ?G  4  >    T?G  4  7  >    T ?G  4     T?4  7     T?4  4 7> D	?4	 7
77 >  T?G  BN?4  7     T?4  7  > 4 4  7>  7 > =4 4 7>T?7  T?7 T?7  T?4 77>  T?4 7>AN?G   ?say
spellcanCastshouldLinkTimeSpelldistancespellsComboBotConfigipairsgetPositionplayergetDistanceBetweengetAttackingCreaturecurrentTargetComboBotisKeyPressedg_keyboardcorelibmodules	keys
pairsenabledComboInterruptConfigisAttackingg_gameisInPz	isOn
title@  +  7  7 >G  ?setTextdistanceCountLabel?  
 )+   7     7  > 4  7  + > 4   >T?4 7 % >  T? 7% >8+  7  7		 >AN?+  7  7
4 > =G  ??	namesetOptionaddOption.
split	jsonisFileTypeipairslistDirectoryFilesg_resourcesclearOptionsconfigsListO    4   7  > 4   7  > G  refreshSpellsrefreshConfigOptionsComboBot`    
4   7  > 4   7  > 4   7  > G  refreshSpellsrefreshConfigOptions	saveComboBot?   5   4 7>G  fullRefreshComboBotComboBotConfig? 
  4  4 7>D?7 76  T?4 777 7	6	9BN?4 7>4 7>G  refreshSpells	saveTimeSpellTimeSpellConfig
spellspellsComboBotConfig
pairs?  "+   7     7  > 7  +   % $% + % %   % $4 7 1	 >4 7 1
 >4 %   % $>G  ??? loadedComboBot: Configuration 	warn  	readConfigNeoxneox_timespell//
/bot/
.json	textgetCurrentOptionconfigsList?' 
 H 4   % > %  5  4  % >   7 4 >4 % 4 7	> = 7
>4 777 7>73 2  :5 2  5 %  % % $4 7 >  T?4 7 >%  4 >% $74 7  1! >4 1# :"7$  7%4 7&>7$ 1( :'7) 1* :'7+1, :'7-1. :'4 10 :/7112 :'7314 :'7516 :'4 18 :749 1: >4 4; 'd 1	< >:;7=1? :>4 1A :@4 1C :B4 1E :D7F1G :'4 7B>0  ?G   loadButton fullRefresh 	init refreshConfigOptions onValueChangedistance 
macro onAttackingCreatureChange canCast moveDown moveUp addSpell refreshSpells timeSpellLink closeButton settings onClickenabled
setOn
title 	save 	readConfigNeoxMainPanel
.json	namemakeDirdirectoryExistsg_resourcesneox_combobot//
/bot/ComboBotComboBotConfigspells  	textgetCurrentOptionconfigcontentsPanelgame_botmodules	hidegetRootWidget	g_ui?MainWindow
  !text: tr('ComboBot by neoX - VictorNeox#4112')
  size: 525 312
  
  Panel
    id: MainPanel
    image-source: /images/ui/panel_flat
    anchors.top: parent.top
    anchors.left: parent.left
    image-border: 6
    padding: 3
    size: 492 225

    
    TextList
      id: spellList
      anchors.left: parent.left
      anchors.bottom: parent.bottom
      padding: 1
      size: 270 212    
      margin-bottom: 3
      margin-left: 3
      vertical-scrollbar: spellListScrollBar
      
    VerticalScrollBar
      id: spellListScrollBar
      anchors.top: spellList.top
      anchors.bottom: spellList.bottom
      anchors.right: spellList.right
      step: 14
      pixels-scroll: true

    Label
      id: spellNameLabel
      anchors.left: spellList.right
      anchors.top: spellList.top
      text: Spell:
      margin-top: 10
      margin-left: 7

    TextEdit
      id: spellName
      anchors.left: spellNameLabel.right
      anchors.top: parent.top
      margin-top: 5
      margin-left: 50
      width: 125

    Label
      id: orangeMsgLabel
      anchors.left: spellNameLabel.left
      anchors.top: spellName.bottom
      margin-top: 15
      text: Orange Msg:

    TextEdit
      id: orangeMsg
      anchors.left: spellName.left
      anchors.top: prev.top
      margin-top: -5
      width: 125

    Label
      id: cooldownLabel
      anchors.left: orangeMsgLabel.left
      anchors.top: orangeMsg.bottom
      margin-top: 15
      text: Cooldown:

    TextEdit
      id: cooldown
      anchors.left: orangeMsg.left
      anchors.top: prev.top
      margin-top: -5
      width: 125

    Label
      id: distanceLabel
      anchors.left: cooldownLabel.left
      anchors.top: cooldown.bottom
      text: Distance:
      margin-top: 15

    HorizontalScrollBar
      id: distance
      anchors.left: cooldown.left
      anchors.top: prev.top
      width: 125
      minimum: 1
      maximum: 8
      step: 1

    Label
      id: distanceCountLabel
      anchors.left: distance.left
      anchors.horizontalCenter: distance.horizontalCenter
      anchors.top: prev.bottom
      text: 1
      width: 10
      margin-top: 5

    BotSwitch
      id: timeSpellLink    
      anchors.top: distanceCountLabel.bottom
      anchors.left: spellList.right
      width: 200
      text-align: center
      text: Integrate With Time Spell
      margin-top: 12
      margin-left: 7

    Button
      id: moveUp
      anchors.left: spellList.right
      anchors.bottom: parent.bottom
      margin-bottom: 2
      margin-left: 8
      text: Move Up
      size: 60 17
      font: cipsoftFont

    Button
      id: moveDown
      anchors.left: moveUp.right
      anchors.bottom: parent.bottom
      margin-bottom: 2
      margin-left: 8
      text: Move Down
      size: 60 17
      font: cipsoftFont

    Button
      id: addSpell
      anchors.left: moveDown.right
      anchors.bottom: parent.bottom
      margin-bottom: 2
      margin-left: 8
      text: Add
      size: 60 17
      font: cipsoftFont

  HorizontalSeparator
    id: separator
    anchors.right: parent.right
    anchors.left: parent.left
    anchors.bottom: closeButton.top
    margin-bottom: 8    

  ComboBox
    id: configsList
    anchors.bottom: parent.bottom
    anchors.left: parent.left
    text-offset: 3 0
    width: 200
  Button
    id: loadButton
    !text: tr('Load')
    font: cipsoftFont
    anchors.left: configsList.right
    anchors.bottom: parent.bottom
    size: 45 23
    margin-top: 15
    margin-left: 5
  Button
    id: closeButton
    !text: tr('Close')
    font: cipsoftFont
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    size: 45 21
    margin-top: 15
    margin-right: 5
      

setId?Panel
  height: 17
  BotSwitch
    id: title
    anchors.top: parent.top
    anchors.left: parent.left
    text-align: center
    width: 130
    !text: tr('ComboBot')

  Button
    id: settings
    anchors.top: prev.top
    anchors.left: prev.right
    anchors.right: parent.right
    margin-left: 3
    height: 17
    text: Setup
setupUIcombobotPanelNamecombobot	NeoxsetDefaultTab 