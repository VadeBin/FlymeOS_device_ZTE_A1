.class public Landroid/content/Intent;
.super Ljava/lang/Object;
.source "Intent.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/Intent$FilterComparison;,
        Landroid/content/Intent$ShortcutIconResource;
    }
.end annotation


# static fields
.field public static final ACTION_ADVANCED_SETTINGS_CHANGED:Ljava/lang/String; = "android.intent.action.ADVANCED_SETTINGS"

.field public static final ACTION_AIRPLANE_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.AIRPLANE_MODE"

.field public static final ACTION_ALARM_CHANGED:Ljava/lang/String; = "android.intent.action.ALARM_CHANGED"

.field public static final ACTION_ALL_APPS:Ljava/lang/String; = "android.intent.action.ALL_APPS"

.field public static final ACTION_ANSWER:Ljava/lang/String; = "android.intent.action.ANSWER"

.field public static final ACTION_APPLICATION_RESTRICTIONS_CHANGED:Ljava/lang/String; = "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

.field public static final ACTION_APP_ERROR:Ljava/lang/String; = "android.intent.action.APP_ERROR"

.field public static final ACTION_ASSIST:Ljava/lang/String; = "android.intent.action.ASSIST"

.field public static final ACTION_ATTACH_DATA:Ljava/lang/String; = "android.intent.action.ATTACH_DATA"

.field public static final ACTION_BATTERY_CHANGED:Ljava/lang/String; = "android.intent.action.BATTERY_CHANGED"

.field public static final ACTION_BATTERY_LOW:Ljava/lang/String; = "android.intent.action.BATTERY_LOW"

.field public static final ACTION_BATTERY_OKAY:Ljava/lang/String; = "android.intent.action.BATTERY_OKAY"

.field public static final ACTION_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field public static final ACTION_BUG_REPORT:Ljava/lang/String; = "android.intent.action.BUG_REPORT"

.field public static final ACTION_CALL:Ljava/lang/String; = "android.intent.action.CALL"

.field public static final ACTION_CALL_BUTTON:Ljava/lang/String; = "android.intent.action.CALL_BUTTON"

.field public static final ACTION_CALL_EMERGENCY:Ljava/lang/String; = "android.intent.action.CALL_EMERGENCY"

.field public static final ACTION_CALL_PRIVILEGED:Ljava/lang/String; = "android.intent.action.CALL_PRIVILEGED"

.field public static final ACTION_CAMERA_BUTTON:Ljava/lang/String; = "android.intent.action.CAMERA_BUTTON"

.field public static final ACTION_CHOOSER:Ljava/lang/String; = "android.intent.action.CHOOSER"

.field public static final ACTION_CLEAR_DNS_CACHE:Ljava/lang/String; = "android.intent.action.CLEAR_DNS_CACHE"

.field public static final ACTION_CLOSE_SYSTEM_DIALOGS:Ljava/lang/String; = "android.intent.action.CLOSE_SYSTEM_DIALOGS"

.field public static final ACTION_CONFIGURATION_CHANGED:Ljava/lang/String; = "android.intent.action.CONFIGURATION_CHANGED"

.field public static final ACTION_CREATE_DOCUMENT:Ljava/lang/String; = "android.intent.action.CREATE_DOCUMENT"

.field public static final ACTION_CREATE_SHORTCUT:Ljava/lang/String; = "android.intent.action.CREATE_SHORTCUT"

.field public static final ACTION_DATA_DEFAULT_SIM_CHANGED:Ljava/lang/String; = "android.intent.action.DATA_DEFAULT_SIM"

.field public static final ACTION_DATE_CHANGED:Ljava/lang/String; = "android.intent.action.DATE_CHANGED"

.field public static final ACTION_DEFAULT:Ljava/lang/String; = "android.intent.action.VIEW"

.field public static final ACTION_DELETE:Ljava/lang/String; = "android.intent.action.DELETE"

.field public static final ACTION_DEVICE_STORAGE_FULL:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_FULL"

.field public static final ACTION_DEVICE_STORAGE_LOW:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_LOW"

.field public static final ACTION_DEVICE_STORAGE_NOT_FULL:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_NOT_FULL"

.field public static final ACTION_DEVICE_STORAGE_OK:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_OK"

.field public static final ACTION_DIAL:Ljava/lang/String; = "android.intent.action.DIAL"

.field public static final ACTION_DOCK_EVENT:Ljava/lang/String; = "android.intent.action.DOCK_EVENT"

.field public static final ACTION_DREAMING_STARTED:Ljava/lang/String; = "android.intent.action.DREAMING_STARTED"

.field public static final ACTION_DREAMING_STOPPED:Ljava/lang/String; = "android.intent.action.DREAMING_STOPPED"

.field public static final ACTION_EDIT:Ljava/lang/String; = "android.intent.action.EDIT"

.field public static final ACTION_EXTERNAL_APPLICATIONS_AVAILABLE:Ljava/lang/String; = "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

.field public static final ACTION_EXTERNAL_APPLICATIONS_UNAVAILABLE:Ljava/lang/String; = "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

.field public static final ACTION_FACTORY_TEST:Ljava/lang/String; = "android.intent.action.FACTORY_TEST"

.field public static final ACTION_GET_CONTENT:Ljava/lang/String; = "android.intent.action.GET_CONTENT"

.field public static final ACTION_GET_RESTRICTION_ENTRIES:Ljava/lang/String; = "android.intent.action.GET_RESTRICTION_ENTRIES"

.field public static final ACTION_GLOBAL_BUTTON:Ljava/lang/String; = "android.intent.action.GLOBAL_BUTTON"

.field public static final ACTION_GTALK_SERVICE_CONNECTED:Ljava/lang/String; = "android.intent.action.GTALK_CONNECTED"

.field public static final ACTION_GTALK_SERVICE_DISCONNECTED:Ljava/lang/String; = "android.intent.action.GTALK_DISCONNECTED"

.field public static final ACTION_HDMI_PLUG:Ljava/lang/String; = "android.intent.action.HDMI_PLUG"

.field public static final ACTION_HEADSET_PLUG:Ljava/lang/String; = "android.intent.action.HEADSET_PLUG"

.field public static final ACTION_IDLE_MAINTENANCE_END:Ljava/lang/String; = "android.intent.action.ACTION_IDLE_MAINTENANCE_END"

.field public static final ACTION_IDLE_MAINTENANCE_START:Ljava/lang/String; = "android.intent.action.ACTION_IDLE_MAINTENANCE_START"

.field public static final ACTION_INPUT_METHOD_CHANGED:Ljava/lang/String; = "android.intent.action.INPUT_METHOD_CHANGED"

.field public static final ACTION_INSERT:Ljava/lang/String; = "android.intent.action.INSERT"

.field public static final ACTION_INSERT_OR_EDIT:Ljava/lang/String; = "android.intent.action.INSERT_OR_EDIT"

.field public static final ACTION_INSTALL_PACKAGE:Ljava/lang/String; = "android.intent.action.INSTALL_PACKAGE"

.field public static final ACTION_LOCALE_CHANGED:Ljava/lang/String; = "android.intent.action.LOCALE_CHANGED"

.field public static final ACTION_MAIN:Ljava/lang/String; = "android.intent.action.MAIN"

.field public static final ACTION_MANAGED_PROFILE_ADDED:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_ADDED"

.field public static final ACTION_MANAGED_PROFILE_REMOVED:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_REMOVED"

.field public static final ACTION_MANAGE_NETWORK_USAGE:Ljava/lang/String; = "android.intent.action.MANAGE_NETWORK_USAGE"

.field public static final ACTION_MANAGE_PACKAGE_STORAGE:Ljava/lang/String; = "android.intent.action.MANAGE_PACKAGE_STORAGE"

.field public static final ACTION_MASTER_CLEAR:Ljava/lang/String; = "android.intent.action.MASTER_CLEAR"

.field public static final ACTION_MEDIA_BAD_REMOVAL:Ljava/lang/String; = "android.intent.action.MEDIA_BAD_REMOVAL"

.field public static final ACTION_MEDIA_BUTTON:Ljava/lang/String; = "android.intent.action.MEDIA_BUTTON"

.field public static final ACTION_MEDIA_CHECKING:Ljava/lang/String; = "android.intent.action.MEDIA_CHECKING"

.field public static final ACTION_MEDIA_EJECT:Ljava/lang/String; = "android.intent.action.MEDIA_EJECT"

.field public static final ACTION_MEDIA_MOUNTED:Ljava/lang/String; = "android.intent.action.MEDIA_MOUNTED"

.field public static final ACTION_MEDIA_NOFS:Ljava/lang/String; = "android.intent.action.MEDIA_NOFS"

.field public static final ACTION_MEDIA_REMOVED:Ljava/lang/String; = "android.intent.action.MEDIA_REMOVED"

.field public static final ACTION_MEDIA_SCANNER_FINISHED:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_FINISHED"

.field public static final ACTION_MEDIA_SCANNER_SCAN_FILE:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

.field public static final ACTION_MEDIA_SCANNER_STARTED:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_STARTED"

.field public static final ACTION_MEDIA_SHARED:Ljava/lang/String; = "android.intent.action.MEDIA_SHARED"

.field public static final ACTION_MEDIA_UNMOUNTABLE:Ljava/lang/String; = "android.intent.action.MEDIA_UNMOUNTABLE"

.field public static final ACTION_MEDIA_UNMOUNTED:Ljava/lang/String; = "android.intent.action.MEDIA_UNMOUNTED"

.field public static final ACTION_MEDIA_UNSHARED:Ljava/lang/String; = "android.intent.action.MEDIA_UNSHARED"

.field public static final ACTION_MSIM_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.MSIM_MODE"

.field public static final ACTION_MY_PACKAGE_REPLACED:Ljava/lang/String; = "android.intent.action.MY_PACKAGE_REPLACED"

.field public static final ACTION_NEW_OUTGOING_CALL:Ljava/lang/String; = "android.intent.action.NEW_OUTGOING_CALL"

.field public static final ACTION_OPEN_DOCUMENT:Ljava/lang/String; = "android.intent.action.OPEN_DOCUMENT"

.field public static final ACTION_OPEN_DOCUMENT_TREE:Ljava/lang/String; = "android.intent.action.OPEN_DOCUMENT_TREE"

.field public static final ACTION_PACKAGE_ADDED:Ljava/lang/String; = "android.intent.action.PACKAGE_ADDED"

.field public static final ACTION_PACKAGE_CHANGED:Ljava/lang/String; = "android.intent.action.PACKAGE_CHANGED"

.field public static final ACTION_PACKAGE_DATA_CLEARED:Ljava/lang/String; = "android.intent.action.PACKAGE_DATA_CLEARED"

.field public static final ACTION_PACKAGE_FIRST_LAUNCH:Ljava/lang/String; = "android.intent.action.PACKAGE_FIRST_LAUNCH"

.field public static final ACTION_PACKAGE_FULLY_REMOVED:Ljava/lang/String; = "android.intent.action.PACKAGE_FULLY_REMOVED"

.field public static final ACTION_PACKAGE_INSTALL:Ljava/lang/String; = "android.intent.action.PACKAGE_INSTALL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_PACKAGE_NEEDS_VERIFICATION:Ljava/lang/String; = "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

.field public static final ACTION_PACKAGE_REMOVED:Ljava/lang/String; = "android.intent.action.PACKAGE_REMOVED"

.field public static final ACTION_PACKAGE_REPLACED:Ljava/lang/String; = "android.intent.action.PACKAGE_REPLACED"

.field public static final ACTION_PACKAGE_RESTARTED:Ljava/lang/String; = "android.intent.action.PACKAGE_RESTARTED"

.field public static final ACTION_PACKAGE_VERIFIED:Ljava/lang/String; = "android.intent.action.PACKAGE_VERIFIED"

.field public static final ACTION_PASTE:Ljava/lang/String; = "android.intent.action.PASTE"

.field public static final ACTION_PICK:Ljava/lang/String; = "android.intent.action.PICK"

.field public static final ACTION_PICK_ACTIVITY:Ljava/lang/String; = "android.intent.action.PICK_ACTIVITY"

.field public static final ACTION_POWER_CONNECTED:Ljava/lang/String; = "android.intent.action.ACTION_POWER_CONNECTED"

.field public static final ACTION_POWER_DISCONNECTED:Ljava/lang/String; = "android.intent.action.ACTION_POWER_DISCONNECTED"

.field public static final ACTION_POWER_OFF_ALARM_ALERT:Ljava/lang/String; = "android.intent.action.POWER_OFF_ALARM_ALERT"

.field public static final ACTION_POWER_USAGE_SUMMARY:Ljava/lang/String; = "android.intent.action.POWER_USAGE_SUMMARY"

.field public static final ACTION_PRE_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.PRE_BOOT_COMPLETED"

.field public static final ACTION_PROVIDER_CHANGED:Ljava/lang/String; = "android.intent.action.PROVIDER_CHANGED"

.field public static final ACTION_QUERY_PACKAGE_RESTART:Ljava/lang/String; = "android.intent.action.QUERY_PACKAGE_RESTART"

.field public static final ACTION_QUICK_CLOCK:Ljava/lang/String; = "android.intent.action.QUICK_CLOCK"

.field public static final ACTION_REBOOT:Ljava/lang/String; = "android.intent.action.REBOOT"

.field public static final ACTION_REMOTE_INTENT:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field public static final ACTION_REQUEST_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_REQUEST_SHUTDOWN"

.field public static final ACTION_RESTRICTIONS_CHALLENGE:Ljava/lang/String; = "android.intent.action.RESTRICTIONS_CHALLENGE"

.field public static final ACTION_RUN:Ljava/lang/String; = "android.intent.action.RUN"

.field public static final ACTION_SCREEN_OFF:Ljava/lang/String; = "android.intent.action.SCREEN_OFF"

.field public static final ACTION_SCREEN_ON:Ljava/lang/String; = "android.intent.action.SCREEN_ON"

.field public static final ACTION_SD_INSERTED:Ljava/lang/String; = "android.intent.action.SD_INSERTED"

