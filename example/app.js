var win = Ti.UI.createWindow({
    backgroundColor: '#fff'
});
var Tooltip = require('ti.tooltip');
var btn = Ti.UI.createButton({ right: 10, top: 200, width: 50, height: 50, backgroundColor: '#333', title: 'Test', color: '#fff' });

btn.addEventListener('click', () => {
    Tooltip.show({
        title: 'This is a dummy text line 1.This is a dummy text line 2.',
        backgroundColor: '#61c494',
        borderRadius: 40,
        arrowWidth: 20,
        arrowHeight: 24,
        arrowMargin: 10,
        textColor: '#fff',
        container: $.win,
        sourceView: $.btn,
        direction: Tooltip.TOOLTIP_DIRECTION_UP
    })
});
win.add(btn);

win.open();
