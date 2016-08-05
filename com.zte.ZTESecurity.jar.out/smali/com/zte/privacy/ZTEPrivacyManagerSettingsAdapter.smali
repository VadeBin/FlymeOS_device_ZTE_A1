.class public Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;
.super Ljava/lang/Object;
.source "ZTEPrivacyManagerSettingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final ANTI_PHONE_ID:Ljava/lang/String; = "_id"

.field private static final ANTI_PHONE_SETTING:Ljava/lang/String; = "setting"

.field private static final APP_LOCK_ID:Ljava/lang/String; = "_id"

.field private static final APP_LOCK_NAME:Ljava/lang/String; = "name"

.field private static final DATABASE_NAME:Ljava/lang/String; = "privacy.db"

.field private static final DATABASE_VERSION:I = 0x6

.field private static final PERMISSION_ACCESS_COARSE_LOCATION:Ljava/lang/String; = "access_coarse_location"

.field private static final PERMISSION_ACCESS_FINE_LOCATION:Ljava/lang/String; = "access_fine_location"

.field private static final PERMISSION_ACCESS_INTERNET:Ljava/lang/String; = "access_internet"

.field private static final PERMISSION_BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field private static final PERMISSION_CALL_PHONE:Ljava/lang/String; = "call_phone"

.field private static final PERMISSION_CAMERA:Ljava/lang/String; = "camera"

.field private static final PERMISSION_CHANG_NET_STATE:Ljava/lang/String; = "change_net_state"

.field private static final PERMISSION_CHANG_WIFI_STATE:Ljava/lang/String; = "change_wifi_state"

.field private static final PERMISSION_ID:Ljava/lang/String; = "_id"

.field private static final PERMISSION_NAME:Ljava/lang/String; = "name"

.field private static final PERMISSION_READ_CALENDAR:Ljava/lang/String; = "read_calendar"

.field private static final PERMISSION_READ_CALL_LOG:Ljava/lang/String; = "read_call_log"

.field private static final PERMISSION_READ_CONTACTS:Ljava/lang/String; = "read_contacts"

.field private static final PERMISSION_READ_PHONE_STATE:Ljava/lang/String; = "read_phone_state"

.field private static final PERMISSION_READ_SMS:Ljava/lang/String; = "read_sms"

.field private static final PERMISSION_RECEIVE_MMS:Ljava/lang/String; = "receive_mms"

.field private static final PERMISSION_RECEIVE_SMS:Ljava/lang/String; = "receive_sms"

.field private static final PERMISSION_RECEIVE_WAP_PUSH:Ljava/lang/String; = "receive_wap_push"

.field private static final PERMISSION_RECORD_AUDIO:Ljava/lang/String; = "record_audio"

.field private static final PERMISSION_SEND_MMS:Ljava/lang/String; = "send_mms"

.field private static final PERMISSION_SEND_SMS:Ljava/lang/String; = "send_sms"

.field private static final PERMISSION_UID:Ljava/lang/String; = "uid"

.field private static final PERMISSION_WRITE_CALENDAR:Ljava/lang/String; = "write_calendar"

.field private static final PERMISSION_WRITE_CALL_LOG:Ljava/lang/String; = "write_call_log"

.field private static final PERMISSION_WRITE_CONTACTS:Ljava/lang/String; = "write_contacts"

.field private static final PERMISSION_WRITE_SMS:Ljava/lang/String; = "write_sms"

.field private static final TABLE_ANTI_PHONE_RECORDING:Ljava/lang/String; = "antiPhoneRecording"

.field private static final TABLE_APP_LOCK_SETTING:Ljava/lang/String; = "appLockSetting"

.field private static final TABLE_PERMISSION_SETTING:Ljava/lang/String; = "permissionSetting"

.field private static final TAG:Ljava/lang/String; = "PermissionSettingsAdapter"


