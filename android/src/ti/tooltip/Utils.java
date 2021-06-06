package ti.tooltip;

import org.appcelerator.kroll.KrollDict;
import org.appcelerator.titanium.util.TiRHelper;
import org.appcelerator.titanium.util.TiConvert;


public class Utils {
	public static int getR(String path) {
		try {
			return TiRHelper.getResource(path);
			
		} catch (Exception exc) {
			return -1;
		}
	}
	
	public static int getColor(KrollDict options, String key, String defaultColor) {
		if (options.containsKeyAndNotNull(key)) {
			try {
				return TiConvert.toColor( (String) options.get(key));
			} catch(Exception exc) {
				return TiConvert.toColor(defaultColor);
			}			
		}
		
		return TiConvert.toColor(defaultColor);
	}
}
