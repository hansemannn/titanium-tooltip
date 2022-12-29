# Tooltips in Titanium

Use the native `AMPopTip` (iOS) and `ViewTooltip` (Android) library to display tooltips above any view and window in Titanium!

## Requirements

- [x] Titanium SDK 9.2.0+
- [x] Android: Add the following to your `[app]/platform/android/build.gradle`:
```gradle
allprojects {
  repositories {
    maven { url 'https://jitpack.io' }
  }
}
```

## APIs

### Methods

- `show(params)` - Shows a new tooltip. See the example below for all options!
- `hideActiveTooltip` - Hide an active tooltip in the current window.

### Constants

The following constants are used for the `direction` property:

- `TOOLTIP_DIRECTION_UP`
- `TOOLTIP_DIRECTION_DOWN`
- `TOOLTIP_DIRECTION_LEFT`
- `TOOLTIP_DIRECTION_RIGHT`

## Example

```js
  import Tooltips from 'ti.tooltip';

	const params = {
		sourceView: $.view,
		direction: Tooltips.TOOLTIP_DIRECTION_UP,
		title: 'Hello world',
		backgroundColor: '#ffffff',
		textColor: '#000000',
		borderRadius: 15,
		borderColor: '#ff0000'
		borderWidth: 2,
		padding: 10,
		arrowMargin: 0,
    onClick: () => {
      alert('Tooltip tapped!');
    }
	};

	Tooltips.show(params);
```

## Authors

- Prashant Saini (Android)
- Hans Knöchel (iOS)

## License

MIT