.field public static final ACTION_SEARCH:Ljava/lang/String; = "android.intent.action.SEARCH"

.field public static final ACTION_SEARCH_LONG_PRESS:Ljava/lang/String; = "android.intent.action.SEARCH_LONG_PRESS"

.field public static final ACTION_SEND:Ljava/lang/String; = "android.intent.action.SEND"

.field public static final ACTION_SENDTO:Ljava/lang/String; = "android.intent.action.SENDTO"

.field public static final ACTION_SEND_MULTIPLE:Ljava/lang/String; = "android.intent.action.SEND_MULTIPLE"

.field public static final ACTION_SETTINGS_PACKAGE_DATA_CLEARED:Ljava/lang/String; = "com.mediatek.intent.action.SETTINGS_PACKAGE_DATA_CLEARED"

.field public static final ACTION_SET_WALLPAPER:Ljava/lang/String; = "android.intent.action.SET_WALLPAPER"

.field public static final ACTION_SHOW_BRIGHTNESS_DIALOG:Ljava/lang/String; = "android.intent.action.SHOW_BRIGHTNESS_DIALOG"

.field public static final ACTION_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN"

.field public static final ACTION_SIM_SETTINGS_INFO_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_SETTING_INFO_CHANGED"

.field public static final ACTION_SMARTBOOK_PLUG:Ljava/lang/String; = "android.intent.action.SMARTBOOK_PLUG"

.field public static final ACTION_SMS_DEFAULT_SIM_CHANGED:Ljava/lang/String; = "android.intent.action.SMS_DEFAULT_SIM"

.field public static final ACTION_SYNC:Ljava/lang/String; = "android.intent.action.SYNC"

.field public static final ACTION_SYNC_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SYNC_STATE_CHANGED"

.field public static final ACTION_SYSTEM_TUTORIAL:Ljava/lang/String; = "android.intent.action.SYSTEM_TUTORIAL"

.field public static final ACTION_TETHERING_CHANGE:Ljava/lang/String; = "android.intent.action.TETHERING_CHANGED"

.field public static final ACTION_TIMEZONE_CHANGED:Ljava/lang/String; = "android.intent.action.TIMEZONE_CHANGED"

.field public static final ACTION_TIME_CHANGED:Ljava/lang/String; = "android.intent.action.TIME_SET"

.field public static final ACTION_TIME_TICK:Ljava/lang/String; = "android.intent.action.TIME_TICK"

.field public static final ACTION_UID_REMOVED:Ljava/lang/String; = "android.intent.action.UID_REMOVED"

.field public static final ACTION_UMS_CONNECTED:Ljava/lang/String; = "android.intent.action.UMS_CONNECTED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_UMS_DISCONNECTED:Ljava/lang/String; = "android.intent.action.UMS_DISCONNECTED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_UNINSTALL_PACKAGE:Ljava/lang/String; = "android.intent.action.UNINSTALL_PACKAGE"

.field public static final ACTION_UNREAD_CHANGED:Ljava/lang/String; = "com.mediatek.action.UNREAD_CHANGED"

.field public static final ACTION_UPGRADE_SETUP:Ljava/lang/String; = "android.intent.action.UPGRADE_SETUP"

.field public static final ACTION_USER_ADDED:Ljava/lang/String; = "android.intent.action.USER_ADDED"

.field public static final ACTION_USER_BACKGROUND:Ljava/lang/String; = "android.intent.action.USER_BACKGROUND"

.field public static final ACTION_USER_FOREGROUND:Ljava/lang/String; = "android.intent.action.USER_FOREGROUND"

.field public static final ACTION_USER_INFO_CHANGED:Ljava/lang/String; = "android.intent.action.USER_INFO_CHANGED"

.field public static final ACTION_USER_INITIALIZE:Ljava/lang/String; = "android.intent.action.USER_INITIALIZE"

.field public static final ACTION_USER_PRESENT:Ljava/lang/String; = "android.intent.action.USER_PRESENT"

.field public static final ACTION_USER_REMOVED:Ljava/lang/String; = "android.intent.action.USER_REMOVED"

.field public static final ACTION_USER_STARTED:Ljava/lang/String; = "android.intent.action.USER_STARTED"

.field public static final ACTION_USER_STARTING:Ljava/lang/String; = "android.intent.action.USER_STARTING"

.field public static final ACTION_USER_STOPPED:Ljava/lang/String; = "android.intent.action.USER_STOPPED"

.field public static final ACTION_USER_STOPPING:Ljava/lang/String; = "android.intent.action.USER_STOPPING"

.field public static final ACTION_USER_SWITCHED:Ljava/lang/String; = "android.intent.action.USER_SWITCHED"

.field public static final ACTION_VIEW:Ljava/lang/String; = "android.intent.action.VIEW"

.field public static final ACTION_VOICE_ASSIST:Ljava/lang/String; = "android.intent.action.VOICE_ASSIST"

.field public static final ACTION_VOICE_COMMAND:Ljava/lang/String; = "android.intent.action.VOICE_COMMAND"

.field public static final ACTION_WALLPAPER_CHANGED:Ljava/lang/String; = "android.intent.action.WALLPAPER_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_WEB_SEARCH:Ljava/lang/String; = "android.intent.action.WEB_SEARCH"

.field public static final ACTION_WIFI_DISPLAY_VIDEO:Ljava/lang/String; = "org.codeaurora.intent.action.WIFI_DISPLAY_VIDEO"

.field private static final ATTR_ACTION:Ljava/lang/String; = "action"

.field private static final ATTR_CATEGORY:Ljava/lang/String; = "category"

.field private static final ATTR_COMPONENT:Ljava/lang/String; = "component"

.field private static final ATTR_DATA:Ljava/lang/String; = "data"

.field private static final ATTR_DATAID:Ljava/lang/String; = "mdataId"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field public static final CATEGORY_ALTERNATIVE:Ljava/lang/String; = "android.intent.category.ALTERNATIVE"

.field public static final CATEGORY_APP_BROWSER:Ljava/lang/String; = "android.intent.category.APP_BROWSER"

.field public static final CATEGORY_APP_CALCULATOR:Ljava/lang/String; = "android.intent.category.APP_CALCULATOR"

.field public static final CATEGORY_APP_CALENDAR:Ljava/lang/String; = "android.intent.category.APP_CALENDAR"

.field public static final CATEGORY_APP_CONTACTS:Ljava/lang/String; = "android.intent.category.APP_CONTACTS"

.field public static final CATEGORY_APP_EMAIL:Ljava/lang/String; = "android.intent.category.APP_EMAIL"

.field public static final CATEGORY_APP_GALLERY:Ljava/lang/String; = "android.intent.category.APP_GALLERY"

.field public static final CATEGORY_APP_MAPS:Ljava/lang/String; = "android.intent.category.APP_MAPS"

.field public static final CATEGORY_APP_MARKET:Ljava/lang/String; = "android.intent.category.APP_MARKET"

.field public static final CATEGORY_APP_MESSAGING:Ljava/lang/String; = "android.intent.category.APP_MESSAGING"

.field public static final CATEGORY_APP_MUSIC:Ljava/lang/String; = "android.intent.category.APP_MUSIC"

.field public static final CATEGORY_BROWSABLE:Ljava/lang/String; = "android.intent.category.BROWSABLE"

.field public static final CATEGORY_CAR_DOCK:Ljava/lang/String; = "android.intent.category.CAR_DOCK"

.field public static final CATEGORY_CAR_MODE:Ljava/lang/String; = "android.intent.category.CAR_MODE"

.field public static final CATEGORY_DEFAULT:Ljava/lang/String; = "android.intent.category.DEFAULT"

.field public static final CATEGORY_DESK_DOCK:Ljava/lang/String; = "android.intent.category.DESK_DOCK"

.field public static final CATEGORY_DEVELOPMENT_PREFERENCE:Ljava/lang/String; = "android.intent.category.DEVELOPMENT_PREFERENCE"

.field public static final CATEGORY_EMBED:Ljava/lang/String; = "android.intent.category.EMBED"

.field public static final CATEGORY_FRAMEWORK_INSTRUMENTATION_TEST:Ljava/lang/String; = "android.intent.category.FRAMEWORK_INSTRUMENTATION_TEST"

.field public static final CATEGORY_HE_DESK_DOCK:Ljava/lang/String; = "android.intent.category.HE_DESK_DOCK"

.field public static final CATEGORY_HOME:Ljava/lang/String; = "android.intent.category.HOME"

.field public static final CATEGORY_INFO:Ljava/lang/String; = "android.intent.category.INFO"

.field public static final CATEGORY_LAUNCHER:Ljava/lang/String; = "android.intent.category.LAUNCHER"

.field public static final CATEGORY_LEANBACK_LAUNCHER:Ljava/lang/String; = "android.intent.category.LEANBACK_LAUNCHER"

.field public static final CATEGORY_LEANBACK_SETTINGS:Ljava/lang/String; = "android.intent.category.LEANBACK_SETTINGS"

.field public static final CATEGORY_LE_DESK_DOCK:Ljava/lang/String; = "android.intent.category.LE_DESK_DOCK"

.field public static final CATEGORY_MONKEY:Ljava/lang/String; = "android.intent.category.MONKEY"

.field public static final CATEGORY_OPENABLE:Ljava/lang/String; = "android.intent.category.OPENABLE"

.field public static final CATEGORY_PREFERENCE:Ljava/lang/String; = "android.intent.category.PREFERENCE"

.field public static final CATEGORY_SAMPLE_CODE:Ljava/lang/String; = "android.intent.category.SAMPLE_CODE"

.field public static final CATEGORY_SELECTED_ALTERNATIVE:Ljava/lang/String; = "android.intent.category.SELECTED_ALTERNATIVE"

.field public static final CATEGORY_TAB:Ljava/lang/String; = "android.intent.category.TAB"

.field public static final CATEGORY_TEST:Ljava/lang/String; = "android.intent.category.TEST"

.field public static final CATEGORY_UNIT_TEST:Ljava/lang/String; = "android.intent.category.UNIT_TEST"

.field public static final CATEGORY_VOICE:Ljava/lang/String; = "android.intent.category.VOICE"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_ALARM_COUNT:Ljava/lang/String; = "android.intent.extra.ALARM_COUNT"

.field public static final EXTRA_ALLOW_MULTIPLE:Ljava/lang/String; = "android.intent.extra.ALLOW_MULTIPLE"

.field public static final EXTRA_ALLOW_REPLACE:Ljava/lang/String; = "android.intent.extra.ALLOW_REPLACE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_ASSIST_CONTEXT:Ljava/lang/String; = "android.intent.extra.ASSIST_CONTEXT"

.field public static final EXTRA_ASSIST_INPUT_HINT_KEYBOARD:Ljava/lang/String; = "android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD"

.field public static final EXTRA_ASSIST_PACKAGE:Ljava/lang/String; = "android.intent.extra.ASSIST_PACKAGE"

.field public static final EXTRA_BCC:Ljava/lang/String; = "android.intent.extra.BCC"

.field public static final EXTRA_BUG_REPORT:Ljava/lang/String; = "android.intent.extra.BUG_REPORT"

.field public static final EXTRA_CC:Ljava/lang/String; = "android.intent.extra.CC"

.field public static final EXTRA_CHANGED_COMPONENT_NAME:Ljava/lang/String; = "android.intent.extra.changed_component_name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_CHANGED_COMPONENT_NAME_LIST:Ljava/lang/String; = "android.intent.extra.changed_component_name_list"

.field public static final EXTRA_CHANGED_PACKAGE_LIST:Ljava/lang/String; = "android.intent.extra.changed_package_list"

.field public static final EXTRA_CHANGED_UID_LIST:Ljava/lang/String; = "android.intent.extra.changed_uid_list"

.field public static final EXTRA_CHOSEN_COMPONENT:Ljava/lang/String; = "android.intent.extra.CHOSEN_COMPONENT"

.field public static final EXTRA_CHOSEN_COMPONENT_INTENT_SENDER:Ljava/lang/String; = "android.intent.extra.CHOSEN_COMPONENT_INTENT_SENDER"

.field public static final EXTRA_CLIENT_INTENT:Ljava/lang/String; = "android.intent.extra.client_intent"

.field public static final EXTRA_CLIENT_LABEL:Ljava/lang/String; = "android.intent.extra.client_label"

.field public static final EXTRA_DATA_REMOVED:Ljava/lang/String; = "android.intent.extra.DATA_REMOVED"

.field public static final EXTRA_DOCK_STATE:Ljava/lang/String; = "android.intent.extra.DOCK_STATE"

.field public static final EXTRA_DOCK_STATE_CAR:I = 0x2

.field public static final EXTRA_DOCK_STATE_DESK:I = 0x1

.field public static final EXTRA_DOCK_STATE_HE_DESK:I = 0x4

.field public static final EXTRA_DOCK_STATE_LE_DESK:I = 0x3

.field public static final EXTRA_DOCK_STATE_UNDOCKED:I = 0x0

.field public static final EXTRA_DONT_KILL_APP:Ljava/lang/String; = "android.intent.extra.DONT_KILL_APP"

.field public static final EXTRA_EMAIL:Ljava/lang/String; = "android.intent.extra.EMAIL"

.field public static final EXTRA_HTML_TEXT:Ljava/lang/String; = "android.intent.extra.HTML_TEXT"

.field public static final EXTRA_INITIAL_INTENTS:Ljava/lang/String; = "android.intent.extra.INITIAL_INTENTS"

.field public static final EXTRA_INSTALLER_PACKAGE_NAME:Ljava/lang/String; = "android.intent.extra.INSTALLER_PACKAGE_NAME"

.field public static final EXTRA_INSTALL_RESULT:Ljava/lang/String; = "android.intent.extra.INSTALL_RESULT"

.field public static final EXTRA_INTENT:Ljava/lang/String; = "android.intent.extra.INTENT"

.field public static final EXTRA_KEY_CONFIRM:Ljava/lang/String; = "android.intent.extra.KEY_CONFIRM"

