import Tooltips from 'ti.tooltip';

const window = Ti.UI.createWindow({
    backgroundColor: '#fff'
});

const btn = Ti.UI.createButton({
    top: 200,
    width: 50,
    height: 50,
    backgroundColor: '#333',
    title: 'Show tooltip!',
    color: '#fff'
});

btn.addEventListener('click', () => {
    Tooltips.show({
        title: 'This is a dummy text line 1.This is a dummy text line 2.',
        backgroundColor: '#61c494',
        borderRadius: 40,
        borderColor: '#ff0000',
        borderWidth: 2,
        padding: 10,
        arrowWidth: 20,
        arrowHeight: 24,
        arrowMargin: 10,
        textColor: '#fff',
        container: window,
        sourceView: btn,
        direction: Tooltips.TOOLTIP_DIRECTION_UP,
        onClick: () => {
        alert('Tooltip tapped!');
    }
    })
});

window.add(btn);
window.open();
