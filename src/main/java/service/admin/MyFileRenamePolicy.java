package service.admin;

import java.io.File;
import java.io.IOException;

import com.oreilly.servlet.multipart.FileRenamePolicy;

public class MyFileRenamePolicy implements FileRenamePolicy {

	String bannerName = null;
	
	MyFileRenamePolicy(String banner) {
		bannerName = banner;
	}
	
	@Override
	public File rename(File f) {
		
		String name = f.getName();
        String body = null;
        String ext = null;
        
        int dot = name.lastIndexOf(".");
        
        if (dot != -1) {
             body = name.substring(0, dot);
             ext = name.substring(dot);  // includes "."
        }
        else {
             body = name;
             ext = "";
        }
        
        String tempName = bannerName + ext;
        f = new File(f.getParent(), tempName);

        if (createNewFile(f)) {
             return f;
        }
        
		return f;
	}
	
	private boolean createNewFile(File f) {
        try {
             return f.createNewFile();
        }
        catch (IOException ignored) {
             return false;
        }
   }

}