.field public static final EXTRA_KEY_EVENT:Ljava/lang/String; = "android.intent.extra.KEY_EVENT"

.field public static final EXTRA_LOCAL_ONLY:Ljava/lang/String; = "android.intent.extra.LOCAL_ONLY"

.field public static final EXTRA_MIME_TYPES:Ljava/lang/String; = "android.intent.extra.MIME_TYPES"

.field public static final EXTRA_MSIM_MODE:Ljava/lang/String; = "mode"

.field public static final EXTRA_NOT_UNKNOWN_SOURCE:Ljava/lang/String; = "android.intent.extra.NOT_UNKNOWN_SOURCE"

.field public static final EXTRA_ORIGINATING_UID:Ljava/lang/String; = "android.intent.extra.ORIGINATING_UID"

.field public static final EXTRA_ORIGINATING_URI:Ljava/lang/String; = "android.intent.extra.ORIGINATING_URI"

.field public static final EXTRA_PACKAGES:Ljava/lang/String; = "android.intent.extra.PACKAGES"

.field public static final EXTRA_PHONE_NUMBER:Ljava/lang/String; = "android.intent.extra.PHONE_NUMBER"

.field public static final EXTRA_REASON:Ljava/lang/String; = "android.intent.extra.REASON"

.field public static final EXTRA_REFERRER:Ljava/lang/String; = "android.intent.extra.REFERRER"

.field public static final EXTRA_REFERRER_NAME:Ljava/lang/String; = "android.intent.extra.REFERRER_NAME"

.field public static final EXTRA_REMOTE_INTENT_TOKEN:Ljava/lang/String; = "android.intent.extra.remote_intent_token"

.field public static final EXTRA_REMOVED_FOR_ALL_USERS:Ljava/lang/String; = "android.intent.extra.REMOVED_FOR_ALL_USERS"

.field public static final EXTRA_REPLACEMENT_EXTRAS:Ljava/lang/String; = "android.intent.extra.REPLACEMENT_EXTRAS"

.field public static final EXTRA_REPLACING:Ljava/lang/String; = "android.intent.extra.REPLACING"

.field public static final EXTRA_RESTRICTIONS_BUNDLE:Ljava/lang/String; = "android.intent.extra.restrictions_bundle"

.field public static final EXTRA_RESTRICTIONS_INTENT:Ljava/lang/String; = "android.intent.extra.restrictions_intent"

.field public static final EXTRA_RESTRICTIONS_LIST:Ljava/lang/String; = "android.intent.extra.restrictions_list"

.field public static final EXTRA_RETURN_RESULT:Ljava/lang/String; = "android.intent.extra.RETURN_RESULT"

.field public static final EXTRA_SHORTCUT_ICON:Ljava/lang/String; = "android.intent.extra.shortcut.ICON"

.field public static final EXTRA_SHORTCUT_ICON_RESOURCE:Ljava/lang/String; = "android.intent.extra.shortcut.ICON_RESOURCE"

.field public static final EXTRA_SHORTCUT_INTENT:Ljava/lang/String; = "android.intent.extra.shortcut.INTENT"

.field public static final EXTRA_SHORTCUT_NAME:Ljava/lang/String; = "android.intent.extra.shortcut.NAME"

.field public static final EXTRA_SHUTDOWN_USERSPACE_ONLY:Ljava/lang/String; = "android.intent.extra.SHUTDOWN_USERSPACE_ONLY"

.field public static final EXTRA_SMARTBOOK_PLUG_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_STREAM:Ljava/lang/String; = "android.intent.extra.STREAM"

.field public static final EXTRA_SUBJECT:Ljava/lang/String; = "android.intent.extra.SUBJECT"

.field public static final EXTRA_TEMPLATE:Ljava/lang/String; = "android.intent.extra.TEMPLATE"

.field public static final EXTRA_TETHERING_CONNECTED:Ljava/lang/String; = "tethering_isconnected"

.field public static final EXTRA_TEXT:Ljava/lang/String; = "android.intent.extra.TEXT"

.field public static final EXTRA_TIME_PREF_24_HOUR_FORMAT:Ljava/lang/String; = "android.intent.extra.TIME_PREF_24_HOUR_FORMAT"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "android.intent.extra.TITLE"

.field public static final EXTRA_UID:Ljava/lang/String; = "android.intent.extra.UID"

.field public static final EXTRA_UNINSTALL_ALL_USERS:Ljava/lang/String; = "android.intent.extra.UNINSTALL_ALL_USERS"

.field public static final EXTRA_UNREAD_COMPONENT:Ljava/lang/String; = "com.mediatek.intent.extra.UNREAD_COMPONENT"

.field public static final EXTRA_UNREAD_NUMBER:Ljava/lang/String; = "com.mediatek.intent.extra.UNREAD_NUMBER"

.field public static final EXTRA_USER:Ljava/lang/String; = "android.intent.extra.USER"

.field public static final EXTRA_USER_HANDLE:Ljava/lang/String; = "android.intent.extra.user_handle"

.field public static final FILL_IN_ACTION:I = 0x1

.field public static final FILL_IN_CATEGORIES:I = 0x4

.field public static final FILL_IN_CLIP_DATA:I = 0x80

.field public static final FILL_IN_COMPONENT:I = 0x8

.field public static final FILL_IN_DATA:I = 0x2

.field public static final FILL_IN_PACKAGE:I = 0x10

.field public static final FILL_IN_SELECTOR:I = 0x40

.field public static final FILL_IN_SOURCE_BOUNDS:I = 0x20

.field public static final FLAG_ACTIVITY_BROUGHT_TO_FRONT:I = 0x400000

.field public static final FLAG_ACTIVITY_CLEAR_TASK:I = 0x8000

.field public static final FLAG_ACTIVITY_CLEAR_TOP:I = 0x4000000

.field public static final FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET:I = 0x80000

.field public static final FLAG_ACTIVITY_EXCLUDE_FROM_RECENTS:I = 0x800000

.field public static final FLAG_ACTIVITY_FLOATING:I = 0x200

.field public static final FLAG_ACTIVITY_FORWARD_RESULT:I = 0x2000000

.field public static final FLAG_ACTIVITY_LAUNCHED_FROM_HISTORY:I = 0x100000

.field public static final FLAG_ACTIVITY_MULTIPLE_TASK:I = 0x8000000

.field public static final FLAG_ACTIVITY_NEW_DOCUMENT:I = 0x80000

.field public static final FLAG_ACTIVITY_NEW_TASK:I = 0x10000000

.field public static final FLAG_ACTIVITY_NO_ANIMATION:I = 0x10000

.field public static final FLAG_ACTIVITY_NO_HISTORY:I = 0x40000000

.field public static final FLAG_ACTIVITY_NO_USER_ACTION:I = 0x40000

.field public static final FLAG_ACTIVITY_PREVIOUS_IS_TOP:I = 0x1000000

.field public static final FLAG_ACTIVITY_REORDER_TO_FRONT:I = 0x20000

.field public static final FLAG_ACTIVITY_RESET_TASK_IF_NEEDED:I = 0x200000

.field public static final FLAG_ACTIVITY_RETAIN_IN_RECENTS:I = 0x2000

.field public static final FLAG_ACTIVITY_SINGLE_TOP:I = 0x20000000

.field public static final FLAG_ACTIVITY_TASK_ON_HOME:I = 0x4000

.field public static final FLAG_DEBUG_LOG_RESOLUTION:I = 0x8

.field public static final FLAG_EXCLUDE_STOPPED_PACKAGES:I = 0x10

.field public static final FLAG_FROM_BACKGROUND:I = 0x4

.field public static final FLAG_GRANT_PERSISTABLE_URI_PERMISSION:I = 0x40

.field public static final FLAG_GRANT_PREFIX_URI_PERMISSION:I = 0x80

.field public static final FLAG_GRANT_READ_URI_PERMISSION:I = 0x1

.field public static final FLAG_GRANT_WRITE_URI_PERMISSION:I = 0x2

.field public static final FLAG_INCLUDE_STOPPED_PACKAGES:I = 0x20

.field public static final FLAG_RECEIVER_BOOT_UPGRADE:I = 0x2000000

.field public static final FLAG_RECEIVER_FOREGROUND:I = 0x10000000

.field public static final FLAG_RECEIVER_NO_ABORT:I = 0x8000000

.field public static final FLAG_RECEIVER_REGISTERED_ONLY:I = 0x40000000

.field public static final FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT:I = 0x4000000

.field public static final FLAG_RECEIVER_REPLACE_PENDING:I = 0x20000000

.field public static final FLAG_WITH_BACKGROUND_PRIORITY:I = 0x100

.field public static final IMMUTABLE_FLAGS:I = 0xc3

.field public static final METADATA_DOCK_HOME:Ljava/lang/String; = "android.dock_home"

.field public static final METADATA_SETUP_VERSION:Ljava/lang/String; = "android.SETUP_VERSION"

.field public static final MTK_ACTION_REQUEST_TRANSIENT_STATUSBAR:Ljava/lang/String; = "com.mediatek.action.REQUEST_TRANSIENT_STATUSBAR"

.field private static final TAG_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final TAG_EXTRA:Ljava/lang/String; = "extra"

.field public static final URI_ALLOW_UNSAFE:I = 0x4

.field public static final URI_ANDROID_APP_SCHEME:I = 0x2

.field public static final URI_INTENT_SCHEME:I = 0x1


# instance fields
.field private mAction:Ljava/lang/String;

.field private mCategories:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClipData:Landroid/content/ClipData;

.field private mComponent:Landroid/content/ComponentName;

.field private mContentUserHint:I

.field private mData:Landroid/net/Uri;

.field private mExtras:Landroid/os/Bundle;

.field private mFlags:I

.field private mPackage:Ljava/lang/String;

.field private mSelector:Landroid/content/Intent;

.field private mSourceBounds:Landroid/graphics/Rect;

.field private mType:Ljava/lang/String;

.field public mdataId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7705
    new-instance v0, Landroid/content/Intent$1;

    invoke-direct {v0}, Landroid/content/Intent$1;-><init>()V

    sput-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 621
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/Intent;->mdataId:I

    .line 4259
    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 4267
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .param p1, "packageContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 4374
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 621
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/Intent;->mdataId:I

    .line 4259
    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 4375
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 4376
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2
    .param p1, "o"    # Landroid/content/Intent;

    .prologue
    .line 4272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 621
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/Intent;->mdataId:I

    .line 4259
    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 4273
    iget-object v0, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 4274
    iget-object v0, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 4275
    iget-object v0, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 4276
    iget-object v0, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 4277
    iget-object v0, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 4278
    iget v0, p1, Landroid/content/Intent;->mFlags:I

    iput v0, p0, Landroid/content/Intent;->mFlags:I

    .line 4279
    iget v0, p1, Landroid/content/Intent;->mdataId:I

    iput v0, p0, Landroid/content/Intent;->mdataId:I

    .line 4280
    iget v0, p1, Landroid/content/Intent;->mContentUserHint:I

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 4281
    iget-object v0, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    .line 4282
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 4284
    :cond_0
    iget-object v0, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 4285
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 4287
    :cond_1
    iget-object v0, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    .line 4288
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    .line 4290
    :cond_2
    iget-object v0, p1, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 4291
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    .line 4293
    :cond_3
    iget-object v0, p1, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_4

    .line 4294
    new-instance v0, Landroid/content/ClipData;

    iget-object v1, p1, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-direct {v0, v1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipData;)V

    iput-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    .line 4296
    :cond_4
    return-void
.end method

.method private constructor <init>(Landroid/content/Intent;Z)V
    .locals 2
    .param p1, "o"    # Landroid/content/Intent;
    .param p2, "all"    # Z

    .prologue
    .line 4303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 621
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/Intent;->mdataId:I

    .line 4259
    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 4304
    iget-object v0, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 4305
    iget-object v0, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 4306
    iget-object v0, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 4307
    iget-object v0, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 4308
    iget-object v0, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 4309
    iget v0, p1, Landroid/content/Intent;->mdataId:I

    iput v0, p0, Landroid/content/Intent;->mdataId:I

    .line 4310
    iget-object v0, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    .line 4311
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 4313
    :cond_0
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 7716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 621
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/Intent;->mdataId:I

    .line 4259
    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 7717
    invoke-virtual {p0, p1}, Landroid/content/Intent;->readFromParcel(Landroid/os/Parcel;)V

    .line 7718
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 4333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 621
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/Intent;->mdataId:I

    .line 4259
    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 4334
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4335
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 4353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 621
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/Intent;->mdataId:I

    .line 4259
    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 4354
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4355
    iput-object p2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 4356
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "packageContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 4402
    .local p4, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 621
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/Intent;->mdataId:I

    .line 4259
    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 4403
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4404
    iput-object p2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 4405
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p3, p4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 4406
    return-void
.end method

