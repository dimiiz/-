LJX   5   4 4  7> T?4  2  :G  
table	keys	typeComboInterruptConfigF   4   7  +  4 > G  ?ComboInterruptConfig	saveConfigNeoxv   4  4  7 :  7 4  7>4 7>G  	saveComboInterrupt
setOnenabledComboInterruptConfigN  +   7 >+   7>+   7>G  ?
focus
raise	showB  +   7 >4 7>G  ?	saveComboInterrupt	hideR  +  +  7  : + 7  7+  7 >G  ??setCheckedenabledr  4  7+  )  94 4  7>+  7>G  ??destroyreindexTable	keysComboInterruptConfig?  34   7     T.?4  +  7 7> =  D? 7>BN?4  4  7> D?4 7% +  7>7	 7
7	>7	1 :71 : 7% 	 %
 $
>0 ?0 ?BN?G  ? ]	  [ setText remove onClicksetCheckedenabledSpellEntrycreateWidgetUIdestroygetChildrenspellList
pairs	keysComboInterruptConfig? 	 	 4  7767  74 %  > =7 :7  7>) H resizeToTextkeyComboCurrent action hotkey: %strsetTextcomboPreviewKeyCodeDescscorelibmodules?  +   7   7    7 >  T?4 76   T?4 % @ 4 73 9 4 7	>4 7
>+   7>G  ?destroyrefreshSpells	saveComboInterrupt enabled&Invalid Key or Key already exists	warn	keysComboInterruptConfiglenkeyCombocomboPreview ?  4  7% 4 > 7>7% :1	 :7
1 :0  ?G   onClickaddButton onKeyDownkeyCombocomboPreviewgrabKeyboardrootWidgetActionAssignWindowcreateWidget	g_ui4    4   7  > G  refreshSpellsComboInterrupt? 	 2 \4   % > %  5  4  % >   7 4 >4 % 4 7	> = 7
>4 777 7>73 2  :5 2  5 %  % % $4 7 >  T?4 7 >%  % $74 7 1  >4 1" :!7#  7$4 7%>7# 1' :&7( 1) :&7*1+ :&4 1- :,7.1/ :&4 11 :04 70>0  ?G   	init addKey refreshSpells closeButton settings onClickenabled
setOn
title 	save 	readConfigNeoxMainPanelcombointerrupt_config.jsonmakeDirdirectoryExistsg_resourcesneox_combointerrupt//
/bot/ComboInterruptComboInterruptConfig	keys enabled	textgetCurrentOptionconfigcontentsPanelgame_botmodules	hidegetRootWidget	g_ui?MainWindow
  !text: tr('Combo Interrupt by neoX - VictorNeox#4112')
  size: 220 308
  
  Panel
    id: MainPanel
    anchors.top: parent.top
    anchors.left: parent.left
    image-border: 6
    padding: 3
    size: 187 225

    
    TextList
      id: spellList
      anchors.left: parent.left
      anchors.top: parent.top
      padding: 1
      size: 175 195    
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
    
    Button
      id: addKey
      !text: tr('Select Key')
      anchors.top: spellList.bottom
      anchors.left: spellList.left
      width: 175
      height: 20
      margin-top: 4
      padding: 1
        
  Button
    id: closeButton
    !text: tr('Close')
    font: cipsoftFont
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    size: 45 21
    margin-top: 25
    margin-right: 5
      

setId?Panel
  height: 17
  BotSwitch
    id: title
    anchors.top: parent.top
    anchors.left: parent.left
    text-align: center
    width: 130
    !text: tr('Combo Interrupt')

  Button
    id: settings
    anchors.top: prev.top
    anchors.left: prev.right
    anchors.right: parent.right
    margin-left: 3
    height: 17
    text: Setup
setupUIcombointerruptPanelNamecombointerrupt	NeoxsetDefaultTab 