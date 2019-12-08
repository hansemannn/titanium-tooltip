var win = Ti.UI.createWindow({
    backgroundColor: '#fff'
});
var Tooltip = require('ti.tooltip');
var btn = Ti.UI.createButton({ right: 10, top: 200, width: 50, height: 50, backgroundColor: '#333', title: 'Test', color: '#fff' });

btn.addEventListener('click', () => {
    Tooltip.show({
        title: 'Hello world!',
        bubbleColor: '#f0f0f0',
        textColor: '#000',
        container: win,
        sourceView: btn,
        direction: Tooltip.TOOLTIP_DIRECTION_LEFT
    })
});
win.add(btn);

win.open();