.method public static createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 1
    .param p0, "target"    # Landroid/content/Intent;
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 887
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;
    .locals 7
    .param p0, "target"    # Landroid/content/Intent;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "sender"    # Landroid/content/IntentSender;

    .prologue
    const/4 v6, 0x0

    .line 915
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.CHOOSER"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 916
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.extra.INTENT"

    invoke-virtual {v0, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 917
    if-eqz p1, :cond_0

    .line 918
    const-string v5, "android.intent.extra.TITLE"

    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 921
    :cond_0
    if-eqz p2, :cond_1

    .line 922
    const-string v5, "android.intent.extra.CHOSEN_COMPONENT_INTENT_SENDER"

    invoke-virtual {v0, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 926
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v5

    and-int/lit16 v3, v5, 0xc3

    .line 929
    .local v3, "permFlags":I
    if-eqz v3, :cond_3

    .line 930
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    .line 931
    .local v4, "targetClipData":Landroid/content/ClipData;
    if-nez v4, :cond_2

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 932
    new-instance v1, Landroid/content/ClipData$Item;

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 934
    .local v1, "item":Landroid/content/ClipData$Item;
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 935
    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v6

    .line 939
    .local v2, "mimeTypes":[Ljava/lang/String;
    :goto_0
    new-instance v4, Landroid/content/ClipData;

    .end local v4    # "targetClipData":Landroid/content/ClipData;
    const/4 v5, 0x0

    invoke-direct {v4, v5, v2, v1}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 941
    .end local v1    # "item":Landroid/content/ClipData$Item;
    .end local v2    # "mimeTypes":[Ljava/lang/String;
    .restart local v4    # "targetClipData":Landroid/content/ClipData;
    :cond_2
    if-eqz v4, :cond_3

    .line 942
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 943
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 947
    .end local v4    # "targetClipData":Landroid/content/ClipData;
    :cond_3
    return-object v0

    .line 937
    .restart local v1    # "item":Landroid/content/ClipData$Item;
    .restart local v4    # "targetClipData":Landroid/content/ClipData;
    :cond_4
    new-array v2, v6, [Ljava/lang/String;

    .restart local v2    # "mimeTypes":[Ljava/lang/String;
    goto :goto_0
.end method

.method public static getIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4495
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getIntentOld(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 4734
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/content/Intent;->getIntentOld(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static getIntentOld(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 22
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 4740
    const/16 v19, 0x23

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 4741
    .local v9, "i":I
    if-ltz v9, :cond_17

    .line 4742
    const/4 v4, 0x0

    .line 4743
    .local v4, "action":Ljava/lang/String;
    move v11, v9

    .line 4744
    .local v11, "intentFragmentStart":I
    const/4 v12, 0x0

    .line 4746
    .local v12, "isIntentFragment":Z
    add-int/lit8 v9, v9, 0x1

    .line 4748
    const-string v19, "action("

    const/16 v20, 0x0

    const/16 v21, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v9, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 4749
    const/4 v12, 0x1

    .line 4750
    add-int/lit8 v9, v9, 0x7

    .line 4751
    const/16 v19, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    .line 4752
    .local v13, "j":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 4753
    add-int/lit8 v9, v13, 0x1

    .line 4756
    .end local v13    # "j":I
    :cond_0
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4758
    .local v10, "intent":Landroid/content/Intent;
    const-string v19, "categories("

    const/16 v20, 0x0

    const/16 v21, 0xb

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v9, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 4759
    const/4 v12, 0x1

    .line 4760
    add-int/lit8 v9, v9, 0xb

    .line 4761
    const/16 v19, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    .line 4762
    .restart local v13    # "j":I
    :goto_0
    if-ge v9, v13, :cond_4

    .line 4763
    const/16 v19, 0x21

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v16

    .line 4764
    .local v16, "sep":I
    if-ltz v16, :cond_1

    move/from16 v0, v16

    if-le v0, v13, :cond_2

    :cond_1
    move/from16 v16, v13

    .line 4765
    :cond_2
    move/from16 v0, v16

    if-ge v9, v0, :cond_3

    .line 4766
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4768
    :cond_3
    add-int/lit8 v9, v16, 0x1

    .line 4769
    goto :goto_0

    .line 4770
    .end local v16    # "sep":I
    :cond_4
    add-int/lit8 v9, v13, 0x1

    .line 4773
    .end local v13    # "j":I
    :cond_5
    const-string v19, "type("

    const/16 v20, 0x0

    const/16 v21, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v9, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 4774
    const/4 v12, 0x1

    .line 4775
    add-int/lit8 v9, v9, 0x5

    .line 4776
    const/16 v19, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    .line 4777
    .restart local v13    # "j":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 4778
    add-int/lit8 v9, v13, 0x1

    .line 4781
    .end local v13    # "j":I
    :cond_6
    const-string v19, "launchFlags("

    const/16 v20, 0x0

    const/16 v21, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v9, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 4782
    const/4 v12, 0x1

    .line 4783
    add-int/lit8 v9, v9, 0xc

    .line 4784
    const/16 v19, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    .line 4785
    .restart local v13    # "j":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    iput v0, v10, Landroid/content/Intent;->mFlags:I

    .line 4786
    and-int/lit8 v19, p1, 0x4

    if-nez v19, :cond_7

    .line 4787
    iget v0, v10, Landroid/content/Intent;->mFlags:I

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, -0xc4

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v10, Landroid/content/Intent;->mFlags:I

    .line 4789
    :cond_7
    add-int/lit8 v9, v13, 0x1

    .line 4792
    .end local v13    # "j":I
    :cond_8
    const-string v19, "component("

    const/16 v20, 0x0

    const/16 v21, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v9, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 4793
    const/4 v12, 0x1

    .line 4794
    add-int/lit8 v9, v9, 0xa

    .line 4795
    const/16 v19, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    .line 4796
    .restart local v13    # "j":I
    const/16 v19, 0x21

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v16

    .line 4797
    .restart local v16    # "sep":I
    if-ltz v16, :cond_9

    move/from16 v0, v16

    if-ge v0, v13, :cond_9

    .line 4798
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 4799
    .local v15, "pkg":Ljava/lang/String;
    add-int/lit8 v19, v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 4800
    .local v7, "cls":Ljava/lang/String;
    new-instance v19, Landroid/content/ComponentName;

    move-object/from16 v0, v19

    invoke-direct {v0, v15, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    iput-object v0, v10, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 4802
    .end local v7    # "cls":Ljava/lang/String;
    .end local v15    # "pkg":Ljava/lang/String;
    :cond_9
    add-int/lit8 v9, v13, 0x1

    .line 4805
    .end local v13    # "j":I
    .end local v16    # "sep":I
    :cond_a
    const-string v19, "extras("

    const/16 v20, 0x0

    const/16 v21, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v9, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 4806
    const/4 v12, 0x1

    .line 4807
    add-int/lit8 v9, v9, 0x7

    .line 4809
    const/16 v19, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 4810
    .local v6, "closeParen":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v6, v0, :cond_c

    new-instance v19, Ljava/net/URISyntaxException;

    const-string v20, "EXTRA missing trailing \')\'"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v9}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v19

    .line 4874
    .local v5, "ch":C
    .restart local v13    # "j":I
    .local v14, "key":Ljava/lang/String;
    .local v17, "type":C
    .local v18, "value":Ljava/lang/String;
    :cond_b
    add-int/lit8 v9, v9, 0x1

    .line 4813
    .end local v5    # "ch":C
    .end local v13    # "j":I
    .end local v14    # "key":Ljava/lang/String;
    .end local v17    # "type":C
    .end local v18    # "value":Ljava/lang/String;
    :cond_c
    if-ge v9, v6, :cond_13

    .line 4815
    const/16 v19, 0x3d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    .line 4816
    .restart local v13    # "j":I
    add-int/lit8 v19, v9, 0x1

    move/from16 v0, v19

    if-le v13, v0, :cond_d

    if-lt v9, v6, :cond_e

    .line 4817
    :cond_d
    new-instance v19, Ljava/net/URISyntaxException;

    const-string v20, "EXTRA missing \'=\'"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v9}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v19

    .line 4819
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v17

    .line 4820
    .restart local v17    # "type":C
    add-int/lit8 v9, v9, 0x1

    .line 4821
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 4822
    .restart local v14    # "key":Ljava/lang/String;
    add-int/lit8 v9, v13, 0x1

    .line 4825
    const/16 v19, 0x21

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    .line 4826
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v13, v0, :cond_f

    if-lt v13, v6, :cond_10

    :cond_f
    move v13, v6

    .line 4827
    :cond_10
    if-lt v9, v13, :cond_11

    new-instance v19, Ljava/net/URISyntaxException;

    const-string v20, "EXTRA missing \'!\'"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v9}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v19

    .line 4828
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 4829
    .restart local v18    # "value":Ljava/lang/String;
    move v9, v13

    .line 4832
    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    if-nez v19, :cond_12

    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v19

    iput-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 4836
    :cond_12
    sparse-switch v17, :sswitch_data_0

    .line 4865
    :try_start_0
    new-instance v19, Ljava/net/URISyntaxException;

    const-string v20, "EXTRA has unknown type"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v9}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v19
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4867
    :catch_0
    move-exception v8

    .line 4868
    .local v8, "e":Ljava/lang/NumberFormatException;
    new-instance v19, Ljava/net/URISyntaxException;

    const-string v20, "EXTRA value can\'t be parsed"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v9}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v19

    .line 4838
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :sswitch_0
    :try_start_1
    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4871
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 4872
    .restart local v5    # "ch":C
    const/16 v19, 0x29

    move/from16 v0, v19

    if-ne v5, v0, :cond_15

    .line 4878
    .end local v5    # "ch":C
    .end local v6    # "closeParen":I
    .end local v13    # "j":I
    .end local v14    # "key":Ljava/lang/String;
    .end local v17    # "type":C
    .end local v18    # "value":Ljava/lang/String;
    :cond_13
    if-eqz v12, :cond_16

    .line 4879
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 4884
    :goto_2
    iget-object v0, v10, Landroid/content/Intent;->mAction:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_14

    .line 4886
    const-string v19, "android.intent.action.VIEW"

    move-object/from16 v0, v19

    iput-object v0, v10, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 4893
    .end local v4    # "action":Ljava/lang/String;
    .end local v11    # "intentFragmentStart":I
    .end local v12    # "isIntentFragment":Z
    :cond_14
    :goto_3
    return-object v10

    .line 4841
    .restart local v4    # "action":Ljava/lang/String;
    .restart local v6    # "closeParen":I
    .restart local v11    # "intentFragmentStart":I
    .restart local v12    # "isIntentFragment":Z
    .restart local v13    # "j":I
    .restart local v14    # "key":Ljava/lang/String;
    .restart local v17    # "type":C
    .restart local v18    # "value":Ljava/lang/String;
    :sswitch_1
    :try_start_2
    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 4844
    :sswitch_2
    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto :goto_1

    .line 4847
    :sswitch_3
    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->charAt(I)C

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    goto :goto_1

    .line 4850
    :sswitch_4
    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v0, v14, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    .line 4853
    :sswitch_5
    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_1

    .line 4856
    :sswitch_6
    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 4859
    :sswitch_7
    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v0, v14, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 4862
    :sswitch_8
    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 4873
    .restart local v5    # "ch":C
    :cond_15
    const/16 v19, 0x21

    move/from16 v0, v19

    if-eq v5, v0, :cond_b

    new-instance v19, Ljava/net/URISyntaxException;

    const-string v20, "EXTRA missing \'!\'"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v9}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v19

    .line 4881
    .end local v5    # "ch":C
    .end local v6    # "closeParen":I
    .end local v13    # "j":I
    .end local v14    # "key":Ljava/lang/String;
    .end local v17    # "type":C
    .end local v18    # "value":Ljava/lang/String;
    :cond_16
    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Landroid/content/Intent;->mData:Landroid/net/Uri;

    goto/16 :goto_2

    .line 4890
    .end local v4    # "action":Ljava/lang/String;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "intentFragmentStart":I
    .end local v12    # "isIntentFragment":Z
    :cond_17
    new-instance v10, Landroid/content/Intent;

    const-string v19, "android.intent.action.VIEW"

    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v10    # "intent":Landroid/content/Intent;
    goto/16 :goto_3

    .line 4836
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_1
        0x53 -> :sswitch_0
        0x62 -> :sswitch_2
        0x63 -> :sswitch_3
        0x64 -> :sswitch_4
        0x66 -> :sswitch_5
        0x69 -> :sswitch_6
        0x6c -> :sswitch_7
        0x73 -> :sswitch_8
    .end sparse-switch
.end method

.method public static isAccessUriMode(I)Z
    .locals 1
    .param p0, "modeFlags"    # I

    .prologue
    .line 3622
    and-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static makeClipItem(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Landroid/content/ClipData$Item;
    .locals 5
    .param p3, "which"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/content/ClipData$Item;"
        }
    .end annotation

    .prologue
    .local p0, "streams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .local p1, "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .local p2, "htmlTexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 8129
    if-eqz p0, :cond_0

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object v2, v3

    .line 8130
    .local v2, "uri":Landroid/net/Uri;
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    move-object v1, v3

    .line 8131
    .local v1, "text":Ljava/lang/CharSequence;
    :goto_1
    if-eqz p2, :cond_2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    .line 8132
    .local v0, "htmlText":Ljava/lang/String;
    :goto_2
    new-instance v3, Landroid/content/ClipData$Item;

    invoke-direct {v3, v1, v0, v4, v2}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    return-object v3

    .end local v0    # "htmlText":Ljava/lang/String;
    .end local v1    # "text":Ljava/lang/CharSequence;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    move-object v2, v4

    .line 8129
    goto :goto_0

    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_1
    move-object v1, v4

    .line 8130
    goto :goto_1

    .restart local v1    # "text":Ljava/lang/CharSequence;
    :cond_2
    move-object v0, v4

    .line 8131
    goto :goto_2
.end method

.method public static makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2
    .param p0, "mainActivity"    # Landroid/content/ComponentName;

    .prologue
    .line 4430
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4431
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4432
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4433
    return-object v0
.end method

.method public static makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "selectorAction"    # Ljava/lang/String;
    .param p1, "selectorCategory"    # Ljava/lang/String;

    .prologue
    .line 4460
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4461
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4462
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4463
    .local v1, "selector":Landroid/content/Intent;
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4464
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4465
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 4466
    return-object v0
.end method

.method public static makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2
    .param p0, "mainActivity"    # Landroid/content/ComponentName;

    .prologue
    .line 4483
    invoke-static {p0}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 4484
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4486
    return-object v0
.end method

.method public static normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 7923
    if-nez p0, :cond_1

    .line 7924
    const/4 p0, 0x0

    .line 7933
    .local v0, "semicolonIndex":I
    :cond_0
    :goto_0
    return-object p0

    .line 7927
    .end local v0    # "semicolonIndex":I
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 7929
    const/16 v1, 0x3b

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 7930
    .restart local v0    # "semicolonIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 7931
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;
    .locals 12
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7774
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 7776
    .local v3, "intent":Landroid/content/Intent;
    sget-object v10, Lcom/android/internal/R$styleable;->Intent:[I

    invoke-virtual {p0, p2, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 7779
    .local v8, "sa":Landroid/content/res/TypedArray;
    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7781
    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 7782
    .local v2, "data":Ljava/lang/String;
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 7783
    .local v4, "mimeType":Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    :goto_0
    invoke-virtual {v3, v10, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 7785
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 7786
    .local v7, "packageName":Ljava/lang/String;
    const/4 v10, 0x4

    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 7787
    .local v1, "className":Ljava/lang/String;
    if-eqz v7, :cond_0

    if-eqz v1, :cond_0

    .line 7788
    new-instance v10, Landroid/content/ComponentName;

    invoke-direct {v10, v7, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 7791
    :cond_0
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 7793
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 7796
    .local v6, "outerDepth":I
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .local v9, "type":I
    const/4 v10, 0x1

    if-eq v9, v10, :cond_8

    const/4 v10, 0x3

    if-ne v9, v10, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v6, :cond_8

    .line 7797
    :cond_2
    const/4 v10, 0x3

    if-eq v9, v10, :cond_1

    const/4 v10, 0x4

    if-eq v9, v10, :cond_1

    .line 7801
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 7802
    .local v5, "nodeName":Ljava/lang/String;
    const-string v10, "categories"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 7803
    sget-object v10, Lcom/android/internal/R$styleable;->IntentCategory:[I

    invoke-virtual {p0, p2, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 7805
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7806
    .local v0, "cat":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 7808
    if-eqz v0, :cond_3

    .line 7809
    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 7811
    :cond_3
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 7783
    .end local v0    # "cat":Ljava/lang/String;
    .end local v1    # "className":Ljava/lang/String;
    .end local v5    # "nodeName":Ljava/lang/String;
    .end local v6    # "outerDepth":I
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v9    # "type":I
    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    .line 7813
    .restart local v1    # "className":Ljava/lang/String;
    .restart local v5    # "nodeName":Ljava/lang/String;
    .restart local v6    # "outerDepth":I
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v9    # "type":I
    :cond_5
    const-string v10, "extra"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 7814
    iget-object v10, v3, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v10, :cond_6

    .line 7815
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    iput-object v10, v3, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 7817
    :cond_6
    const-string v10, "extra"

    iget-object v11, v3, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p0, v10, p2, v11}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 7818
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 7821
    :cond_7
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 7825
    .end local v5    # "nodeName":Ljava/lang/String;
    :cond_8
    return-object v3
.end method

.method public static parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 24
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 4520
    const/4 v13, 0x0

    .line 4522
    .local v13, "i":I
    :try_start_0
    const-string v21, "android-app:"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 4525
    .local v4, "androidApp":Z
    and-int/lit8 v21, p1, 0x3

    if-eqz v21, :cond_1

    .line 4526
    const-string v21, "intent:"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_1

    if-nez v4, :cond_1

    .line 4527
    new-instance v15, Landroid/content/Intent;

    const-string v21, "android.intent.action.VIEW"

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4529
    .local v15, "intent":Landroid/content/Intent;
    :try_start_1
    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4726
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-object v15

    .line 4530
    .restart local v15    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v9

    .line 4531
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v21, Ljava/net/URISyntaxException;

    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v21
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 4728
    .end local v4    # "androidApp":Z
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    .end local v15    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v9

    .line 4729
    .local v9, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v21, Ljava/net/URISyntaxException;

    const-string v22, "illegal Intent URI format"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v13}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v21

    .line 4537
    .end local v9    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v4    # "androidApp":Z
    :cond_1
    :try_start_3
    const-string v21, "#"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    .line 4539
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v13, v0, :cond_2

    .line 4540
    if-nez v4, :cond_4

    .line 4541
    new-instance v15, Landroid/content/Intent;

    const-string v21, "android.intent.action.VIEW"

    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 4545
    :cond_2
    const-string v21, "#Intent;"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-nez v21, :cond_4

    .line 4546
    if-nez v4, :cond_3

    .line 4547
    invoke-static/range {p0 .. p1}, Landroid/content/Intent;->getIntentOld(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v15

    goto :goto_0

    .line 4549
    :cond_3
    const/4 v13, -0x1

    .line 4554
    :cond_4
    new-instance v15, Landroid/content/Intent;

    const-string v21, "android.intent.action.VIEW"

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4555
    .restart local v15    # "intent":Landroid/content/Intent;
    move-object v7, v15

    .line 4556
    .local v7, "baseIntent":Landroid/content/Intent;
    const/4 v12, 0x0

    .line 4557
    .local v12, "explicitAction":Z
    const/4 v14, 0x0

    .line 4560
    .local v14, "inSelector":Z
    const/16 v18, 0x0

    .line 4562
    .local v18, "scheme":Ljava/lang/String;
    if-ltz v13, :cond_7

    .line 4563
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 4564
    .local v8, "data":Ljava/lang/String;
    add-int/lit8 v13, v13, 0x8

    .line 4570
    :goto_1
    if-ltz v13, :cond_1d

    const-string v21, "end"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-nez v21, :cond_1d

    .line 4571
    const/16 v21, 0x3d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    .line 4572
    .local v11, "eq":I
    if-gez v11, :cond_5

    add-int/lit8 v11, v13, -0x1

    .line 4573
    :cond_5
    const/16 v21, 0x3b

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v19

    .line 4574
    .local v19, "semi":I
    move/from16 v0, v19

    if-ge v11, v0, :cond_8

    add-int/lit8 v21, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 4577
    .local v20, "value":Ljava/lang/String;
    :goto_2
    const-string v21, "action="

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 4578
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4579
    if-nez v14, :cond_6

    .line 4580
    const/4 v12, 0x1

    .line 4652
    :cond_6
    :goto_3
    add-int/lit8 v13, v19, 0x1

    .line 4653
    goto :goto_1

    .line 4566
    .end local v8    # "data":Ljava/lang/String;
    .end local v11    # "eq":I
    .end local v19    # "semi":I
    .end local v20    # "value":Ljava/lang/String;
    :cond_7
    move-object/from16 v8, p0

    .restart local v8    # "data":Ljava/lang/String;
    goto :goto_1

    .line 4574
    .restart local v11    # "eq":I
    .restart local v19    # "semi":I
    :cond_8
    const-string v20, ""

    goto :goto_2

    .line 4585
    .restart local v20    # "value":Ljava/lang/String;
    :cond_9
    const-string v21, "category="

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 4586
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 4590
    :cond_a
    const-string v21, "type="

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 4591
    move-object/from16 v0, v20

    iput-object v0, v15, Landroid/content/Intent;->mType:Ljava/lang/String;

    goto :goto_3

    .line 4595
    :cond_b
    const-string v21, "launchFlags="

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 4596
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move/from16 v0, v21

    iput v0, v15, Landroid/content/Intent;->mFlags:I

    .line 4597
    and-int/lit8 v21, p1, 0x4

    if-nez v21, :cond_6

    .line 4598
    iget v0, v15, Landroid/content/Intent;->mFlags:I

    move/from16 v21, v0

    move/from16 v0, v21

    and-int/lit16 v0, v0, -0xc4

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v15, Landroid/content/Intent;->mFlags:I

    goto :goto_3

    .line 4603
    :cond_c
    const-string v21, "package="

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 4604
    move-object/from16 v0, v20

    iput-object v0, v15, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    goto :goto_3

    .line 4608
    :cond_d
    const-string v21, "component="

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 4609
    invoke-static/range {v20 .. v20}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v15, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    goto :goto_3

    .line 4613
    :cond_e
    const-string v21, "scheme="

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 4614
    if-eqz v14, :cond_f

    .line 4615
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v15, Landroid/content/Intent;->mData:Landroid/net/Uri;

    goto/16 :goto_3

    .line 4617
    :cond_f
    move-object/from16 v18, v20

    goto/16 :goto_3

    .line 4622
    :cond_10
    const-string v21, "sourceBounds="

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 4623
    invoke-static/range {v20 .. v20}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v15, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    goto/16 :goto_3

    .line 4627
    :cond_11
    add-int/lit8 v21, v13, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    const-string v21, "SEL"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 4628
    new-instance v15, Landroid/content/Intent;

    .end local v15    # "intent":Landroid/content/Intent;
    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 4629
    .restart local v15    # "intent":Landroid/content/Intent;
    const/4 v14, 0x1

    goto/16 :goto_3

    .line 4634
    :cond_12
    add-int/lit8 v21, v13, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 4636
    .local v16, "key":Ljava/lang/String;
    iget-object v0, v15, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move-object/from16 v21, v0

    if-nez v21, :cond_13

    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v21

    iput-object v0, v15, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 4637
    :cond_13
    iget-object v6, v15, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 4639
    .local v6, "b":Landroid/os/Bundle;
    const-string v21, "S."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_14

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 4640
    :cond_14
    const-string v21, "B."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_15

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v21

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 4641
    :cond_15
    const-string v21, "b."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_16

    invoke-static/range {v20 .. v20}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v21

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto/16 :goto_3

    .line 4642
    :cond_16
    const-string v21, "c."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_17

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->charAt(I)C

    move-result v21

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    goto/16 :goto_3

    .line 4643
    :cond_17
    const-string v21, "d."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_18

    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v22

    move-object/from16 v0, v16

    move-wide/from16 v1, v22

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_3

    .line 4644
    :cond_18
    const-string v21, "f."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_19

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_3

    .line 4645
    :cond_19
    const-string v21, "i."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_1a

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 4646
    :cond_1a
    const-string v21, "l."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_1b

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    move-object/from16 v0, v16

    move-wide/from16 v1, v22

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_3

    .line 4647
    :cond_1b
    const-string v21, "s."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_1c

    invoke-static/range {v20 .. v20}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v21

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    goto/16 :goto_3

    .line 4648
    :cond_1c
    new-instance v21, Ljava/net/URISyntaxException;

    const-string v22, "unknown EXTRA type"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v13}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v21

    .line 4655
    .end local v6    # "b":Landroid/os/Bundle;
    .end local v11    # "eq":I
    .end local v16    # "key":Ljava/lang/String;
    .end local v19    # "semi":I
    .end local v20    # "value":Ljava/lang/String;
    :cond_1d
    if-eqz v14, :cond_1f

    .line 4657
    iget-object v0, v7, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_1e

    .line 4658
    invoke-virtual {v7, v15}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 4660
    :cond_1e
    move-object v15, v7

    .line 4663
    :cond_1f
    if-eqz v8, :cond_0

    .line 4664
    const-string v21, "intent:"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_21

    .line 4665
    const/16 v21, 0x7

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 4666
    if-eqz v18, :cond_20

    .line 4667
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x3a

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4717
    :cond_20
    :goto_4
    invoke-virtual {v8}, Ljava/lang/String;->length()I
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v21

    if-lez v21, :cond_0

    .line 4719
    :try_start_4
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v15, Landroid/content/Intent;->mData:Landroid/net/Uri;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 4720
    :catch_2
    move-exception v9

    .line 4721
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    :try_start_5
    new-instance v21, Ljava/net/URISyntaxException;

    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v21

    .line 4669
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :cond_21
    const-string v21, "android-app:"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_20

    .line 4670
    const/16 v21, 0xc

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x2f

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_29

    const/16 v21, 0xd

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x2f

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_29

    .line 4672
    const/16 v21, 0x2f

    const/16 v22, 0xe

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    .line 4673
    .local v10, "end":I
    if-gez v10, :cond_23

    .line 4675
    const/16 v21, 0xe

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v15, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 4676
    if-nez v12, :cond_22

    .line 4677
    const-string v21, "android.intent.action.MAIN"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4679
    :cond_22
    const-string v8, ""

    goto :goto_4

    .line 4682
    :cond_23
    const/4 v5, 0x0

    .line 4683
    .local v5, "authority":Ljava/lang/String;
    const/16 v21, 0xe

    move/from16 v0, v21

    invoke-virtual {v8, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v15, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 4685
    add-int/lit8 v21, v10, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_24

    .line 4686
    const/16 v21, 0x2f

    add-int/lit8 v22, v10, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v17

    .local v17, "newEnd":I
    if-ltz v17, :cond_26

    .line 4688
    add-int/lit8 v21, v10, 0x1

    move/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 4689
    move/from16 v10, v17

    .line 4690
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v10, v0, :cond_24

    const/16 v21, 0x2f

    add-int/lit8 v22, v10, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v17

    if-ltz v17, :cond_24

    .line 4692
    add-int/lit8 v21, v10, 0x1

    move/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 4693
    move/from16 v10, v17

    .line 4700
    .end local v17    # "newEnd":I
    :cond_24
    :goto_5
    if-nez v18, :cond_27

    .line 4702
    if-nez v12, :cond_25

    .line 4703
    const-string v21, "android.intent.action.MAIN"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4705
    :cond_25
    const-string v8, ""

    goto/16 :goto_4

    .line 4697
    .restart local v17    # "newEnd":I
    :cond_26
    add-int/lit8 v21, v10, 0x1

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    goto :goto_5

    .line 4706
    .end local v17    # "newEnd":I
    :cond_27
    if-nez v5, :cond_28

    .line 4707
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 4709
    :cond_28
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "://"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 4713
    .end local v5    # "authority":Ljava/lang/String;
    .end local v10    # "end":I
    :cond_29
    const-string v8, ""
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_4
.end method

.method public static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;
    .locals 11
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 7857
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 7858
    .local v5, "intent":Landroid/content/Intent;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    .line 7860
    .local v7, "outerDepth":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 7861
    .local v0, "attrCount":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "attrNdx":I
    :goto_0
    if-ltz v2, :cond_7

    .line 7862
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 7863
    .local v1, "attrName":Ljava/lang/String;
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 7864
    .local v3, "attrValue":Ljava/lang/String;
    const-string v8, "action"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 7865
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7861
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 7866
    :cond_0
    const-string v8, "data"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 7867
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    .line 7868
    :cond_1
    const-string v8, "type"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 7869
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 7870
    :cond_2
    const-string v8, "component"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 7871
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    .line 7872
    :cond_3
    const-string v8, "flags"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 7873
    const/16 v8, 0x10

    invoke-static {v3, v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 7874
    :cond_4
    const-string v8, "mdataId"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 7875
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v5, Landroid/content/Intent;->mdataId:I

    goto :goto_1

    .line 7877
    :cond_5
    const-string v8, "Intent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "restoreFromXml: unknown attribute="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 7893
    .end local v1    # "attrName":Ljava/lang/String;
    .end local v3    # "attrValue":Ljava/lang/String;
    .local v4, "event":I
    .local v6, "name":Ljava/lang/String;
    :cond_6
    const-string v8, "Intent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "restoreFromXml: unknown name="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7894
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 7883
    .end local v4    # "event":I
    .end local v6    # "name":Ljava/lang/String;
    :cond_7
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .restart local v4    # "event":I
    const/4 v8, 0x1

    if-eq v4, v8, :cond_9

    const/4 v8, 0x3

    if-ne v4, v8, :cond_8

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-ge v8, v7, :cond_9

    .line 7885
    :cond_8
    const/4 v8, 0x2

    if-ne v4, v8, :cond_7

    .line 7886
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 7887
    .restart local v6    # "name":Ljava/lang/String;
    const-string v8, "categories"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 7888
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 7889
    add-int/lit8 v2, v0, -0x1

    :goto_2
    if-ltz v2, :cond_7

    .line 7890
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 7889
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 7899
    .end local v6    # "name":Ljava/lang/String;
    :cond_9
    return-object v5
.end method

.method private toUriFragment(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "uri"    # Ljava/lang/StringBuilder;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "defAction"    # Ljava/lang/String;
    .param p4, "defPackage"    # Ljava/lang/String;
    .param p5, "flags"    # I

    .prologue
    const/4 v6, 0x0

    .line 7581
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v1, "frag":Ljava/lang/StringBuilder;
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 7583
    invoke-direct/range {v0 .. v5}, Landroid/content/Intent;->toUriInner(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 7584
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 7585
    const-string v0, "SEL;"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7589
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    iget-object v2, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    iget-object v2, v2, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    iget-object v2, v2, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v3, v6

    move-object v4, v6

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/content/Intent;->toUriInner(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 7593
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 7594
    const-string v0, "#Intent;"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7595
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 7596
    const-string v0, "end"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7598
    :cond_1
    return-void

    :cond_2
    move-object v2, v6

    .line 7589
    goto :goto_0
.end method

.method private toUriInner(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p1, "uri"    # Ljava/lang/StringBuilder;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "defAction"    # Ljava/lang/String;
    .param p4, "defPackage"    # Ljava/lang/String;
    .param p5, "flags"    # I

    .prologue
    const/16 v8, 0x3b

    .line 7602
    if-eqz p2, :cond_0

    .line 7603
    const-string v5, "scheme="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7605
    :cond_0
    iget-object v5, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 7606
    const-string v5, "action="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7608
    :cond_1
    iget-object v5, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v5, :cond_2

    .line 7609
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 7610
    const-string v5, "category="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7609
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7613
    .end local v1    # "i":I
    :cond_2
    iget-object v5, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 7614
    const-string v5, "type="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    const-string v7, "/"

    invoke-static {v6, v7}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7616
    :cond_3
    iget v5, p0, Landroid/content/Intent;->mFlags:I

    if-eqz v5, :cond_4

    .line 7617
    const-string v5, "launchFlags=0x"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/content/Intent;->mFlags:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7619
    :cond_4
    iget-object v5, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {v5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 7620
    const-string v5, "package="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7622
    :cond_5
    iget-object v5, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v5, :cond_6

    .line 7623
    const-string v5, "component="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    invoke-static {v6, v7}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7626
    :cond_6
    iget-object v5, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v5, :cond_7

    .line 7627
    const-string v5, "sourceBounds="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7631
    :cond_7
    iget-object v5, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v5, :cond_12

    .line 7632
    iget-object v5, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 7633
    .local v3, "key":Ljava/lang/String;
    iget-object v5, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 7634
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_9

    const/16 v0, 0x53

    .line 7646
    .local v0, "entryType":C
    :goto_2
    if-eqz v0, :cond_8

    .line 7647
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7648
    const/16 v5, 0x2e

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7649
    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7650
    const/16 v5, 0x3d

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7651
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7652
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 7634
    .end local v0    # "entryType":C
    :cond_9
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_a

    const/16 v0, 0x42

    goto :goto_2

    :cond_a
    instance-of v5, v4, Ljava/lang/Byte;

    if-eqz v5, :cond_b

    const/16 v0, 0x62

    goto :goto_2

    :cond_b
    instance-of v5, v4, Ljava/lang/Character;

    if-eqz v5, :cond_c

    const/16 v0, 0x63

    goto :goto_2

    :cond_c
    instance-of v5, v4, Ljava/lang/Double;

    if-eqz v5, :cond_d

    const/16 v0, 0x64

    goto :goto_2

    :cond_d
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_e

    const/16 v0, 0x66

    goto :goto_2

    :cond_e
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_f

    const/16 v0, 0x69

    goto :goto_2

    :cond_f
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_10

    const/16 v0, 0x6c

    goto :goto_2

    :cond_10
    instance-of v5, v4, Ljava/lang/Short;

    if-eqz v5, :cond_11

    const/16 v0, 0x73

    goto :goto_2

    :cond_11
    const/4 v0, 0x0

    goto :goto_2

    .line 7656
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_12
    return-void
.end method


# virtual methods
.method public addCategory(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 5996
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 5997
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 5999
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 6000
    return-object p0
.end method

.method public addFlags(I)Landroid/content/Intent;
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 6912
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/content/Intent;->mFlags:I

    .line 6913
    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4300
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public cloneFilter()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 4320
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;Z)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 7659
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->describeContents()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fillIn(Landroid/content/Intent;I)I
    .locals 7
    .param p1, "other"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .prologue
    const/4 v6, -0x2

    .line 7155
    const/4 v0, 0x0

    .line 7156
    .local v0, "changes":I
    const/4 v2, 0x0

    .line 7157
    .local v2, "mayHaveCopiedUris":Z
    iget-object v4, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v4, :cond_0

    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_1

    .line 7159
    :cond_0
    iget-object v4, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    iput-object v4, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 7160
    or-int/lit8 v0, v0, 0x1

    .line 7162
    :cond_1
    iget-object v4, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-nez v4, :cond_2

    iget-object v4, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v4, :cond_5

    :cond_2
    iget-object v4, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v4, :cond_4

    :cond_3
    and-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_5

    .line 7165
    :cond_4
    iget-object v4, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iput-object v4, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 7166
    iget-object v4, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    iput-object v4, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 7167
    or-int/lit8 v0, v0, 0x2

    .line 7168
    const/4 v2, 0x1

    .line 7170
    :cond_5
    iget-object v4, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v4, :cond_8

    iget-object v4, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v4, :cond_6

    and-int/lit8 v4, p2, 0x4

    if-eqz v4, :cond_8

    .line 7172
    :cond_6
    iget-object v4, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v4, :cond_7

    .line 7173
    new-instance v4, Landroid/util/ArraySet;

    iget-object v5, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v4, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 7175
    :cond_7
    or-int/lit8 v0, v0, 0x4

    .line 7177
    :cond_8
    iget-object v4, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v4, :cond_a

    iget-object v4, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v4, :cond_9

    and-int/lit8 v4, p2, 0x10

    if-eqz v4, :cond_a

    .line 7180
    :cond_9
    iget-object v4, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-nez v4, :cond_a

    .line 7181
    iget-object v4, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    iput-object v4, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 7182
    or-int/lit8 v0, v0, 0x10

    .line 7187
    :cond_a
    iget-object v4, p1, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v4, :cond_b

    and-int/lit8 v4, p2, 0x40

    if-eqz v4, :cond_b

    .line 7188
    iget-object v4, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-nez v4, :cond_b

    .line 7189
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p1, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v4, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    .line 7190
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 7191
    or-int/lit8 v0, v0, 0x40

    .line 7194
    :cond_b
    iget-object v4, p1, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v4, :cond_d

    iget-object v4, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v4, :cond_c

    and-int/lit16 v4, p2, 0x80

    if-eqz v4, :cond_d

    .line 7196
    :cond_c
    iget-object v4, p1, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    iput-object v4, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    .line 7197
    or-int/lit16 v0, v0, 0x80

    .line 7198
    const/4 v2, 0x1

    .line 7203
    :cond_d
    iget-object v4, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_e

    and-int/lit8 v4, p2, 0x8

    if-eqz v4, :cond_e

    .line 7204
    iget-object v4, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    iput-object v4, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 7205
    or-int/lit8 v0, v0, 0x8

    .line 7207
    :cond_e
    iget v4, p0, Landroid/content/Intent;->mFlags:I

    iget v5, p1, Landroid/content/Intent;->mFlags:I

    or-int/2addr v4, v5

    iput v4, p0, Landroid/content/Intent;->mFlags:I

    .line 7208
    iget-object v4, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_10

    iget-object v4, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_f

    and-int/lit8 v4, p2, 0x20

    if-eqz v4, :cond_10

    .line 7210
    :cond_f
    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v4, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    .line 7211
    or-int/lit8 v0, v0, 0x20

    .line 7213
    :cond_10
    iget-object v4, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v4, :cond_13

    .line 7214
    iget-object v4, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v4, :cond_11

    .line 7215
    new-instance v4, Landroid/os/Bundle;

    iget-object v5, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v4, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 7216
    const/4 v2, 0x1

    .line 7233
    :cond_11
    :goto_0
    if-eqz v2, :cond_12

    iget v4, p0, Landroid/content/Intent;->mContentUserHint:I

    if-ne v4, v6, :cond_12

    iget v4, p1, Landroid/content/Intent;->mContentUserHint:I

    if-eq v4, v6, :cond_12

    .line 7235
    iget v4, p1, Landroid/content/Intent;->mContentUserHint:I

    iput v4, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 7237
    :cond_12
    return v0

    .line 7218
    :cond_13
    iget-object v4, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v4, :cond_11

    .line 7220
    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    iget-object v4, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 7221
    .local v3, "newb":Landroid/os/Bundle;
    iget-object v4, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 7222
    iput-object v3, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7223
    const/4 v2, 0x1

    goto :goto_0

    .line 7224
    .end local v3    # "newb":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 7230
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v4, "Intent"

    const-string v5, "Failure filling in extras"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public filterEquals(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "other"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 7293
    if-nez p1, :cond_1

    .line 7304
    :cond_0
    :goto_0
    return v0

    .line 7296
    :cond_1
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7297
    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iget-object v2, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7298
    iget-object v1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7299
    iget-object v1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7300
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7301
    iget-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    iget-object v2, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7302
    iget v1, p0, Landroid/content/Intent;->mdataId:I

    iget v2, p1, Landroid/content/Intent;->mdataId:I

    if-ne v1, v2, :cond_0

    .line 7304
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public filterHashCode()I
    .locals 2

    .prologue
    .line 7316
    const/4 v0, 0x0

    .line 7317
    .local v0, "code":I
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7318
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7320
    :cond_0
    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 7321
    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7323
    :cond_1
    iget-object v1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 7324
    iget-object v1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7326
    :cond_2
    iget-object v1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 7327
    iget-object v1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7329
    :cond_3
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_4

    .line 7330
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7332
    :cond_4
    iget-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v1, :cond_5

    .line 7333
    iget-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7335
    :cond_5
    return v0
.end method

.method public fixUris(I)V
    .locals 9
    .param p1, "contentUserHint"    # I

    .prologue
    .line 7978
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 7979
    .local v1, "data":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 7980
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 7982
    :cond_0
    iget-object v7, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v7, :cond_1

    .line 7983
    iget-object v7, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v7, p1}, Landroid/content/ClipData;->fixUris(I)V

    .line 7985
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 7986
    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.intent.action.SEND"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 7987
    const-string v7, "android.intent.extra.STREAM"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 7988
    .local v5, "stream":Landroid/net/Uri;
    if-eqz v5, :cond_2

    .line 7989
    const-string v7, "android.intent.extra.STREAM"

    invoke-static {v5, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 8008
    .end local v5    # "stream":Landroid/net/Uri;
    :cond_2
    :goto_0
    return-void

    .line 7991
    :cond_3
    const-string v7, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 7992
    const-string v7, "android.intent.extra.STREAM"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 7993
    .local v6, "streams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v6, :cond_2

    .line 7994
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7995
    .local v3, "newStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_4

    .line 7996
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    invoke-static {v7, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7995
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7998
    :cond_4
    const-string v7, "android.intent.extra.STREAM"

    invoke-virtual {p0, v7, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_0

    .line 8000
    .end local v2    # "i":I
    .end local v3    # "newStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v6    # "streams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_5
    const-string v7, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 8003
    :cond_6
    const-string v7, "output"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 8004
    .local v4, "output":Landroid/net/Uri;
    if-eqz v4, :cond_2

    .line 8005
    const-string v7, "output"

    invoke-static {v4, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4907
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getBooleanArrayExtra(Ljava/lang/String;)[Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5401
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    goto :goto_0
.end method

.method public getBooleanExtra(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 5141
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0
.end method

.method public getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5541
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public getByteArrayExtra(Ljava/lang/String;)[B
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5415
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getByteExtra(Ljava/lang/String;B)B
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # B

    .prologue
    .line 5158
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .end local p2    # "defaultValue":B
    :goto_0
    return p2

    .restart local p2    # "defaultValue":B
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    goto :goto_0
.end method

.method public getCategories()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5047
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getCharArrayExtra(Ljava/lang/String;)[C
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5443
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharArray(Ljava/lang/String;)[C

    move-result-object v0

    goto :goto_0
.end method

.method public getCharExtra(Ljava/lang/String;C)C
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # C

    .prologue
    .line 5192
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .end local p2    # "defaultValue":C
    :goto_0
    return p2

    .restart local p2    # "defaultValue":C
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getChar(Ljava/lang/String;C)C

    move-result p2

    goto :goto_0
.end method

.method public getCharSequenceArrayExtra(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5527
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5387
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5289
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getClipData()Landroid/content/ClipData;
    .locals 1

    .prologue
    .line 5067
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 5647
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getContentUserHint()I
    .locals 1

    .prologue
    .line 5072
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    return v0
.end method

.method public getData()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 4922
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    return-object v0
.end method

.method public getDataString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4930
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDoubleArrayExtra(Ljava/lang/String;)[D
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5499
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    goto :goto_0
.end method

.method public getDoubleExtra(Ljava/lang/String;D)D
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 5260
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .end local p2    # "defaultValue":D
    :goto_0
    return-wide p2

    .restart local p2    # "defaultValue":D
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide p2

    goto :goto_0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5125
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5579
    move-object v0, p2

    .line 5580
    .local v0, "result":Ljava/lang/Object;
    iget-object v2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 5581
    iget-object v2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 5582
    .local v1, "result2":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 5583
    move-object v0, v1

    .line 5587
    .end local v1    # "result2":Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 5597
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 5612
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    return v0
.end method

.method public getFloatArrayExtra(Ljava/lang/String;)[F
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5485
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    goto :goto_0
.end method

.method public getFloatExtra(Ljava/lang/String;F)F
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .prologue
    .line 5243
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .end local p2    # "defaultValue":F
    :goto_0
    return p2

    .restart local p2    # "defaultValue":F
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p2

    goto :goto_0
.end method

.method public getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5559
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public getIntArrayExtra(Ljava/lang/String;)[I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5457
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    goto :goto_0
.end method

.method public getIntExtra(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 5209
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .restart local p2    # "defaultValue":I
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_0
.end method

.method public getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5359
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getLongArrayExtra(Ljava/lang/String;)[J
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5471
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    goto :goto_0
.end method

.method public getLongExtra(Ljava/lang/String;J)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 5226
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .restart local p2    # "defaultValue":J
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    goto :goto_0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5632
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5317
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_0
.end method

.method public getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5331
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 5303
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4946
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 5057
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    return-object v0
.end method

.method public getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5345
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    goto :goto_0
.end method

.method public getShortArrayExtra(Ljava/lang/String;)[S
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5429
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getShortArray(Ljava/lang/String;)[S

    move-result-object v0

    goto :goto_0
.end method

.method public getShortExtra(Ljava/lang/String;S)S
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # S

    .prologue
    .line 5175
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .end local p2    # "defaultValue":S
    :goto_0
    return p2

    .restart local p2    # "defaultValue":S
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getShort(Ljava/lang/String;S)S

    move-result p2

    goto :goto_0
.end method

.method public getSourceBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 5656
    iget-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5513
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5373
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5275
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4960
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public hasCategory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 5034
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExtra(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5094
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFileDescriptors()Z
    .locals 1

    .prologue
    .line 5102
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDocument()Z
    .locals 2

    .prologue
    const/high16 v1, 0x80000

    .line 8137
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExcludingStopped()Z
    .locals 2

    .prologue
    .line 5617
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public migrateExtraStreamToClipData()Z
    .locals 22

    .prologue
    .line 8020
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/Bundle;->isParcelled()Z

    move-result v18

    if-eqz v18, :cond_1

    const/4 v11, 0x0

    .line 8124
    :cond_0
    :goto_0
    return v11

    .line 8023
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v18

    if-eqz v18, :cond_2

    const/4 v11, 0x0

    goto :goto_0

    .line 8025
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 8026
    .local v3, "action":Ljava/lang/String;
    const-string v18, "android.intent.action.CHOOSER"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 8032
    const/4 v11, 0x0

    .line 8034
    .local v11, "migrated":Z
    :try_start_0
    const-string v18, "android.intent.extra.INTENT"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 8035
    .local v9, "intent":Landroid/content/Intent;
    if-eqz v9, :cond_3

    .line 8036
    invoke-virtual {v9}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v18

    or-int v11, v11, v18

    .line 8041
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_1
    :try_start_1
    const-string v18, "android.intent.extra.INITIAL_INTENTS"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v10

    .line 8042
    .local v10, "intents":[Landroid/os/Parcelable;
    if-eqz v10, :cond_0

    .line 8043
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    array-length v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_0

    .line 8044
    aget-object v9, v10, v8

    check-cast v9, Landroid/content/Intent;

    .line 8045
    .restart local v9    # "intent":Landroid/content/Intent;
    if-eqz v9, :cond_4

    .line 8046
    invoke-virtual {v9}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v18

    or-int v11, v11, v18

    .line 8043
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 8054
    .end local v8    # "i":I
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "intents":[Landroid/os/Parcelable;
    .end local v11    # "migrated":Z
    :cond_5
    const-string v18, "android.intent.action.SEND"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 8056
    :try_start_2
    const-string v18, "android.intent.extra.STREAM"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/net/Uri;

    .line 8057
    .local v14, "stream":Landroid/net/Uri;
    const-string v18, "android.intent.extra.TEXT"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 8058
    .local v16, "text":Ljava/lang/CharSequence;
    const-string v18, "android.intent.extra.HTML_TEXT"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 8059
    .local v6, "htmlText":Ljava/lang/String;
    if-nez v14, :cond_6

    if-nez v16, :cond_6

    if-eqz v6, :cond_10

    .line 8060
    :cond_6
    new-instance v4, Landroid/content/ClipData;

    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    new-instance v20, Landroid/content/ClipData$Item;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v6, v2, v14}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v4, v0, v1, v2}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 8063
    .local v4, "clipData":Landroid/content/ClipData;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 8064
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .line 8065
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 8070
    .end local v4    # "clipData":Landroid/content/ClipData;
    .end local v6    # "htmlText":Ljava/lang/String;
    .end local v14    # "stream":Landroid/net/Uri;
    .end local v16    # "text":Ljava/lang/CharSequence;
    :cond_7
    const-string v18, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 8072
    :try_start_3
    const-string v18, "android.intent.extra.STREAM"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 8073
    .local v15, "streams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v18, "android.intent.extra.TEXT"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 8074
    .local v17, "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const-string v18, "android.intent.extra.HTML_TEXT"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 8075
    .local v7, "htmlTexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, -0x1

    .line 8076
    .local v12, "num":I
    if-eqz v15, :cond_8

    .line 8077
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 8079
    :cond_8
    if-eqz v17, :cond_a

    .line 8080
    if-ltz v12, :cond_9

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-eq v12, v0, :cond_9

    .line 8082
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 8084
    :cond_9
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 8086
    :cond_a
    if-eqz v7, :cond_c

    .line 8087
    if-ltz v12, :cond_b

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-eq v12, v0, :cond_b

    .line 8089
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 8091
    :cond_b
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 8093
    :cond_c
    if-lez v12, :cond_10

    .line 8094
    new-instance v4, Landroid/content/ClipData;

    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v15, v0, v7, v1}, Landroid/content/Intent;->makeClipItem(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Landroid/content/ClipData$Item;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v4, v0, v1, v2}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 8098
    .restart local v4    # "clipData":Landroid/content/ClipData;
    const/4 v8, 0x1

    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v12, :cond_d

    .line 8099
    move-object/from16 v0, v17

    invoke-static {v15, v0, v7, v8}, Landroid/content/Intent;->makeClipItem(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Landroid/content/ClipData$Item;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 8098
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 8102
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 8103
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1

    .line 8104
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 8108
    .end local v4    # "clipData":Landroid/content/ClipData;
    .end local v7    # "htmlTexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "i":I
    .end local v12    # "num":I
    .end local v15    # "streams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v17    # "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_e
    const-string v18, "android.media.action.IMAGE_CAPTURE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_f

    const-string v18, "android.media.action.IMAGE_CAPTURE_SECURE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_f

    const-string v18, "android.media.action.VIDEO_CAPTURE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 8113
    :cond_f
    :try_start_4
    const-string v18, "output"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/net/Uri;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_0

    .line 8117
    .local v13, "output":Landroid/net/Uri;
    if-eqz v13, :cond_10

    .line 8118
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-static {v0, v13}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 8119
    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8120
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 8114
    .end local v13    # "output":Landroid/net/Uri;
    :catch_0
    move-exception v5

    .line 8115
    .local v5, "e":Ljava/lang/ClassCastException;
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 8106
    .end local v5    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v18

    .line 8124
    :cond_10
    :goto_4
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 8067
    :catch_2
    move-exception v18

    goto :goto_4

    .line 8050
    .restart local v11    # "migrated":Z
    :catch_3
    move-exception v18

    goto/16 :goto_0

    .line 8038
    :catch_4
    move-exception v18

    goto/16 :goto_1
.end method

.method public prepareToEnterProcess()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 7966
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    if-eq v0, v2, :cond_0

    .line 7967
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 7968
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    invoke-virtual {p0, v0}, Landroid/content/Intent;->fixUris(I)V

    .line 7969
    iput v2, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 7972
    :cond_0
    return-void
.end method

.method public prepareToLeaveProcess()V
    .locals 2

    .prologue
    .line 7942
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 7944
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 7945
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 7947
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_1

    .line 7948
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0}, Landroid/content/ClipData;->prepareToLeaveProcess()V

    .line 7951
    :cond_1
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/StrictMode;->vmFileUriExposureEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7954
    const-string v0, "android.intent.action.VIEW"

    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.intent.action.EDIT"

    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.intent.action.ATTACH_DATA"

    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7957
    :cond_2
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    const-string v1, "Intent.getData()"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->checkFileUriExposed(Ljava/lang/String;)V

    .line 7960
    :cond_3
    return-void
.end method

.method public putCharSequenceArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 6464
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6465
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6467
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 6468
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;B)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # B

    .prologue
    .line 6142
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6143
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6145
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 6146
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;C)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # C

    .prologue
    .line 6165
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6166
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6168
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    .line 6169
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;D)Landroid/content/Intent;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 6280
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6281
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6283
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 6284
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;F)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 6257
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6258
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6260
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 6261
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 6211
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6212
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6214
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6215
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 6234
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6235
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6237
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 6238
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Bundle;

    .prologue
    .line 6740
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6741
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6743
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 6744
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/IBinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6767
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6768
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6770
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 6771
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Parcelable;

    .prologue
    .line 6349
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6350
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6352
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6353
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    .prologue
    .line 6487
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6488
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6490
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 6491
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 6326
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6327
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6329
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 6330
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 6303
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6304
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6306
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6307
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;S)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # S

    .prologue
    .line 6188
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6189
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6191
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 6192
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 6119
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6120
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6122
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6123
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 6533
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6534
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6536
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 6537
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[C)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [C

    .prologue
    .line 6579
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6580
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6582
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    .line 6583
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[D)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [D

    .prologue
    .line 6671
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6672
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6674
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 6675
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[F)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [F

    .prologue
    .line 6648
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6649
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6651
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 6652
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[I)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [I

    .prologue
    .line 6602
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6603
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6605
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 6606
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[J)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [J

    .prologue
    .line 6625
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6626
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6628
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 6629
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Landroid/os/Parcelable;

    .prologue
    .line 6372
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6373
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6375
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 6376
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/CharSequence;

    .prologue
    .line 6717
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6718
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6720
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6721
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;

    .prologue
    .line 6694
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6695
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6697
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 6698
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[S)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [S

    .prologue
    .line 6556
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6557
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6559
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    .line 6560
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Z

    .prologue
    .line 6510
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6511
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6513
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 6514
    return-object p0
.end method

.method public putExtras(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "src"    # Landroid/content/Intent;

    .prologue
    .line 6782
    iget-object v0, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 6783
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 6784
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6789
    :cond_0
    :goto_0
    return-object p0

    .line 6786
    :cond_1
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    iget-object v1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 6803
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6804
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6806
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 6807
    return-object p0
.end method

.method public putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 6418
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6419
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6421
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 6422
    return-object p0
.end method

.method public putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 6395
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6396
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6398
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 6399
    return-object p0
.end method

.method public putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 6441
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6442
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6444
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 6445
    return-object p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 7721
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7722
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 7723
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 7724
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/Intent;->mFlags:I

    .line 7725
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 7726
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/Intent;->mdataId:I

    .line 7727
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 7728
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 7729
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    .line 7732
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 7733
    .local v0, "N":I
    if-lez v0, :cond_1

    .line 7734
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 7736
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 7737
    iget-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 7736
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7740
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 7743
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 7744
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/os/Parcel;)V

    iput-object v2, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    .line 7747
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 7748
    new-instance v2, Landroid/content/ClipData;

    invoke-direct {v2, p1}, Landroid/content/ClipData;-><init>(Landroid/os/Parcel;)V

    iput-object v2, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    .line 7750
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 7751
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 7752
    return-void
.end method

.method public removeCategory(Ljava/lang/String;)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 6011
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    .line 6012
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 6013
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 6014
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 6017
    :cond_0
    return-void
.end method

.method public removeExtra(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 6840
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 6841
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 6842
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 6843
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6846
    :cond_0
    return-void
.end method

.method public replaceExtras(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "src"    # Landroid/content/Intent;

    .prologue
    .line 6818
    iget-object v0, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6819
    return-object p0

    .line 6818
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 6830
    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6831
    return-object p0

    .line 6830
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 5707
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 5708
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 5719
    :goto_0
    return-object v1

    .line 5711
    :cond_0
    const/high16 v1, 0x10000

    invoke-virtual {p1, p0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 5713
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    .line 5714
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5719
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "flags"    # I

    .prologue
    .line 5739
    const/4 v0, 0x0

    .line 5740
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v2, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_1

    .line 5742
    :try_start_0
    iget-object v2, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v2, p2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 5754
    :cond_0
    :goto_0
    return-object v0

    .line 5747
    :cond_1
    const/high16 v2, 0x10000

    or-int/2addr v2, p2

    invoke-virtual {p1, p0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 5749
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    .line 5750
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    .line 5743
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;
    .locals 8
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "flags"    # I

    .prologue
    .line 5765
    iget-object v5, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v5, :cond_1

    .line 5766
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 5787
    :cond_0
    :goto_0
    return-object v0

    .line 5769
    :cond_1
    invoke-virtual {p1, p0, p2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 5770
    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v3, :cond_2

    .line 5771
    const/4 v0, 0x0

    goto :goto_0

    .line 5773
    :cond_2
    const/4 v0, 0x0

    .line 5774
    .local v0, "comp":Landroid/content/ComponentName;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 5775
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 5776
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_3

    .line 5774
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5779
    :cond_3
    new-instance v1, Landroid/content/ComponentName;

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5781
    .local v1, "foundComp":Landroid/content/ComponentName;
    if-eqz v0, :cond_4

    .line 5782
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Multiple system services handle "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5785
    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method public resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 4993
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4994
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 5001
    :goto_0
    return-object v0

    .line 4996
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 4997
    const-string v0, "content"

    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4998
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5001
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resolveType(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 4975
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 5017
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 5018
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 5020
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 7830
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7831
    const-string v1, "action"

    iget-object v2, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7833
    :cond_0
    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 7834
    const-string v1, "data"

    iget-object v2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7836
    :cond_1
    iget-object v1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 7837
    const-string v1, "type"

    iget-object v2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7839
    :cond_2
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_3

    .line 7840
    const-string v1, "component"

    iget-object v2, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7842
    :cond_3
    const-string v1, "flags"

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7843
    const-string v1, "mdataId"

    iget v2, p0, Landroid/content/Intent;->mdataId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7845
    iget-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v1, :cond_5

    .line 7846
    const-string v1, "categories"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7847
    iget-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "categoryNdx":I
    :goto_0
    if-ltz v0, :cond_4

    .line 7848
    const-string v2, "category"

    iget-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v3, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7847
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7850
    :cond_4
    const-string v1, "categories"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7852
    .end local v0    # "categoryNdx":I
    :cond_5
    return-void
.end method

.method public setAction(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 5802
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 5803
    return-object p0

    .line 5802
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAllowFds(Z)V
    .locals 1
    .param p1, "allowFds"    # Z

    .prologue
    .line 5107
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 5108
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setAllowFds(Z)Z

    .line 5110
    :cond_0
    return-void
.end method

.method public setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 1
    .param p1, "packageContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 7024
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 7025
    return-object p0
.end method

.method public setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "packageContext"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 6985
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 6986
    return-object p0
.end method

.method public setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 7005
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 7006
    return-object p0
.end method

.method public setClipData(Landroid/content/ClipData;)V
    .locals 0
    .param p1, "clip"    # Landroid/content/ClipData;

    .prologue
    .line 6090
    iput-object p1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    .line 6091
    return-void
.end method

.method public setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 0
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 6965
    iput-object p1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 6966
    return-object p0
.end method

.method public setContentUserHint(I)V
    .locals 0
    .param p1, "contentUserHint"    # I

    .prologue
    .line 6100
    iput p1, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 6101
    return-void
.end method

.method public setData(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1
    .param p1, "data"    # Landroid/net/Uri;

    .prologue
    .line 5828
    iput-object p1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 5829
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 5830
    return-object p0
.end method

.method public setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1
    .param p1, "data"    # Landroid/net/Uri;

    .prologue
    .line 5856
    invoke-virtual {p1}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0
    .param p1, "data"    # Landroid/net/Uri;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 5945
    iput-object p1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 5946
    iput-object p2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 5947
    return-object p0
.end method

.method public setDataAndTypeAndNormalize(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "data"    # Landroid/net/Uri;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 5976
    invoke-virtual {p1}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p2}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public setExtrasClassLoader(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 5083
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 5084
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 5086
    :cond_0
    return-void
.end method

.method public setFlags(I)Landroid/content/Intent;
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 6896
    iput p1, p0, Landroid/content/Intent;->mFlags:I

    .line 6897
    return-object p0
.end method

.method public setPackage(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 6933
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 6934
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t set package name when selector is already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6937
    :cond_0
    iput-object p1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 6938
    return-object p0
.end method

.method public setSelector(Landroid/content/Intent;)V
    .locals 2
    .param p1, "selector"    # Landroid/content/Intent;

    .prologue
    .line 6051
    if-ne p1, p0, :cond_0

    .line 6052
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Intent being set as a selector of itself"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6055
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 6056
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t set selector when package name is already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6059
    :cond_1
    iput-object p1, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    .line 6060
    return-void
.end method

.method public setSourceBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 7034
    if-eqz p1, :cond_0

    .line 7035
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    .line 7039
    :goto_0
    return-void

    .line 7037
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public setType(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 5885
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 5886
    iput-object p1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 5887
    return-object p0
.end method

.method public setTypeAndNormalize(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 5916
    invoke-static {p1}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public toInsecureString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7351
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7353
    .local v1, "b":Ljava/lang/StringBuilder;
    const-string v0, "Intent { "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p0

    move v4, v3

    move v5, v2

    .line 7354
    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 7355
    const-string v0, " }"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7357
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toInsecureStringWithClip()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 7362
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7364
    .local v1, "b":Ljava/lang/StringBuilder;
    const-string v0, "Intent { "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7365
    const/4 v2, 0x0

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 7366
    const-string v0, " }"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7368
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toShortString(ZZZZ)Ljava/lang/String;
    .locals 6
    .param p1, "secure"    # Z
    .param p2, "comp"    # Z
    .param p3, "extras"    # Z
    .param p4, "clip"    # Z

    .prologue
    .line 7373
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v1, "b":Ljava/lang/StringBuilder;
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 7374
    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 7375
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toShortString(Ljava/lang/StringBuilder;ZZZZ)V
    .locals 8
    .param p1, "b"    # Ljava/lang/StringBuilder;
    .param p2, "secure"    # Z
    .param p3, "comp"    # Z
    .param p4, "extras"    # Z
    .param p5, "clip"    # Z

    .prologue
    const/16 v2, 0x20

    .line 7381
    const/4 v6, 0x1

    .line 7382
    .local v6, "first":Z
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 7383
    const-string v0, "act="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7384
    const/4 v6, 0x0

    .line 7386
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_4

    .line 7387
    if-nez v6, :cond_1

    .line 7388
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7390
    :cond_1
    const/4 v6, 0x0

    .line 7391
    const-string v0, "cat=["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7392
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 7393
    if-lez v7, :cond_2

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7394
    :cond_2
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7392
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 7396
    :cond_3
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7398
    .end local v7    # "i":I
    :cond_4
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_6

    .line 7399
    if-nez v6, :cond_5

    .line 7400
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7402
    :cond_5
    const/4 v6, 0x0

    .line 7403
    const-string v0, "dat="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7404
    if-eqz p2, :cond_18

    .line 7405
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7410
    :cond_6
    :goto_1
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 7411
    if-nez v6, :cond_7

    .line 7412
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7414
    :cond_7
    const/4 v6, 0x0

    .line 7415
    const-string v0, "typ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7417
    :cond_8
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    if-eqz v0, :cond_a

    .line 7418
    if-nez v6, :cond_9

    .line 7419
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7421
    :cond_9
    const/4 v6, 0x0

    .line 7422
    const-string v0, "flg=0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/Intent;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7424
    :cond_a
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 7425
    if-nez v6, :cond_b

    .line 7426
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7428
    :cond_b
    const/4 v6, 0x0

    .line 7429
    const-string v0, "pkg="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7431
    :cond_c
    if-eqz p3, :cond_e

    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_e

    .line 7432
    if-nez v6, :cond_d

    .line 7433
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7435
    :cond_d
    const/4 v6, 0x0

    .line 7436
    const-string v0, "cmp="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7438
    :cond_e
    iget-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_10

    .line 7439
    if-nez v6, :cond_f

    .line 7440
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7442
    :cond_f
    const/4 v6, 0x0

    .line 7443
    const-string v0, "bnds="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7445
    :cond_10
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_12

    .line 7446
    if-nez v6, :cond_11

    .line 7447
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7449
    :cond_11
    const/4 v6, 0x0

    .line 7450
    if-eqz p5, :cond_19

    .line 7451
    const-string v0, "clip={"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7452
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0, p1}, Landroid/content/ClipData;->toShortString(Ljava/lang/StringBuilder;)V

    .line 7453
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7458
    :cond_12
    :goto_2
    if-eqz p4, :cond_14

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_14

    .line 7459
    if-nez v6, :cond_13

    .line 7460
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7462
    :cond_13
    const/4 v6, 0x0

    .line 7463
    const-string v0, "(has extras)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7465
    :cond_14
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_16

    .line 7466
    if-nez v6, :cond_15

    .line 7467
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7469
    :cond_15
    const/4 v6, 0x0

    .line 7470
    const-string v0, "u="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/Intent;->mContentUserHint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7472
    :cond_16
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v0, :cond_17

    .line 7473
    const-string v0, " sel="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7474
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 7475
    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7477
    :cond_17
    return-void

    .line 7407
    :cond_18
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 7455
    :cond_19
    const-string v0, "(has clip)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 7340
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7342
    .local v1, "b":Ljava/lang/StringBuilder;
    const-string v0, "Intent { "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7343
    const/4 v5, 0x0

    move-object v0, p0

    move v3, v2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 7344
    const-string v0, " }"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7346
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURI()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7485
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUri(I)Ljava/lang/String;
    .locals 15
    .param p1, "flags"    # I

    .prologue
    .line 7505
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7506
    .local v1, "uri":Ljava/lang/StringBuilder;
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_5

    .line 7507
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 7508
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Intent must include an explicit package name to build an android-app: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7512
    :cond_0
    const-string v0, "android-app://"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7513
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7514
    const/4 v2, 0x0

    .line 7515
    .local v2, "scheme":Ljava/lang/String;
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_3

    .line 7516
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 7517
    if-eqz v2, :cond_3

    .line 7518
    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7519
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7520
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v7

    .line 7521
    .local v7, "authority":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 7522
    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7523
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7524
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v12

    .line 7525
    .local v12, "path":Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 7526
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7528
    :cond_1
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v13

    .line 7529
    .local v13, "queryParams":Ljava/lang/String;
    if-eqz v13, :cond_2

    .line 7530
    const/16 v0, 0x3f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7531
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7533
    :cond_2
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v10

    .line 7534
    .local v10, "fragment":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 7535
    const/16 v0, 0x23

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7536
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v7    # "authority":Ljava/lang/String;
    .end local v10    # "fragment":Ljava/lang/String;
    .end local v12    # "path":Ljava/lang/String;
    .end local v13    # "queryParams":Ljava/lang/String;
    :cond_3
    move-object v14, v2

    .line 7541
    .end local v2    # "scheme":Ljava/lang/String;
    .local v14, "scheme":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v14, :cond_4

    const-string v3, "android.intent.action.MAIN"

    :goto_0
    iget-object v4, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    move-object v0, p0

    move/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/content/Intent;->toUriFragment(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 7543
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v14

    .line 7576
    .end local v14    # "scheme":Ljava/lang/String;
    .restart local v2    # "scheme":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 7541
    .end local v2    # "scheme":Ljava/lang/String;
    .restart local v14    # "scheme":Ljava/lang/String;
    :cond_4
    const-string v3, "android.intent.action.VIEW"

    goto :goto_0

    .line 7545
    .end local v14    # "scheme":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    .line 7546
    .restart local v2    # "scheme":Ljava/lang/String;
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_c

    .line 7547
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    .line 7548
    .local v9, "data":Ljava/lang/String;
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_a

    .line 7549
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    .line 7550
    .local v6, "N":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v6, :cond_a

    .line 7551
    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 7552
    .local v8, "c":C
    const/16 v0, 0x61

    if-lt v8, v0, :cond_6

    const/16 v0, 0x7a

    if-le v8, v0, :cond_8

    :cond_6
    const/16 v0, 0x41

    if-lt v8, v0, :cond_7

    const/16 v0, 0x5a

    if-le v8, v0, :cond_8

    :cond_7
    const/16 v0, 0x2e

    if-eq v8, v0, :cond_8

    const/16 v0, 0x2d

    if-ne v8, v0, :cond_9

    .line 7550
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 7556
    :cond_9
    const/16 v0, 0x3a

    if-ne v8, v0, :cond_a

    if-lez v11, :cond_a

    .line 7558
    const/4 v0, 0x0

    invoke-virtual {v9, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 7559
    const-string v0, "intent:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7560
    add-int/lit8 v0, v11, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 7568
    .end local v6    # "N":I
    .end local v8    # "c":C
    .end local v11    # "i":I
    :cond_a
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7574
    .end local v9    # "data":Ljava/lang/String;
    :cond_b
    :goto_3
    const-string v3, "android.intent.action.VIEW"

    const/4 v4, 0x0

    move-object v0, p0

    move/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/content/Intent;->toUriFragment(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 7576
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 7570
    :cond_c
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_b

    .line 7571
    const-string v0, "intent:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7663
    iget-object v2, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7664
    iget-object v2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-static {p1, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 7665
    iget-object v2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7666
    iget v2, p0, Landroid/content/Intent;->mFlags:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7667
    iget-object v2, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7668
    iget v2, p0, Landroid/content/Intent;->mdataId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7669
    iget-object v2, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-static {v2, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 7671
    iget-object v2, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    .line 7672
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7673
    iget-object v2, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7678
    :goto_0
    iget-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v2, :cond_1

    .line 7679
    iget-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 7680
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7681
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 7682
    iget-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7681
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7675
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 7685
    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7688
    :cond_2
    iget-object v2, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v2, :cond_3

    .line 7689
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7690
    iget-object v2, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7695
    :goto_2
    iget-object v2, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v2, :cond_4

    .line 7696
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7697
    iget-object v2, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v2, p1, p2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7701
    :goto_3
    iget v2, p0, Landroid/content/Intent;->mContentUserHint:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7702
    iget-object v2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 7703
    return-void

    .line 7692
    :cond_3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 7699
    :cond_4
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3
.end method
