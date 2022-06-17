/* override recipe: enable DRM and let me watch videos ***/
user_pref("media.eme.enabled", true); // 2022

/* override recipe: enable session restore ***/
user_pref("browser.startup.page", 3); // 0102
user_pref("browser.sessionstore.privacy_level", 0); // 1003 [to restore cookies/formdata if not sanitized]
user_pref("privacy.clearOnShutdown.history", false); // 2811
user_pref("privacy.cpd.history", false); // 2812 to match when you use Ctrl-Shift-Del

/* override recipe: RFP is not for me ***/
user_pref("privacy.resistFingerprinting", false); // 4501
user_pref("privacy.resistFingerprinting.letterboxing", false); // 4504 [pointless if not using RFP]
user_pref("webgl.disabled", false); // 4520 [mostly pointless if not using RFP]

/* personal */
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);
user_pref("keyword.enabled", true);
user_pref("extensions.pocket.enabled", false);
user_pref("privacy.clearOnShutdown.offlineApps", false);
user_pref("privacy.cpd.offlineApps", false);
user_pref("network.http.referer.XOriginPolicy", 0);
user_pref("general.autoScroll", true);
user_pref("reader.parse-on-load.enabled", false);
user_pref("media.webspeech.synth.enabled ", false);