# instance fields
.field private final ANTI_PHONE_ALL_PROJECTION:[Ljava/lang/String;

.field private final APP_LOCK_ALL_PROJECTION:[Ljava/lang/String;

.field private final PERMISSION_ALL_PROJECTION:[Ljava/lang/String;

.field private final mCtx:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter$DatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "uid"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "send_sms"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "call_phone"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "write_contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "read_contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "read_sms"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "write_sms"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "receive_sms"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "receive_mms"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "receive_wap_push"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "read_phone_state"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "access_fine_location"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "access_coarse_location"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "access_internet"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "read_calendar"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "write_calendar"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "read_call_log"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "write_call_log"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "record_audio"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "bluetooth"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "change_net_state"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "change_wifi_state"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "camera"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "send_mms"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->PERMISSION_ALL_PROJECTION:[Ljava/lang/String;

    .line 66
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->APP_LOCK_ALL_PROJECTION:[Ljava/lang/String;

    .line 71
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "setting"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->ANTI_PHONE_ALL_PROJECTION:[Ljava/lang/String;

    .line 146
    iput-object p1, p0, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->mCtx:Landroid/content/Context;

    .line 147
    new-instance v0, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter$DatabaseHelper;

    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->mCtx:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter$DatabaseHelper;-><init>(Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->mDbHelper:Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter$DatabaseHelper;

    .line 148
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->mDbHelper:Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 149
    return-void
.end method

.method private addPackagePermissionSetting(Lcom/zte/privacy/ZTEPackagePermissionSetting;)V
    .locals 4
    .param p1, "setting"    # Lcom/zte/privacy/ZTEPackagePermissionSetting;

    .prologue
    .line 194
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 195
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v1, "name"

    iget-object v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v1, "uid"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    const-string v1, "send_sms"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->send_sms:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 198
    const-string v1, "call_phone"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->call_phone:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 199
    const-string v1, "write_contacts"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_contacts:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 200
    const-string v1, "read_contacts"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_contacts:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 201
    const-string v1, "read_sms"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_sms:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 202
    const-string v1, "write_sms"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_sms:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 203
    const-string v1, "receive_sms"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_sms:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 204
    const-string v1, "receive_mms"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_mms:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    const-string v1, "receive_wap_push"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_wap_push:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    const-string v1, "read_phone_state"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_phone_state:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 207
    const-string v1, "access_fine_location"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_fine_location:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 208
    const-string v1, "access_coarse_location"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_coarse_location:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 209
    const-string v1, "access_internet"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_internet:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 210
    const-string v1, "read_calendar"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_calendar:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 211
    const-string v1, "write_calendar"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_calendar:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 212
    const-string v1, "read_call_log"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_calllog:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 213
    const-string v1, "write_call_log"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_calllog:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 214
    const-string v1, "record_audio"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->record_audio:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    const-string v1, "bluetooth"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->bluetooth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 216
    const-string v1, "change_net_state"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->change_net_state:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 217
    const-string v1, "change_wifi_state"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->change_wifi_state:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 218
    const-string v1, "camera"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->camera:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 219
    const-string v1, "send_mms"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->send_mms:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "permissionSetting"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 221
    return-void
.end method

.method private updatePackagePermissionSetting(Lcom/zte/privacy/ZTEPackagePermissionSetting;I)V
    .locals 5
    .param p1, "setting"    # Lcom/zte/privacy/ZTEPackagePermissionSetting;
    .param p2, "rowId"    # I

    .prologue
    .line 224
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 225
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v1, "send_sms"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->send_sms:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 226
    const-string v1, "call_phone"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->call_phone:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 227
    const-string v1, "write_contacts"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_contacts:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 228
    const-string v1, "read_contacts"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_contacts:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 229
    const-string v1, "read_sms"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_sms:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 230
    const-string v1, "write_sms"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_sms:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 231
    const-string v1, "receive_sms"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_sms:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 232
    const-string v1, "receive_mms"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_mms:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 233
    const-string v1, "receive_wap_push"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_wap_push:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 234
    const-string v1, "read_phone_state"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_phone_state:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 235
    const-string v1, "access_fine_location"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_fine_location:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    const-string v1, "access_coarse_location"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_coarse_location:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 237
    const-string v1, "access_internet"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_internet:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    const-string v1, "read_calendar"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_calendar:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 239
    const-string v1, "write_calendar"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_calendar:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 240
    const-string v1, "read_call_log"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_calllog:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 241
    const-string v1, "write_call_log"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_calllog:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 242
    const-string v1, "record_audio"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->record_audio:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 243
    const-string v1, "bluetooth"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->bluetooth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 244
    const-string v1, "change_net_state"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->change_net_state:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 245
    const-string v1, "change_wifi_state"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->change_wifi_state:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    const-string v1, "camera"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->camera:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 247
    const-string v1, "send_mms"

    iget v2, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->send_mms:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 248
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "permissionSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 249
    return-void
.end method


# virtual methods
.method public addLockedPackage(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 281
    const-string v1, "PermissionSettingsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addLockedPackage, pkgName is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 283
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "appLockSetting"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 285
    return-void
.end method

.method public clearAllLockedPackages()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 293
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "appLockSetting"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 294
    return-void
.end method

.method public clearAllPackagePermissionSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 277
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "permissionSetting"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 278
    return-void
.end method

.method public clearAntiPRSetting()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 336
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "antiPhoneRecording"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 337
    return-void
.end method

.method public deletePackagePermissionSetting(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "permissionSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name= \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 274
    return-void
.end method

.method public getAllLockedPackages()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 297
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v9, "allLockedPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "appLockSetting"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "name"

    aput-object v5, v2, v4

    const-string v7, "name DESC"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 303
    .local v10, "mCursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    const-string v0, "name"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 305
    .local v11, "pkg":Ljava/lang/String;
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 308
    .end local v11    # "pkg":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 310
    return-object v9
.end method

.method public getAntiPRSetting()I
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 340
    const/4 v10, -0x1

    .line 341
    .local v10, "setting":I
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "antiPhoneRecording"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "setting"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 345
    .local v9, "mCursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    const-string v0, "setting"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    goto :goto_0

    .line 349
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 351
    const-string v0, "PermissionSettingsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAntiPRSetting, setting is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return v10

    .line 349
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getPackagePermissionSetting(Ljava/lang/String;)Lcom/zte/privacy/ZTEPackagePermissionSetting;
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 152
    const/4 v9, 0x0

    .line 154
    .local v9, "setting":Lcom/zte/privacy/ZTEPackagePermissionSetting;
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "permissionSetting"

    iget-object v2, p0, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->PERMISSION_ALL_PROJECTION:[Ljava/lang/String;

    const-string v3, "name= ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, "cursor":Landroid/database/Cursor;
    move-object v10, v9

    .line 157
    .end local v9    # "setting":Lcom/zte/privacy/ZTEPackagePermissionSetting;
    .local v10, "setting":Lcom/zte/privacy/ZTEPackagePermissionSetting;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    new-instance v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;

    invoke-direct {v9}, Lcom/zte/privacy/ZTEPackagePermissionSetting;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    .end local v10    # "setting":Lcom/zte/privacy/ZTEPackagePermissionSetting;
    .restart local v9    # "setting":Lcom/zte/privacy/ZTEPackagePermissionSetting;
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->pkgName:Ljava/lang/String;

    .line 160
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->uid:I

    .line 161
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->send_sms:I

    .line 162
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->call_phone:I

    .line 163
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_contacts:I

    .line 164
    const/4 v0, 0x5

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_contacts:I

    .line 165
    const/4 v0, 0x6

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_sms:I

    .line 166
    const/4 v0, 0x7

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_sms:I

    .line 167
    const/16 v0, 0x8

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_sms:I

    .line 168
    const/16 v0, 0x9

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_mms:I

    .line 169
    const/16 v0, 0xa

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_wap_push:I

    .line 170
    const/16 v0, 0xb

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_phone_state:I

    .line 171
    const/16 v0, 0xc

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_fine_location:I

    .line 172
    const/16 v0, 0xd

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_coarse_location:I

    .line 173
    const/16 v0, 0xe

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_internet:I

    .line 174
    const/16 v0, 0xf

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_calendar:I

    .line 175
    const/16 v0, 0x10

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_calendar:I

    .line 176
    const/16 v0, 0x11

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_calllog:I

    .line 177
    const/16 v0, 0x12

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_calllog:I

    .line 178
    const/16 v0, 0x13

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->record_audio:I

    .line 179
    const/16 v0, 0x14

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->bluetooth:I

    .line 180
    const/16 v0, 0x15

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->change_net_state:I

    .line 181
    const/16 v0, 0x16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->change_wifi_state:I

    .line 182
    const/16 v0, 0x17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->camera:I

    .line 183
    const/16 v0, 0x18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/zte/privacy/ZTEPackagePermissionSetting;->send_mms:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v10, v9

    .end local v9    # "setting":Lcom/zte/privacy/ZTEPackagePermissionSetting;
    .restart local v10    # "setting":Lcom/zte/privacy/ZTEPackagePermissionSetting;
    goto/16 :goto_0

    .line 186
    :cond_0
    if-eqz v8, :cond_1

    .line 187
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 190
    :cond_1
    return-object v10

    .line 186
    :catchall_0
    move-exception v0

    move-object v9, v10

    .end local v10    # "setting":Lcom/zte/privacy/ZTEPackagePermissionSetting;
    .restart local v9    # "setting":Lcom/zte/privacy/ZTEPackagePermissionSetting;
    :goto_1
    if-eqz v8, :cond_2

    .line 187
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 186
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public isPackageLocked(Ljava/lang/String;)Z
    .locals 12
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 314
    const/4 v9, -0x1

    .line 315
    .local v9, "rowId":I
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "appLockSetting"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v10

    const-string v3, "name"

    aput-object v3, v2, v11

    const-string v3, "name= ?"

    new-array v4, v11, [Ljava/lang/String;

    aput-object p1, v4, v10

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 320
    .local v8, "mCursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 324
    :cond_0
    if-eqz v8, :cond_1

    .line 325
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 329
    :cond_1
    const/4 v0, -0x1

    if-ne v0, v9, :cond_3

    move v0, v10

    .line 332
    :goto_0
    return v0

    .line 324
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 325
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    move v0, v11

    .line 332
    goto :goto_0
.end method

.method public removeLockedPackage(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 288
    const-string v0, "PermissionSettingsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeLockedPackage, pkgName is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "appLockSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name= \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 290
    return-void
.end method

.method public savePackagePermissionSetting(Lcom/zte/privacy/ZTEPackagePermissionSetting;)V
    .locals 10
    .param p1, "setting"    # Lcom/zte/privacy/ZTEPackagePermissionSetting;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 252
    const/4 v9, -0x1

    .line 253
    .local v9, "rowId":I
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "permissionSetting"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v7

    const-string v3, "name"

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string v4, "uid"

    aput-object v4, v2, v3

    const-string v3, "name= ?"

    new-array v4, v6, [Ljava/lang/String;

    iget-object v6, p1, Lcom/zte/privacy/ZTEPackagePermissionSetting;->pkgName:Ljava/lang/String;

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 257
    .local v8, "mCursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 261
    :cond_0
    if-eqz v8, :cond_1

    .line 262
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 265
    :cond_1
    const/4 v0, -0x1

    if-ne v0, v9, :cond_3

    .line 266
    invoke-direct {p0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->addPackagePermissionSetting(Lcom/zte/privacy/ZTEPackagePermissionSetting;)V

    .line 270
    :goto_0
    return-void

    .line 261
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 262
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 268
    :cond_3
    invoke-direct {p0, p1, v9}, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->updatePackagePermissionSetting(Lcom/zte/privacy/ZTEPackagePermissionSetting;I)V

    goto :goto_0
.end method

.method public setAntiPRSetting(I)V
    .locals 12
    .param p1, "setting"    # I

    .prologue
    const/4 v3, 0x0

    .line 356
    const/4 v11, -0x1

    .line 357
    .local v11, "rowId":I
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "antiPhoneRecording"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "setting"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 361
    .local v10, "mCursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    const-string v0, "_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    .line 365
    :cond_0
    if-eqz v10, :cond_1

    .line 366
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 369
    :cond_1
    const/4 v0, -0x1

    if-ne v0, v11, :cond_3

    .line 370
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 371
    .local v9, "initialValues":Landroid/content/ContentValues;
    const-string v0, "setting"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 372
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "antiPhoneRecording"

    invoke-virtual {v0, v1, v3, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 378
    :goto_0
    return-void

    .line 365
    .end local v9    # "initialValues":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_2

    .line 366
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 374
    :cond_3
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 375
    .restart local v9    # "initialValues":Landroid/content/ContentValues;
    const-string v0, "setting"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 376
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "antiPhoneRecording"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
