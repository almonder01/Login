package Utils;

public class EmailSetting {
	    public static final String SMTP_HOST = "smtp.gmail.com";
	    public static final String SMTP_PORT = "587";
	    public static final String EMAIL_FROM = "example@gmail.com";
	    public static final String EMAIL_PASSWORD = "xxxx xxxx xxxx xxxx"; // "xxxx xxxx xxxx xxxx" App Password
       
	 // ================================  Create App Password  ======================================
	    
	    // Open this Link: https://myaccount.google.com/apppasswords  // then Follow from number 6
	    
	    /* If the link dose not exist or no button to create follow here from number 1

	    * Follow these steps to generate a Google App Password:
	    *
	    * 1. Open: [https://myaccount.google.com/security](https://myaccount.google.com/security)
	    * 2. Ensure **2-Step Verification** is enabled on your Google account.
	    * 3. In the security settings search bar, type **"App Passwords"**.
	    * 4. Click on **"Sign in using App Passwords"**.
	    * 5. Scroll down to the **"Creating and using app passwords"** section and select
	    * **"Create and manage passwords for your applications"**.
	    * 6. Verify your identity if prompted.
	    * 7. Once the App Passwords page opens:
	    
	       - Enter any name for the app (e.g., "MyApp").
	      
	       - Click **Create**.
	      
	    * 8. A window will display a 16-character password in this format:
	    
	         "xxxx xxxx xxxx xxxx"
	         
	    	    * 9. Copy that password and paste it into your code where **EMAIL_PASSWORD** is required.
	     */

}
