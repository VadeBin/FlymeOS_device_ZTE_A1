.class public Lcom/android/shotcutkey/ShotcutKeyDB;
.super Ljava/lang/Object;
.source "ShotcutKeyDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/shotcutkey/ShotcutKeyDB$appChangedCallback;,
        Lcom/android/shotcutkey/ShotcutKeyDB$appData;,
        Lcom/android/shotcutkey/ShotcutKeyDB$appDataLauncher;,
        Lcom/android/shotcutkey/ShotcutKeyDB$appDetailInfo;,
        Lcom/android/shotcutkey/ShotcutKeyDB$childData;,
        Lcom/android/shotcutkey/ShotcutKeyDB$groupData;,
        Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;

.field private static mAppChangedCallback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/shotcutkey/ShotcutKeyDB$appChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;


# instance fields
.field private CHILD_TOUCH_APP:[Ljava/lang/String;

.field private CHILD_TOUCH_APP_ENABLED:[Z

.field public final CLICK_GROUP:I

.field public final CONTACT_NAME:Ljava/lang/String;

.field public final DEFAULT_APP_SWITCH:Z

.field public final DEFAULT_SEEKBAR_PROGRESS:I

.field public final DEFAULT_SHAKE_SWITCH:Z

.field public final DOUBLE_CLICK_GROUP:I

.field private final GROUP_APP_DEFAULT_VALUE:[I

.field private final GROUP_APP_STRING:[Ljava/lang/String;

.field private final GROUP_EANBLED_STRING:[Ljava/lang/String;

.field private GROUP_ENABLED_DEFAULT_VALUE:[Z

.field public final GROUP_NUM:I

.field public final INVALID_GROUP:I

.field public final LONG_PRESS_GROUP:I

.field private final OPEN_APP_PN_CN_STRING:[Ljava/lang/String;

.field public final OPTIONAL_APP_NUM:I

.field public final OPTIONAL_BLACK_SHOT:I

.field public final OPTIONAL_CAMOUFLAGE_CALL:I

.field public final OPTIONAL_FLASHLIGHT:I

.field public final OPTIONAL_HOME_KEY:I

.field public final OPTIONAL_OPEN_APP:I

.field public final OPTIONAL_SCREEN_SHOT:I

.field public final OPTIONAL_SHARE:I

.field public final OPTIONAL_SOUNDRECORDER:I

.field public final OPTIONAL_SPEED_UP:I

.field public final PHONE_NUMBER:Ljava/lang/String;

.field public final SETTINGS_APP_SWITCH:Ljava/lang/String;

.field public final SETTINGS_RESPONSE_SPEED:Ljava/lang/String;

.field public final SETTINGS_SHAKE_SWITCH:Ljava/lang/String;

.field private SHARE_APP_INDEX:Ljava/lang/String;

.field public final SHARE_APP_INVALID:I

.field public final SHARE_APP_INVALID_MODE:I

.field private SHARE_APP_MODE:Ljava/lang/String;

.field private final SHARE_APP_PN_CN_STRING:[Ljava/lang/String;

.field public final SHARE_APP_QQ:I

.field public final SHARE_APP_QQ_ROOM:I

.field public final SHARE_APP_SELECT_MODE:I

.field public final SHARE_APP_SYSTEM_MODE:I

.field public final SHARE_APP_WECHAT_FRIEND:I

.field public final SHARE_APP_WECHAT_FRIENDS:I

.field public final SHARE_APP_WEIBO:I

.field public final TOUCH_CHILD_ANSWER:I

.field public final TOUCH_CHILD_NUM:I

.field public final TOUCH_CHILD_SHUTTER:I

.field public final TOUCH_CHILD_STOP_ALARM:I

.field public final TOUCH_GROUP:I

.field private click_app_detail_info:[[I

.field private double_click_app_detail_info:[[I

.field private groupImage:[I

.field private groupTitle:[I

.field private long_press_app_detail_info:[[I

.field private mGroupData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/shotcutkey/ShotcutKeyDB$groupData;",
            ">;"
        }
    .end annotation
.end field

.field private package_and_class_name:[[Ljava/lang/String;

.field private selected_app_data:[[I

.field private selected_app_data_launcher:[[I

.field private shareAppInfo:[[I

.field private share_detail_info:[[I

.field private touchChildImage:[I

.field private touchChildSubTitle:[I

.field private touchChildTitle:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/shotcutkey/MyLog;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ShotcutKeyDB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/shotcutkey/ShotcutKeyDB;->TAG:Ljava/lang/String;

    .line 16
    sget-boolean v0, Lcom/android/shotcutkey/MyLog;->DEBUG:Z

    sput-boolean v0, Lcom/android/shotcutkey/ShotcutKeyDB;->DEBUG:Z

    .line 343
    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->INVALID_GROUP:I

    .line 139
    iput v5, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->CLICK_GROUP:I

    .line 140
    iput v6, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->DOUBLE_CLICK_GROUP:I

    .line 141
    iput v4, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->LONG_PRESS_GROUP:I

    .line 142
    iput v7, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->TOUCH_GROUP:I

    .line 143
    iput v8, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->GROUP_NUM:I

    .line 145
    iput v5, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->TOUCH_CHILD_SHUTTER:I

    .line 146
    iput v6, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->TOUCH_CHILD_ANSWER:I

    .line 147
    iput v4, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->TOUCH_CHILD_STOP_ALARM:I

    .line 148
    iput v7, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->TOUCH_CHILD_NUM:I

    .line 152
    iput v5, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->OPTIONAL_BLACK_SHOT:I

    .line 153
    iput v6, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->OPTIONAL_SHARE:I

    .line 154
    iput v4, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->OPTIONAL_FLASHLIGHT:I

    .line 155
    iput v7, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->OPTIONAL_SCREEN_SHOT:I

    .line 156
    iput v8, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->OPTIONAL_OPEN_APP:I

    .line 157
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->OPTIONAL_HOME_KEY:I

    .line 158
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->OPTIONAL_CAMOUFLAGE_CALL:I

    .line 159
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->OPTIONAL_SOUNDRECORDER:I

    .line 160
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->OPTIONAL_SPEED_UP:I

    .line 161
    const/16 v0, 0x6

    iput v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->OPTIONAL_APP_NUM:I

    .line 163
    const-string v0, "contact_name"

    iput-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->CONTACT_NAME:Ljava/lang/String;

    .line 164
    const-string v0, "phone_number"

    iput-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->PHONE_NUMBER:Ljava/lang/String;

    .line 178
    new-array v0, v8, [I

    fill-array-data v0, :array_0

    .line 179
    iput-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->groupTitle:[I

    .line 180
    new-array v0, v8, [I

    fill-array-data v0, :array_1

    .line 182
    iput-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->groupImage:[I

    .line 184
    new-array v0, v7, [I

    iput-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->touchChildImage:[I

    .line 186
    new-array v0, v7, [I

    fill-array-data v0, :array_2

    .line 187
    iput-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->touchChildTitle:[I

    .line 189
    new-array v0, v7, [I

    fill-array-data v0, :array_3

    .line 190
    iput-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->touchChildSubTitle:[I

    .line 192
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "click-enabled"

    aput-object v1, v0, v5

    .line 193
    const-string v1, "double-click-enabled"

    aput-object v1, v0, v6

    const-string v1, "long-press-enabled"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->GROUP_EANBLED_STRING:[Ljava/lang/String;

    .line 195
    new-array v0, v7, [Z

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->GROUP_ENABLED_DEFAULT_VALUE:[Z

    .line 197
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "click-app"

    aput-object v1, v0, v5

    .line 198
    const-string v1, "double-click-app"

    aput-object v1, v0, v6

    const-string v1, "long-press-app"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->GROUP_APP_STRING:[Ljava/lang/String;

    .line 200
    new-array v0, v7, [I

    aput v7, v0, v5

    .line 201
    aput v4, v0, v4

    iput-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->GROUP_APP_DEFAULT_VALUE:[I

    .line 203
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "open-app-packagename-"

    aput-object v1, v0, v5

    .line 204
    const-string v1, "open-app-classname-"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->OPEN_APP_PN_CN_STRING:[Ljava/lang/String;

    .line 206
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "share-app-packagename-"

    aput-object v1, v0, v5

    .line 207
    const-string v1, "share-app-classname-"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->SHARE_APP_PN_CN_STRING:[Ljava/lang/String;

    .line 209
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "shutter_key"

    aput-object v1, v0, v5

    const-string v1, "answer_key"

    aput-object v1, v0, v6

    .line 210
    const-string v1, "stop_alarm_key"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->CHILD_TOUCH_APP:[Ljava/lang/String;

    .line 212
    new-array v0, v7, [Z

    aput-boolean v6, v0, v5

    aput-boolean v6, v0, v4

    iput-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->CHILD_TOUCH_APP_ENABLED:[Z

    .line 214
    const-string v0, "specialkey_doubleclick_interval_threshold"

    iput-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->SETTINGS_RESPONSE_SPEED:Ljava/lang/String;

    .line 215
    const-string v0, "specialkey_shake_switch"

    iput-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->SETTINGS_SHAKE_SWITCH:Ljava/lang/String;

    .line 216
    const-string v0, "specialkey_switch"

    iput-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->SETTINGS_APP_SWITCH:Ljava/lang/String;

    .line 218
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->DEFAULT_SEEKBAR_PROGRESS:I

    .line 219
    iput-boolean v6, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->DEFAULT_SHAKE_SWITCH:Z

    .line 220
    iput-boolean v5, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->DEFAULT_APP_SWITCH:Z

    .line 222
    const/16 v0, 0x6

    new-array v0, v0, [[I

    .line 223
    new-array v1, v4, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v5

    .line 224
    new-array v1, v4, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v6

    .line 225
    new-array v1, v4, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v4

    .line 226
    new-array v1, v4, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v7

    .line 227
    new-array v1, v4, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v8

    const/4 v1, 0x5

    .line 228
    new-array v2, v4, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    #const/4 v1, 0x6

    .line 229
    #new-array v2, v4, [I

    #fill-array-data v2, :array_b

    #aput-object v2, v0, v1

    #const/4 v1, 0x7

    .line 230
    #new-array v2, v4, [I

    #fill-array-data v2, :array_c

    #aput-object v2, v0, v1

    #const/16 v1, 0x8

    .line 231
    #new-array v2, v4, [I

    #fill-array-data v2, :array_d

    #aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->selected_app_data_launcher:[[I

    .line 233
    const/16 v0, 0x6

    new-array v0, v0, [[I

    .line 234
    new-array v1, v4, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v5

    .line 235
    new-array v1, v4, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v6

    .line 236
    new-array v1, v4, [I

    fill-array-data v1, :array_10

    aput-object v1, v0, v4

    .line 237
    new-array v1, v4, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v7

    .line 238
    new-array v1, v4, [I

    fill-array-data v1, :array_12

    aput-object v1, v0, v8

    const/4 v1, 0x5

    .line 239
    new-array v2, v4, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    #const/4 v1, 0x6

    .line 240
    #new-array v2, v4, [I

    #fill-array-data v2, :array_14

    #aput-object v2, v0, v1

    #const/4 v1, 0x7

    .line 241
    #new-array v2, v4, [I

    #fill-array-data v2, :array_15

    #aput-object v2, v0, v1

    #const/16 v1, 0x8

    .line 242
    #new-array v2, v4, [I

    #fill-array-data v2, :array_16

    #aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->selected_app_data:[[I

    .line 244
    const/16 v0, 0x6

    new-array v0, v0, [[Ljava/lang/String;

    .line 245
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "com.zte.camera"

    aput-object v2, v1, v5

    const-string v2, "com.zte.camera.CameraActivity"

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    .line 246
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "com.zte.camera"

    aput-object v2, v1, v5

    const-string v2, "com.zte.camera.CameraActivity"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    .line 247
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "zte.android.flashlight"

    aput-object v2, v1, v5

    const-string v2, "zte.android.flashlight.ZTEFlashLight"

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    .line 248
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "com.android.mipop"

    aput-object v2, v1, v5

    .line 249
    const-string v2, "com.android.mipop.cropimage.CropImageService"

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    .line 250
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "cn.zte.recorder"

    aput-object v2, v1, v5

    const-string v2, "cn.zte.recorder.RecordFilesListActivity"

    aput-object v2, v1, v6

    aput-object v1, v0, v8

    const/4 v1, 0x5

    .line 251
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "cn.zte.recorder"

    aput-object v3, v2, v5

    const-string v3, "cn.zte.recorder.RecordFilesListActivity"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    #const/4 v1, 0x6

    .line 252
    #new-array v2, v4, [Ljava/lang/String;

    #const-string v3, "com.android.fakeCall"

    #aput-object v3, v2, v5

    #const-string v3, "com.android.fakeCall.FakeInCallActivity"

    #aput-object v3, v2, v6

    #aput-object v2, v0, v1

    #const/4 v1, 0x7

    .line 253
    #new-array v2, v4, [Ljava/lang/String;

    #const-string v3, "cn.zte.recorder"

    #aput-object v3, v2, v5

    #const-string v3, "cn.zte.recorder.RecordFilesListActivity"

    #aput-object v3, v2, v6

    #aput-object v2, v0, v1

    #const/16 v1, 0x8

    .line 254
    #new-array v2, v4, [Ljava/lang/String;

    #aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->package_and_class_name:[[Ljava/lang/String;

    .line 256
    const/16 v0, 0x6

    new-array v0, v0, [[I

    .line 257
    new-array v1, v4, [I

    fill-array-data v1, :array_17

    aput-object v1, v0, v5

    .line 258
    new-array v1, v4, [I

    fill-array-data v1, :array_18

    aput-object v1, v0, v6

    .line 259
    new-array v1, v4, [I

    fill-array-data v1, :array_19

    aput-object v1, v0, v4

    .line 260
    new-array v1, v4, [I

    fill-array-data v1, :array_1a

    aput-object v1, v0, v7

    .line 261
    new-array v1, v4, [I

    fill-array-data v1, :array_1b

    aput-object v1, v0, v8

    const/4 v1, 0x5

    .line 262
    new-array v2, v4, [I

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    #const/4 v1, 0x6

    .line 263
    #new-array v2, v4, [I

    #fill-array-data v2, :array_1d

    .line 264
    #aput-object v2, v0, v1

    #const/4 v1, 0x7

    .line 265
    #new-array v2, v4, [I

    #fill-array-data v2, :array_1e

    .line 266
    #aput-object v2, v0, v1

    #const/16 v1, 0x8

    .line 267
    #new-array v2, v4, [I

    #fill-array-data v2, :array_1f

    #aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->click_app_detail_info:[[I

    .line 269
    const/16 v0, 0x6

    new-array v0, v0, [[I

    .line 270
    new-array v1, v4, [I

    fill-array-data v1, :array_20

    .line 271
    aput-object v1, v0, v5

    .line 272
    new-array v1, v4, [I

    fill-array-data v1, :array_21

    .line 273
    aput-object v1, v0, v6

    .line 274
    new-array v1, v4, [I

    fill-array-data v1, :array_22

    .line 275
    aput-object v1, v0, v4

    .line 276
    new-array v1, v4, [I

    fill-array-data v1, :array_23

    .line 277
    aput-object v1, v0, v7

    .line 278
    new-array v1, v4, [I

    fill-array-data v1, :array_24

    .line 279
    aput-object v1, v0, v8

    const/4 v1, 0x5

    .line 280
    new-array v2, v4, [I

    fill-array-data v2, :array_25

    .line 281
    aput-object v2, v0, v1

    #const/4 v1, 0x6

    .line 282
    #new-array v2, v4, [I

    #fill-array-data v2, :array_26

    .line 283
    #aput-object v2, v0, v1

    #const/4 v1, 0x7

    .line 284
    #new-array v2, v4, [I

    #fill-array-data v2, :array_27

    .line 285
    #aput-object v2, v0, v1

    #const/16 v1, 0x8

    .line 286
    #new-array v2, v4, [I

    #fill-array-data v2, :array_28

    .line 287
    #aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->double_click_app_detail_info:[[I

    .line 289
    const/16 v0, 0x6

    new-array v0, v0, [[I

    .line 290
    new-array v1, v4, [I

    fill-array-data v1, :array_29

    .line 291
    aput-object v1, v0, v5

    .line 292
    new-array v1, v4, [I

    fill-array-data v1, :array_2a

    .line 293
    aput-object v1, v0, v6

    .line 294
    new-array v1, v4, [I

    fill-array-data v1, :array_2b

    .line 295
    aput-object v1, v0, v4

    .line 296
    new-array v1, v4, [I

    fill-array-data v1, :array_2c

    .line 297
    aput-object v1, v0, v7

    .line 298
    new-array v1, v4, [I

    fill-array-data v1, :array_2d

    .line 299
    aput-object v1, v0, v8

    const/4 v1, 0x5

    .line 300
    new-array v2, v4, [I

    fill-array-data v2, :array_2e

    .line 301
    aput-object v2, v0, v1

    #const/4 v1, 0x6

    .line 302
    #new-array v2, v4, [I

    #fill-array-data v2, :array_2f

    .line 303
    #aput-object v2, v0, v1

    #const/4 v1, 0x7

    .line 304
    #new-array v2, v4, [I

    #fill-array-data v2, :array_30

    .line 305
    #aput-object v2, v0, v1

    #const/16 v1, 0x8

    .line 306
    #new-array v2, v4, [I

    #fill-array-data v2, :array_31

    .line 307
    #aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->long_press_app_detail_info:[[I

    .line 309
    new-array v0, v4, [[I

    .line 310
    new-array v1, v4, [I

    fill-array-data v1, :array_32

    .line 311
    aput-object v1, v0, v5

    .line 312
    new-array v1, v4, [I

    fill-array-data v1, :array_33

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->share_detail_info:[[I

    .line 314
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->SHARE_APP_INVALID_MODE:I

    .line 315
    iput v5, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->SHARE_APP_SYSTEM_MODE:I

    .line 316
    iput v6, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->SHARE_APP_SELECT_MODE:I

    .line 318
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->SHARE_APP_INVALID:I

    .line 319
    iput v5, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->SHARE_APP_WECHAT_FRIENDS:I

    .line 320
    iput v6, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->SHARE_APP_WECHAT_FRIEND:I

    .line 321
    iput v4, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->SHARE_APP_WEIBO:I

    .line 322
    iput v7, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->SHARE_APP_QQ:I

    .line 323
    iput v8, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->SHARE_APP_QQ_ROOM:I

    .line 326
    const-string v0, "share-app-mode"

    iput-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->SHARE_APP_MODE:Ljava/lang/String;

    .line 327
    const-string v0, "share-app-index"

    iput-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->SHARE_APP_INDEX:Ljava/lang/String;

    .line 329
    const/4 v0, 0x5

    new-array v0, v0, [[I

    .line 330
    new-array v1, v4, [I

    fill-array-data v1, :array_34

    aput-object v1, v0, v5

    .line 331
    new-array v1, v4, [I

    fill-array-data v1, :array_35

    aput-object v1, v0, v6

    .line 332
    new-array v1, v4, [I

    fill-array-data v1, :array_36

    aput-object v1, v0, v4

    .line 333
    new-array v1, v4, [I

    fill-array-data v1, :array_37

    aput-object v1, v0, v7

    .line 334
    new-array v1, v4, [I

    fill-array-data v1, :array_38

    aput-object v1, v0, v8

    iput-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->shareAppInfo:[[I

    .line 14
    return-void

    .line 178
    nop

    :array_0
    .array-data 4
        0x7f090052
        0x7f090053
        0x7f090054
        0x7f090051
    .end array-data

    .line 180
    :array_1
    .array-data 4
        0x7f020218
        0x7f02021a
        0x7f02021e
        0x7f020218
    .end array-data

    .line 186
    :array_2
    .array-data 4
        0x7f090055
        0x7f090057
        0x7f090059
    .end array-data

    .line 189
    :array_3
    .array-data 4
        0x7f090056
        0x7f090058
        0x7f09005a
    .end array-data

    .line 195
    :array_4
    .array-data 1
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 223
    :array_5
    .array-data 4
        0x7f020215
        0x7f090067
    .end array-data

    .line 224
    :array_6
    .array-data 4
        0x7f02022a
        0x7f090066
    .end array-data

    .line 225
    :array_7
    .array-data 4
        0x7f02021c
        0x7f090069
    .end array-data

    .line 226
    :array_8
    .array-data 4
        0x7f020228
        0x7f09006e
    .end array-data

    .line 227
    :array_9
    .array-data 4
        0x7f020222
        0x7f09006f
    .end array-data

    .line 228
    :array_a
    .array-data 4
        0x7f020230
        0x7f090070
    .end array-data

    .line 229
    :array_b
    .array-data 4
        0x7f020217
        0x7f09006c
    .end array-data

    .line 230
    :array_c
    .array-data 4
        0x7f02022c
        0x7f09006a
    .end array-data

    .line 231
    :array_d
    .array-data 4
        0x7f02022e
        0x7f0900ae
    .end array-data

    .line 234
    :array_e
    .array-data 4
        0x7f020214
        0x7f090067
    .end array-data

    .line 235
    :array_f
    .array-data 4
        0x7f020229
        0x7f090066
    .end array-data

    .line 236
    :array_10
    .array-data 4
        0x7f02021b
        0x7f090069
    .end array-data

    .line 237
    :array_11
    .array-data 4
        0x7f020227
        0x7f09006e
    .end array-data

    .line 238
    :array_12
    .array-data 4
        0x7f020221
        0x7f09006f
    .end array-data

    .line 239
    :array_13
    .array-data 4
        0x7f02022f
        0x7f090070
    .end array-data

    .line 240
    :array_14
    .array-data 4
        0x7f020216
        0x7f09006c
    .end array-data

    .line 241
    :array_15
    .array-data 4
        0x7f02022b
        0x7f09006a
    .end array-data

    .line 242
    :array_16
    .array-data 4
        0x7f02022d
        0x7f0900ae
    .end array-data

    .line 257
    :array_17
    .array-data 4
        0x7f0201ef
        0x7f090072
    .end array-data

    .line 258
    :array_18
    .array-data 4
        0x7f0201f5
        0x7f090071
    .end array-data

    .line 259
    :array_19
    .array-data 4
        0x7f0201f1
        0x7f090073
    .end array-data

    .line 260
    :array_1a
    .array-data 4
        0x7f0201f4
        0x7f090074
    .end array-data

    .line 261
    :array_1b
    .array-data 4
        0x7f0201f3
        0x7f090075
    .end array-data

    .line 262
    :array_1c
    .array-data 4
        0x7f0201fe
        0x7f090076
    .end array-data

    .line 263
    :array_1d
    .array-data 4
        0x7f0201f0
        0x7f090079
    .end array-data

    .line 265
    :array_1e
    .array-data 4
        0x7f0201fc
        0x7f090077
    .end array-data

    .line 267
    :array_1f
    .array-data 4
        0x7f0201fd
        0x7f0900af
    .end array-data

    .line 270
    :array_20
    .array-data 4
        0x7f0201ff
        0x7f09007b
    .end array-data

    .line 272
    :array_21
    .array-data 4
        0x7f020205
        0x7f09007a
    .end array-data

    .line 274
    :array_22
    .array-data 4
        0x7f020201
        0x7f09007c
    .end array-data

    .line 276
    :array_23
    .array-data 4
        0x7f020204
        0x7f09007d
    .end array-data

    .line 278
    :array_24
    .array-data 4
        0x7f020203
        0x7f09007e
    .end array-data

    .line 280
    :array_25
    .array-data 4
        0x7f02020e
        0x7f09007f
    .end array-data

    .line 282
    :array_26
    .array-data 4
        0x7f020200
        0x7f090082
    .end array-data

    .line 284
    :array_27
    .array-data 4
        0x7f02020c
        0x7f090080
    .end array-data

    .line 286
    :array_28
    .array-data 4
        0x7f02020d
        0x7f0900b0
    .end array-data

    .line 290
    :array_29
    .array-data 4
        0x7f020235
        0x7f090084
    .end array-data

    .line 292
    :array_2a
    .array-data 4
        0x7f02023b
        0x7f090083
    .end array-data

    .line 294
    :array_2b
    .array-data 4
        0x7f020237
        0x7f090085
    .end array-data

    .line 296
    :array_2c
    .array-data 4
        0x7f02023a
        0x7f090086
    .end array-data

    .line 298
    :array_2d
    .array-data 4
        0x7f020239
        0x7f090087
    .end array-data

    .line 300
    :array_2e
    .array-data 4
        0x7f020244
        0x7f090088
    .end array-data

    .line 302
    :array_2f
    .array-data 4
        0x7f020236
        0x7f09008b
    .end array-data

    .line 304
    :array_30
    .array-data 4
        0x7f020242
        0x7f090089
    .end array-data

    .line 306
    :array_31
    .array-data 4
        0x7f020243
        0x7f0900b1
    .end array-data

    .line 310
    :array_32
    .array-data 4
        0x7f020247
        0x7f0900ac
    .end array-data

    .line 312
    :array_33
    .array-data 4
        0x7f020246
        0x7f0900ad
    .end array-data

    .line 330
    :array_34
    .array-data 4
        0x7f020234
        0x7f0900a5
    .end array-data

    .line 331
    :array_35
    .array-data 4
        0x7f020233
        0x7f0900a6
    .end array-data

    .line 332
    :array_36
    .array-data 4
        0x7f020231
        0x7f0900a7
    .end array-data

    .line 333
    :array_37
    .array-data 4
        0x7f020225
        0x7f0900a8
    .end array-data

    .line 334
    :array_38
    .array-data 4
        0x7f020226
        0x7f0900a9
    .end array-data
.end method

.method private checkIsInited()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 465
    sget-object v3, Lcom/android/shotcutkey/ShotcutKeyDB;->mContext:Landroid/content/Context;

    .line 466
    const-string v4, "sharedpreferences"

    .line 465
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 467
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v3, "isInit"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 468
    .local v1, "isInit":Z
    if-nez v1, :cond_0

    .line 469
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 470
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "isInit"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 471
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 474
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    sget-boolean v3, Lcom/android/shotcutkey/ShotcutKeyDB;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 475
    sget-object v3, Lcom/android/shotcutkey/ShotcutKeyDB;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkIsFirstOpen() isInit = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_1
    return v1
.end method

.method private flushListData()V
    .locals 0

    .prologue
    .line 461
    invoke-direct {p0}, Lcom/android/shotcutkey/ShotcutKeyDB;->initListData()V

    .line 462
    return-void
.end method

.method private getBooleanValueByKey(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .prologue
    const/4 v1, 0x1

    .line 841
    :try_start_0
    sget-object v2, Lcom/android/shotcutkey/ShotcutKeyDB;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v1, :cond_0

    move p2, v1

    .line 848
    .end local p2    # "def":Z
    :goto_0
    return p2

    .line 844
    .restart local p2    # "def":Z
    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    .line 846
    :catch_0
    move-exception v0

    .line 847
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/shotcutkey/ShotcutKeyDB;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 481
    sget-object v0, Lcom/android/shotcutkey/ShotcutKeyDB;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    if-nez v0, :cond_1

    .line 482
    new-instance v0, Lcom/android/shotcutkey/ShotcutKeyDB;

    invoke-direct {v0}, Lcom/android/shotcutkey/ShotcutKeyDB;-><init>()V

    sput-object v0, Lcom/android/shotcutkey/ShotcutKeyDB;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    .line 483
    sput-object p0, Lcom/android/shotcutkey/ShotcutKeyDB;->mContext:Landroid/content/Context;

    .line 485
    sget-object v0, Lcom/android/shotcutkey/ShotcutKeyDB;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    invoke-direct {v0}, Lcom/android/shotcutkey/ShotcutKeyDB;->checkIsInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    sget-object v0, Lcom/android/shotcutkey/ShotcutKeyDB;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    invoke-direct {v0}, Lcom/android/shotcutkey/ShotcutKeyDB;->initKeyValue()V

    .line 489
    :cond_0
    sget-object v0, Lcom/android/shotcutkey/ShotcutKeyDB;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    invoke-direct {v0}, Lcom/android/shotcutkey/ShotcutKeyDB;->initListData()V

    .line 502
    :cond_1
    sget-object v0, Lcom/android/shotcutkey/ShotcutKeyDB;->mAppChangedCallback:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 503
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/shotcutkey/ShotcutKeyDB;->mAppChangedCallback:Ljava/util/ArrayList;

    .line 506
    :cond_2
    sget-object v0, Lcom/android/shotcutkey/ShotcutKeyDB;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    return-object v0
.end method

.method private getIntValueByKey(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 836
    sget-object v0, Lcom/android/shotcutkey/ShotcutKeyDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getOpenAppInfo(I)Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;
    .locals 6
    .param p1, "group"    # I

    .prologue
    const/4 v5, 0x0

    .line 604
    .line 605
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->OPEN_APP_PN_CN_STRING:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 604
    invoke-direct {p0, v2, v5}, Lcom/android/shotcutkey/ShotcutKeyDB;->getStringValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 607
    .local v1, "pn":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->OPEN_APP_PN_CN_STRING:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 606
    invoke-direct {p0, v2, v5}, Lcom/android/shotcutkey/ShotcutKeyDB;->getStringValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 609
    .local v0, "cn":Ljava/lang/String;
    sget-boolean v2, Lcom/android/shotcutkey/ShotcutKeyDB;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 610
    sget-object v2, Lcom/android/shotcutkey/ShotcutKeyDB;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getOpenAppInfo() group = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  pn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 611
    const-string v4, ",  cn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 610
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_0
    new-instance v2, Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;-><init>(Lcom/android/shotcutkey/ShotcutKeyDB;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private getStringValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .prologue
    .line 853
    sget-object v0, Lcom/android/shotcutkey/ShotcutKeyDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initKeyValue()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 367
    const-string v1, "specialkey_doubleclick_interval_threshold"

    const/16 v2, 0x1f4

    invoke-direct {p0, v1, v2}, Lcom/android/shotcutkey/ShotcutKeyDB;->putIntbyKey(Ljava/lang/String;I)V

    .line 368
    const-string v1, "specialkey_shake_switch"

    invoke-direct {p0, v1, v4}, Lcom/android/shotcutkey/ShotcutKeyDB;->putBooleanbyKey(Ljava/lang/String;Z)V

    .line 369
    const-string v1, "specialkey_switch"

    invoke-direct {p0, v1, v3}, Lcom/android/shotcutkey/ShotcutKeyDB;->putBooleanbyKey(Ljava/lang/String;Z)V

    .line 373
    iget-object v1, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->GROUP_EANBLED_STRING:[Ljava/lang/String;

    aget-object v1, v1, v3

    .line 374
    iget-object v2, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->GROUP_ENABLED_DEFAULT_VALUE:[Z

    aget-boolean v2, v2, v3

    .line 373
    invoke-direct {p0, v1, v2}, Lcom/android/shotcutkey/ShotcutKeyDB;->putBooleanbyKey(Ljava/lang/String;Z)V

    .line 375
    iget-object v1, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->GROUP_APP_STRING:[Ljava/lang/String;

    aget-object v1, v1, v3

    .line 376
    iget-object v2, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->GROUP_APP_DEFAULT_VALUE:[I

    aget v2, v2, v3

    .line 375
    invoke-direct {p0, v1, v2}, Lcom/android/shotcutkey/ShotcutKeyDB;->putIntbyKey(Ljava/lang/String;I)V

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->SHARE_APP_MODE:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/shotcutkey/ShotcutKeyDB;->putIntbyKey(Ljava/lang/String;I)V

    .line 382
    iget-object v1, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->GROUP_EANBLED_STRING:[Ljava/lang/String;

    aget-object v1, v1, v4

    .line 383
    iget-object v2, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->GROUP_ENABLED_DEFAULT_VALUE:[Z

    aget-boolean v2, v2, v4

    .line 382
    invoke-direct {p0, v1, v2}, Lcom/android/shotcutkey/ShotcutKeyDB;->putBooleanbyKey(Ljava/lang/String;Z)V

    .line 384
    iget-object v1, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->GROUP_APP_STRING:[Ljava/lang/String;

    aget-object v1, v1, v4

    .line 385
    iget-object v2, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->GROUP_APP_DEFAULT_VALUE:[I

    aget v2, v2, v4

    .line 384
    invoke-direct {p0, v1, v2}, Lcom/android/shotcutkey/ShotcutKeyDB;->putIntbyKey(Ljava/lang/String;I)V

    .line 389
    iget-object v1, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->GROUP_EANBLED_STRING:[Ljava/lang/String;

    aget-object v1, v1, v5

    .line 390
    iget-object v2, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->GROUP_ENABLED_DEFAULT_VALUE:[Z

    aget-boolean v2, v2, v5

    .line 389
    invoke-direct {p0, v1, v2}, Lcom/android/shotcutkey/ShotcutKeyDB;->putBooleanbyKey(Ljava/lang/String;Z)V

    .line 391
    iget-object v1, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->GROUP_APP_STRING:[Ljava/lang/String;

    aget-object v1, v1, v5

    .line 392
    iget-object v2, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->GROUP_APP_DEFAULT_VALUE:[I

    aget v2, v2, v5

    .line 391
    invoke-direct {p0, v1, v2}, Lcom/android/shotcutkey/ShotcutKeyDB;->putIntbyKey(Ljava/lang/String;I)V

    .line 396
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->CHILD_TOUCH_APP:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 400
    return-void

    .line 397
    :cond_0
    iget-object v1, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->CHILD_TOUCH_APP:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->CHILD_TOUCH_APP_ENABLED:[Z

    aget-boolean v2, v2, v0

    invoke-direct {p0, v1, v2}, Lcom/android/shotcutkey/ShotcutKeyDB;->putBooleanbyKey(Ljava/lang/String;Z)V

    .line 396
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initListData()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x3

    const/4 v4, -0x1

    .line 403
    iget-object v1, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->mGroupData:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 404
    iget-object v1, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->mGroupData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 409
    :goto_0
    const/4 v9, 0x0

    .line 410
    .local v9, "appInfo":Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;
    new-instance v8, Lcom/android/shotcutkey/ShotcutKeyDB$appData;

    invoke-direct {v8, p0, v4, v4}, Lcom/android/shotcutkey/ShotcutKeyDB$appData;-><init>(Lcom/android/shotcutkey/ShotcutKeyDB;II)V

    .line 411
    .local v8, "appData":Lcom/android/shotcutkey/ShotcutKeyDB$appData;
    const/4 v11, 0x0

    .line 412
    .local v11, "i":I
    const/4 v11, 0x0

    :goto_1
    if-lt v11, v13, :cond_2

    .line 445
    new-instance v10, Lcom/android/shotcutkey/ShotcutKeyDB$groupData;

    iget-object v1, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->groupTitle:[I

    aget v1, v1, v11

    iget-object v2, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->groupImage:[I

    aget v2, v2, v11

    invoke-direct {v10, p0, v1, v2}, Lcom/android/shotcutkey/ShotcutKeyDB$groupData;-><init>(Lcom/android/shotcutkey/ShotcutKeyDB;II)V

    .line 446
    .local v10, "gd":Lcom/android/shotcutkey/ShotcutKeyDB$groupData;
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_2
    sget-object v1, Lcom/android/shotcutkey/ShotcutKeyDB;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lt v12, v13, :cond_3

    .line 454
    sget-boolean v1, Lcom/android/shotcutkey/ShotcutKeyDB;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 455
    sget-object v1, Lcom/android/shotcutkey/ShotcutKeyDB;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initListData() gd = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->mGroupData:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    return-void

    .line 406
    .end local v8    # "appData":Lcom/android/shotcutkey/ShotcutKeyDB$appData;
    .end local v9    # "appInfo":Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;
    .end local v10    # "gd":Lcom/android/shotcutkey/ShotcutKeyDB$groupData;
    .end local v11    # "i":I
    .end local v12    # "j":I
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->mGroupData:Ljava/util/List;

    goto :goto_0

    .line 413
    .restart local v8    # "appData":Lcom/android/shotcutkey/ShotcutKeyDB$appData;
    .restart local v9    # "appInfo":Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;
    .restart local v11    # "i":I
    :cond_2
    new-instance v10, Lcom/android/shotcutkey/ShotcutKeyDB$groupData;

    iget-object v1, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->groupTitle:[I

    aget v1, v1, v11

    iget-object v2, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->groupImage:[I

    aget v2, v2, v11

    invoke-direct {v10, p0, v1, v2}, Lcom/android/shotcutkey/ShotcutKeyDB$groupData;-><init>(Lcom/android/shotcutkey/ShotcutKeyDB;II)V

    .line 415
    .restart local v10    # "gd":Lcom/android/shotcutkey/ShotcutKeyDB$groupData;
    invoke-virtual {p0, v11, v4}, Lcom/android/shotcutkey/ShotcutKeyDB;->getStateByGroupIdAndChildId(II)Z

    move-result v5

    .line 419
    .local v5, "enabled":Z
    invoke-virtual {p0, v11}, Lcom/android/shotcutkey/ShotcutKeyDB;->getAppInfoByGroupId(I)Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;

    move-result-object v9

    .line 420
    invoke-virtual {p0, v11}, Lcom/android/shotcutkey/ShotcutKeyDB;->getAppDataByGroupId(I)Lcom/android/shotcutkey/ShotcutKeyDB$appData;

    move-result-object v8

    .line 435
    new-instance v0, Lcom/android/shotcutkey/ShotcutKeyDB$childData;

    iget v2, v8, Lcom/android/shotcutkey/ShotcutKeyDB$appData;->appicon:I

    iget v3, v8, Lcom/android/shotcutkey/ShotcutKeyDB$appData;->appname:I

    .line 436
    iget-object v6, v9, Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;->pn:Ljava/lang/String;

    iget-object v7, v9, Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;->cn:Ljava/lang/String;

    move-object v1, p0

    .line 435
    invoke-direct/range {v0 .. v7}, Lcom/android/shotcutkey/ShotcutKeyDB$childData;-><init>(Lcom/android/shotcutkey/ShotcutKeyDB;IIIZLjava/lang/String;Ljava/lang/String;)V

    .line 437
    .local v0, "cd":Lcom/android/shotcutkey/ShotcutKeyDB$childData;
    invoke-virtual {v10, v0}, Lcom/android/shotcutkey/ShotcutKeyDB$groupData;->addChildData(Lcom/android/shotcutkey/ShotcutKeyDB$childData;)V

    .line 439
    iget-object v1, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->mGroupData:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 447
    .end local v0    # "cd":Lcom/android/shotcutkey/ShotcutKeyDB$childData;
    .end local v5    # "enabled":Z
    .restart local v12    # "j":I
    :cond_3
    invoke-virtual {p0, v13, v12}, Lcom/android/shotcutkey/ShotcutKeyDB;->getStateByGroupIdAndChildId(II)Z

    move-result v5

    .line 448
    .restart local v5    # "enabled":Z
    new-instance v0, Lcom/android/shotcutkey/ShotcutKeyDB$childData;

    iget-object v1, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->touchChildImage:[I

    aget v2, v1, v12

    .line 449
    iget-object v1, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->touchChildTitle:[I

    aget v3, v1, v12

    iget-object v1, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->touchChildSubTitle:[I

    aget v4, v1, v12

    move-object v1, p0

    move-object v6, v14

    move-object v7, v14

    .line 448
    #invoke-direct/range {v0 .. v7}, Lcom/android/shotcutkey/ShotcutKeyDB$childData;-><init>(Lcom/android/shotcutkey/ShotcutKeyDB;IIIZLjava/lang/String;Ljava/lang/String;)V

    .line 451
    .restart local v0    # "cd":Lcom/android/shotcutkey/ShotcutKeyDB$childData;
    #invoke-virtual {v10, v0}, Lcom/android/shotcutkey/ShotcutKeyDB$groupData;->addChildData(Lcom/android/shotcutkey/ShotcutKeyDB$childData;)V

    .line 446
    add-int/lit8 v12, v12, 0x1

    goto :goto_2
.end method

.method private putBooleanbyKey(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 861
    if-eqz p2, :cond_0

    .line 862
    sget-object v0, Lcom/android/shotcutkey/ShotcutKeyDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 866
    :goto_0
    return-void

    .line 864
    :cond_0
    sget-object v0, Lcom/android/shotcutkey/ShotcutKeyDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private putIntbyKey(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 857
    sget-object v0, Lcom/android/shotcutkey/ShotcutKeyDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 858
    return-void
.end method

.method private putStringbyKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 869
    sget-object v0, Lcom/android/shotcutkey/ShotcutKeyDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 870
    return-void
.end method


# virtual methods
.method public getAppDataByGroupId(I)Lcom/android/shotcutkey/ShotcutKeyDB$appData;
    .locals 5
    .param p1, "group"    # I

    .prologue
    .line 525
    invoke-virtual {p0, p1}, Lcom/android/shotcutkey/ShotcutKeyDB;->getAppIndexByGroupId(I)I

    move-result v0

    .line 527
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->selected_app_data:[[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 528
    new-instance v1, Lcom/android/shotcutkey/ShotcutKeyDB$appData;

    iget-object v2, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->selected_app_data:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 529
    iget-object v3, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->selected_app_data:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x1

    aget v3, v3, v4

    .line 528
    invoke-direct {v1, p0, v2, v3}, Lcom/android/shotcutkey/ShotcutKeyDB$appData;-><init>(Lcom/android/shotcutkey/ShotcutKeyDB;II)V

    .line 532
    :goto_0
    return-object v1

    .line 531
    :cond_0
    sget-object v1, Lcom/android/shotcutkey/ShotcutKeyDB;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getAppDataByGroupId() param is error!!"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAppDataLauncherById(I)Lcom/android/shotcutkey/ShotcutKeyDB$appDataLauncher;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 515
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->selected_app_data_launcher:[[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 516
    new-instance v0, Lcom/android/shotcutkey/ShotcutKeyDB$appDataLauncher;

    iget-object v1, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->selected_app_data_launcher:[[I

    aget-object v1, v1, p1

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 517
    iget-object v2, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->selected_app_data_launcher:[[I

    aget-object v2, v2, p1

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 516
    invoke-direct {v0, p0, v1, v2}, Lcom/android/shotcutkey/ShotcutKeyDB$appDataLauncher;-><init>(Lcom/android/shotcutkey/ShotcutKeyDB;II)V

    .line 520
    :goto_0
    return-object v0

    .line 519
    :cond_0
    sget-object v0, Lcom/android/shotcutkey/ShotcutKeyDB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getAppDataByGroupId() param is error!!"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppDetailInfoByGroupId(I)Lcom/android/shotcutkey/ShotcutKeyDB$appDetailInfo;
    .locals 6
    .param p1, "group"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 537
    invoke-virtual {p0, p1}, Lcom/android/shotcutkey/ShotcutKeyDB;->getAppIndexByGroupId(I)I

    move-result v0

    .line 538
    .local v0, "index":I
    if-ltz v0, :cond_2

    const/16 v3, 0x6

    if-ge v0, v3, :cond_2

    .line 539
    if-ne v0, v5, :cond_1

    .line 540
    invoke-virtual {p0, p1}, Lcom/android/shotcutkey/ShotcutKeyDB;->getShareAppModeByGroupId(I)I

    move-result v1

    .line 541
    .local v1, "mode":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 542
    sget-object v3, Lcom/android/shotcutkey/ShotcutKeyDB;->TAG:Ljava/lang/String;

    .line 543
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getAppDetailInfoByGroupId() mode is error!!  group = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 544
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 543
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 542
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    .end local v1    # "mode":I
    :goto_0
    return-object v2

    .line 548
    .restart local v1    # "mode":I
    :cond_0
    new-instance v2, Lcom/android/shotcutkey/ShotcutKeyDB$appDetailInfo;

    iget-object v3, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->share_detail_info:[[I

    aget-object v3, v3, v1

    aget v3, v3, v4

    .line 549
    iget-object v4, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->share_detail_info:[[I

    aget-object v4, v4, v1

    aget v4, v4, v5

    .line 548
    invoke-direct {v2, p0, v3, v4}, Lcom/android/shotcutkey/ShotcutKeyDB$appDetailInfo;-><init>(Lcom/android/shotcutkey/ShotcutKeyDB;II)V

    goto :goto_0

    .line 552
    .end local v1    # "mode":I
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 554
    :pswitch_0
    new-instance v2, Lcom/android/shotcutkey/ShotcutKeyDB$appDetailInfo;

    iget-object v3, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->click_app_detail_info:[[I

    aget-object v3, v3, v0

    aget v3, v3, v4

    .line 555
    iget-object v4, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->click_app_detail_info:[[I

    aget-object v4, v4, v0

    aget v4, v4, v5

    .line 554
    invoke-direct {v2, p0, v3, v4}, Lcom/android/shotcutkey/ShotcutKeyDB$appDetailInfo;-><init>(Lcom/android/shotcutkey/ShotcutKeyDB;II)V

    goto :goto_0

    .line 557
    :pswitch_1
    new-instance v2, Lcom/android/shotcutkey/ShotcutKeyDB$appDetailInfo;

    .line 558
    iget-object v3, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->double_click_app_detail_info:[[I

    aget-object v3, v3, v0

    aget v3, v3, v4

    .line 559
    iget-object v4, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->double_click_app_detail_info:[[I

    aget-object v4, v4, v0

    aget v4, v4, v5

    .line 557
    invoke-direct {v2, p0, v3, v4}, Lcom/android/shotcutkey/ShotcutKeyDB$appDetailInfo;-><init>(Lcom/android/shotcutkey/ShotcutKeyDB;II)V

    goto :goto_0

    .line 561
    :pswitch_2
    new-instance v2, Lcom/android/shotcutkey/ShotcutKeyDB$appDetailInfo;

    .line 562
    iget-object v3, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->long_press_app_detail_info:[[I

    aget-object v3, v3, v0

    aget v3, v3, v4

    .line 563
    iget-object v4, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->long_press_app_detail_info:[[I

    aget-object v4, v4, v0

    aget v4, v4, v5

    .line 561
    invoke-direct {v2, p0, v3, v4}, Lcom/android/shotcutkey/ShotcutKeyDB$appDetailInfo;-><init>(Lcom/android/shotcutkey/ShotcutKeyDB;II)V

    goto :goto_0

    .line 569
    :cond_2
    sget-object v3, Lcom/android/shotcutkey/ShotcutKeyDB;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getAppDataByGroupId() param is error!!"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 552
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getAppIndexByGroupId(I)I
    .locals 3
    .param p1, "group"    # I

    .prologue
    .line 823
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-lt p1, v0, :cond_1

    .line 824
    :cond_0
    sget-object v0, Lcom/android/shotcutkey/ShotcutKeyDB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getAppByGroupId() group is error!! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    const/4 v0, -0x1

    .line 827
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->GROUP_APP_STRING:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 828
    iget-object v1, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->GROUP_APP_DEFAULT_VALUE:[I

    aget v1, v1, p1

    .line 827
    invoke-direct {p0, v0, v1}, Lcom/android/shotcutkey/ShotcutKeyDB;->getIntValueByKey(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getAppInfoByGroupId(I)Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;
    .locals 7
    .param p1, "group"    # I

    .prologue
    const/4 v6, 0x1

    .line 587
    invoke-virtual {p0, p1}, Lcom/android/shotcutkey/ShotcutKeyDB;->getAppIndexByGroupId(I)I

    move-result v2

    .line 589
    .local v2, "index":I
    const/4 v4, 0x4

    if-ne v2, v4, :cond_0

    .line 590
    invoke-direct {p0, p1}, Lcom/android/shotcutkey/ShotcutKeyDB;->getOpenAppInfo(I)Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;

    move-result-object v0

    .line 600
    .local v0, "appInfo":Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;
    :goto_0
    return-object v0

    .line 591
    .end local v0    # "appInfo":Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;
    :cond_0
    if-ne v2, v6, :cond_1

    .line 592
    invoke-virtual {p0, p1}, Lcom/android/shotcutkey/ShotcutKeyDB;->getShareAppInfo(I)Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;

    move-result-object v0

    .line 593
    .restart local v0    # "appInfo":Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;
    goto :goto_0

    .line 594
    .end local v0    # "appInfo":Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;
    :cond_1
    iget-object v4, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->package_and_class_name:[[Ljava/lang/String;

    aget-object v4, v4, v2

    const/4 v5, 0x0

    aget-object v3, v4, v5

    .line 595
    .local v3, "pn":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->package_and_class_name:[[Ljava/lang/String;

    aget-object v4, v4, v2

    aget-object v1, v4, v6

    .line 597
    .local v1, "cn":Ljava/lang/String;
    new-instance v0, Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;

    invoke-direct {v0, p0, v3, v1}, Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;-><init>(Lcom/android/shotcutkey/ShotcutKeyDB;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "appInfo":Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;
    goto :goto_0
.end method

.method public getGroupData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/shotcutkey/ShotcutKeyDB$groupData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->mGroupData:Ljava/util/List;

    return-object v0
.end method

.method public getShareAppDetailInfoByGroupAndMode(II)Lcom/android/shotcutkey/ShotcutKeyDB$appDetailInfo;
    .locals 4
    .param p1, "group"    # I
    .param p2, "mode"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 793
    if-ltz p1, :cond_0

    const/4 v1, 0x3

    if-lt p1, v1, :cond_1

    .line 794
    :cond_0
    sget-object v1, Lcom/android/shotcutkey/ShotcutKeyDB;->TAG:Ljava/lang/String;

    .line 795
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getShareAppDetailInfoByGroupAndMode() group is error!! "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 796
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 795
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 794
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :goto_0
    return-object v0

    .line 800
    :cond_1
    if-eq p2, v3, :cond_2

    if-eqz p2, :cond_2

    .line 801
    sget-object v1, Lcom/android/shotcutkey/ShotcutKeyDB;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getShareAppDetailInfoByGroupAndMode() mode is error!! "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 802
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 801
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 806
    :cond_2
    new-instance v0, Lcom/android/shotcutkey/ShotcutKeyDB$appDetailInfo;

    iget-object v1, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->share_detail_info:[[I

    aget-object v1, v1, p2

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 807
    iget-object v2, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->share_detail_info:[[I

    aget-object v2, v2, p2

    aget v2, v2, v3

    .line 806
    invoke-direct {v0, p0, v1, v2}, Lcom/android/shotcutkey/ShotcutKeyDB$appDetailInfo;-><init>(Lcom/android/shotcutkey/ShotcutKeyDB;II)V

    goto :goto_0
.end method

.method public getShareAppDrawableAndLabelByIndex(I)Lcom/android/shotcutkey/ShotcutKeyDB$appData;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 832
    new-instance v0, Lcom/android/shotcutkey/ShotcutKeyDB$appData;

    iget-object v1, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->shareAppInfo:[[I

    aget-object v1, v1, p1

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->shareAppInfo:[[I

    aget-object v2, v2, p1

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-direct {v0, p0, v1, v2}, Lcom/android/shotcutkey/ShotcutKeyDB$appData;-><init>(Lcom/android/shotcutkey/ShotcutKeyDB;II)V

    return-object v0
.end method

.method public getShareAppIndexByGroupId(I)I
    .locals 2
    .param p1, "group"    # I

    .prologue
    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->SHARE_APP_INDEX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 788
    const/4 v1, -0x1

    .line 787
    invoke-direct {p0, v0, v1}, Lcom/android/shotcutkey/ShotcutKeyDB;->getIntValueByKey(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getShareAppInfo(I)Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;
    .locals 8
    .param p1, "group"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 620
    invoke-virtual {p0, p1}, Lcom/android/shotcutkey/ShotcutKeyDB;->getShareAppModeByGroupId(I)I

    move-result v1

    .line 621
    .local v1, "mode":I
    if-ne v1, v6, :cond_1

    .line 623
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->SHARE_APP_PN_CN_STRING:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 622
    invoke-direct {p0, v3, v7}, Lcom/android/shotcutkey/ShotcutKeyDB;->getStringValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 625
    .local v2, "pn":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->SHARE_APP_PN_CN_STRING:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 624
    invoke-direct {p0, v3, v7}, Lcom/android/shotcutkey/ShotcutKeyDB;->getStringValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "cn":Ljava/lang/String;
    :goto_0
    sget-boolean v3, Lcom/android/shotcutkey/ShotcutKeyDB;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 632
    sget-object v3, Lcom/android/shotcutkey/ShotcutKeyDB;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getShareAppInfo() group = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",  mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 633
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",  pn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",  cn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 632
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_0
    new-instance v3, Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;-><init>(Lcom/android/shotcutkey/ShotcutKeyDB;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 627
    .end local v0    # "cn":Ljava/lang/String;
    .end local v2    # "pn":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .line 628
    .restart local v2    # "pn":Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0    # "cn":Ljava/lang/String;
    goto :goto_0
.end method

.method public getShareAppModeByGroupId(I)I
    .locals 2
    .param p1, "group"    # I

    .prologue
    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->SHARE_APP_MODE:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 783
    const/4 v1, -0x1

    .line 782
    invoke-direct {p0, v0, v1}, Lcom/android/shotcutkey/ShotcutKeyDB;->getIntValueByKey(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getStateByGroupIdAndChildId(II)Z
    .locals 2
    .param p1, "group"    # I
    .param p2, "child"    # I

    .prologue
    .line 575
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->CHILD_TOUCH_APP:[Ljava/lang/String;

    aget-object v0, v0, p2

    .line 577
    sget-object v1, Lcom/android/shotcutkey/ShotcutKeyDB;->mShotcutKeyDB:Lcom/android/shotcutkey/ShotcutKeyDB;

    iget-object v1, v1, Lcom/android/shotcutkey/ShotcutKeyDB;->CHILD_TOUCH_APP_ENABLED:[Z

    aget-boolean v1, v1, p2

    .line 576
    invoke-direct {p0, v0, v1}, Lcom/android/shotcutkey/ShotcutKeyDB;->getBooleanValueByKey(Ljava/lang/String;Z)Z

    move-result v0

    .line 579
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->GROUP_EANBLED_STRING:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 580
    iget-object v1, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->GROUP_ENABLED_DEFAULT_VALUE:[Z

    aget-boolean v1, v1, p1

    .line 579
    invoke-direct {p0, v0, v1}, Lcom/android/shotcutkey/ShotcutKeyDB;->getBooleanValueByKey(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public initKeyValueByGroup(I)V
    .locals 3
    .param p1, "group"    # I

    .prologue
    .line 350
    sget-boolean v0, Lcom/android/shotcutkey/ShotcutKeyDB;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 351
    sget-object v0, Lcom/android/shotcutkey/ShotcutKeyDB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initKeyValueByGroup() group = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->GROUP_EANBLED_STRING:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 354
    iget-object v1, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->GROUP_ENABLED_DEFAULT_VALUE:[Z

    aget-boolean v1, v1, p1

    .line 353
    invoke-direct {p0, v0, v1}, Lcom/android/shotcutkey/ShotcutKeyDB;->putBooleanbyKey(Ljava/lang/String;Z)V

    .line 355
    iget-object v0, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->GROUP_APP_STRING:[Ljava/lang/String;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->GROUP_APP_DEFAULT_VALUE:[I

    aget v1, v1, p1

    invoke-direct {p0, v0, v1}, Lcom/android/shotcutkey/ShotcutKeyDB;->putIntbyKey(Ljava/lang/String;I)V

    .line 357
    if-nez p1, :cond_1

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->SHARE_APP_MODE:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    const/4 v1, 0x0

    .line 358
    invoke-direct {p0, v0, v1}, Lcom/android/shotcutkey/ShotcutKeyDB;->putIntbyKey(Ljava/lang/String;I)V

    .line 362
    :cond_1
    invoke-direct {p0}, Lcom/android/shotcutkey/ShotcutKeyDB;->initListData()V

    .line 363
    return-void
.end method

.method public registerAppChangedCallback(Lcom/android/shotcutkey/ShotcutKeyDB$appChangedCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/shotcutkey/ShotcutKeyDB$appChangedCallback;

    .prologue
    .line 811
    sget-object v0, Lcom/android/shotcutkey/ShotcutKeyDB;->mAppChangedCallback:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    return-void
.end method

.method public saveAppIndexByGroupId(II)Z
    .locals 4
    .param p1, "group"    # I
    .param p2, "index"    # I

    .prologue
    .line 659
    if-ltz p1, :cond_0

    const/4 v1, 0x3

    if-lt p1, v1, :cond_1

    .line 660
    :cond_0
    sget-object v1, Lcom/android/shotcutkey/ShotcutKeyDB;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveAppIndexByGroupId() group is error!! "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const/4 v1, 0x0

    .line 671
    :goto_0
    return v1

    .line 664
    :cond_1
    iget-object v1, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->GROUP_APP_STRING:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-direct {p0, v1, p2}, Lcom/android/shotcutkey/ShotcutKeyDB;->putIntbyKey(Ljava/lang/String;I)V

    .line 666
    invoke-direct {p0}, Lcom/android/shotcutkey/ShotcutKeyDB;->flushListData()V

    .line 667
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/android/shotcutkey/ShotcutKeyDB;->mAppChangedCallback:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 671
    const/4 v1, 0x1

    goto :goto_0

    .line 668
    :cond_2
    sget-object v1, Lcom/android/shotcutkey/ShotcutKeyDB;->mAppChangedCallback:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/shotcutkey/ShotcutKeyDB$appChangedCallback;

    invoke-interface {v1}, Lcom/android/shotcutkey/ShotcutKeyDB$appChangedCallback;->onAppChanged()V

    .line 667
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public saveAppInfo(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "group"    # I
    .param p2, "mode"    # I
    .param p3, "pn"    # Ljava/lang/String;
    .param p4, "cn"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 675
    if-ltz p1, :cond_0

    const/4 v4, 0x3

    if-lt p1, v4, :cond_1

    .line 676
    :cond_0
    sget-object v3, Lcom/android/shotcutkey/ShotcutKeyDB;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "saveAppInfo() group is error!! "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :goto_0
    return v2

    .line 679
    :cond_1
    if-eq p2, v5, :cond_2

    if-eq p2, v3, :cond_2

    .line 680
    sget-object v3, Lcom/android/shotcutkey/ShotcutKeyDB;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "saveOpenAppInfo() mode is error!! "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 684
    :cond_2
    iget-object v4, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->GROUP_APP_STRING:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-direct {p0, v4, p2}, Lcom/android/shotcutkey/ShotcutKeyDB;->putIntbyKey(Ljava/lang/String;I)V

    .line 686
    if-ne p2, v5, :cond_4

    .line 687
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->OPEN_APP_PN_CN_STRING:[Ljava/lang/String;

    aget-object v2, v5, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/android/shotcutkey/ShotcutKeyDB;->putStringbyKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->OPEN_APP_PN_CN_STRING:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p4}, Lcom/android/shotcutkey/ShotcutKeyDB;->putStringbyKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/shotcutkey/ShotcutKeyDB;->flushListData()V

    .line 704
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    sget-object v2, Lcom/android/shotcutkey/ShotcutKeyDB;->mAppChangedCallback:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_6

    move v2, v3

    .line 708
    goto :goto_0

    .line 690
    .end local v0    # "i":I
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/shotcutkey/ShotcutKeyDB;->getShareAppModeByGroupId(I)I

    move-result v1

    .line 691
    .local v1, "sharemode":I
    sget-boolean v4, Lcom/android/shotcutkey/ShotcutKeyDB;->DEBUG:Z

    if-eqz v4, :cond_5

    .line 692
    sget-object v4, Lcom/android/shotcutkey/ShotcutKeyDB;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "saveAppInfo() group = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",  sharemode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 693
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",  pn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",  cn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 692
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_5
    if-ne v1, v3, :cond_3

    .line 697
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->SHARE_APP_PN_CN_STRING:[Ljava/lang/String;

    aget-object v2, v5, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 696
    invoke-direct {p0, v2, p3}, Lcom/android/shotcutkey/ShotcutKeyDB;->putStringbyKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->SHARE_APP_PN_CN_STRING:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 698
    invoke-direct {p0, v2, p4}, Lcom/android/shotcutkey/ShotcutKeyDB;->putStringbyKey(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 705
    .end local v1    # "sharemode":I
    .restart local v0    # "i":I
    :cond_6
    sget-object v2, Lcom/android/shotcutkey/ShotcutKeyDB;->mAppChangedCallback:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/shotcutkey/ShotcutKeyDB$appChangedCallback;

    invoke-interface {v2}, Lcom/android/shotcutkey/ShotcutKeyDB$appChangedCallback;->onAppChanged()V

    .line 704
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2
.end method

.method public saveShareAppIndex(II)Z
    .locals 4
    .param p1, "group"    # I
    .param p2, "index"    # I

    .prologue
    .line 762
    if-ltz p1, :cond_0

    const/4 v1, 0x3

    if-lt p1, v1, :cond_1

    .line 763
    :cond_0
    sget-object v1, Lcom/android/shotcutkey/ShotcutKeyDB;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveShareAppIndex() group is error!! "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    const/4 v1, 0x0

    .line 778
    :goto_0
    return v1

    .line 767
    :cond_1
    sget-boolean v1, Lcom/android/shotcutkey/ShotcutKeyDB;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 768
    sget-object v1, Lcom/android/shotcutkey/ShotcutKeyDB;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveShareAppIndex() group = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",  index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 769
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 768
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->SHARE_APP_INDEX:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/shotcutkey/ShotcutKeyDB;->putIntbyKey(Ljava/lang/String;I)V

    .line 773
    invoke-direct {p0}, Lcom/android/shotcutkey/ShotcutKeyDB;->flushListData()V

    .line 774
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/android/shotcutkey/ShotcutKeyDB;->mAppChangedCallback:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 778
    const/4 v1, 0x1

    goto :goto_0

    .line 775
    :cond_3
    sget-object v1, Lcom/android/shotcutkey/ShotcutKeyDB;->mAppChangedCallback:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/shotcutkey/ShotcutKeyDB$appChangedCallback;

    invoke-interface {v1}, Lcom/android/shotcutkey/ShotcutKeyDB$appChangedCallback;->onAppChanged()V

    .line 774
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public saveShareAppInfo(III)Z
    .locals 5
    .param p1, "group"    # I
    .param p2, "mode"    # I
    .param p3, "index"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 712
    if-ltz p1, :cond_0

    const/4 v3, 0x3

    if-lt p1, v3, :cond_1

    .line 713
    :cond_0
    sget-object v2, Lcom/android/shotcutkey/ShotcutKeyDB;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "saveShareAppInfo() group is error!! "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :goto_0
    return v1

    .line 716
    :cond_1
    if-eqz p2, :cond_2

    if-eq p2, v2, :cond_2

    .line 717
    sget-object v2, Lcom/android/shotcutkey/ShotcutKeyDB;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "saveShareAppInfo() mode is error!! "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 721
    :cond_2
    sget-boolean v1, Lcom/android/shotcutkey/ShotcutKeyDB;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 722
    sget-object v1, Lcom/android/shotcutkey/ShotcutKeyDB;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "saveShareAppInfo() group = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 723
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 722
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->SHARE_APP_MODE:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/shotcutkey/ShotcutKeyDB;->putIntbyKey(Ljava/lang/String;I)V

    .line 726
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->SHARE_APP_INDEX:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/android/shotcutkey/ShotcutKeyDB;->putIntbyKey(Ljava/lang/String;I)V

    .line 728
    invoke-direct {p0}, Lcom/android/shotcutkey/ShotcutKeyDB;->flushListData()V

    .line 729
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/android/shotcutkey/ShotcutKeyDB;->mAppChangedCallback:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_4

    move v1, v2

    .line 733
    goto/16 :goto_0

    .line 730
    :cond_4
    sget-object v1, Lcom/android/shotcutkey/ShotcutKeyDB;->mAppChangedCallback:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/shotcutkey/ShotcutKeyDB$appChangedCallback;

    invoke-interface {v1}, Lcom/android/shotcutkey/ShotcutKeyDB$appChangedCallback;->onAppChanged()V

    .line 729
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public saveShareAppMode(II)Z
    .locals 5
    .param p1, "group"    # I
    .param p2, "mode"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 737
    if-ltz p1, :cond_0

    const/4 v3, 0x3

    if-lt p1, v3, :cond_1

    .line 738
    :cond_0
    sget-object v2, Lcom/android/shotcutkey/ShotcutKeyDB;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "saveShareAppMode() group is error!! "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :goto_0
    return v1

    .line 741
    :cond_1
    if-eqz p2, :cond_2

    if-eq p2, v2, :cond_2

    .line 742
    const/4 v3, -0x1

    if-eq p2, v3, :cond_2

    .line 743
    sget-object v2, Lcom/android/shotcutkey/ShotcutKeyDB;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "saveShareAppMode() mode is error!! "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 747
    :cond_2
    sget-boolean v1, Lcom/android/shotcutkey/ShotcutKeyDB;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 748
    sget-object v1, Lcom/android/shotcutkey/ShotcutKeyDB;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "saveShareAppMode() group = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 749
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 748
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->SHARE_APP_MODE:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/shotcutkey/ShotcutKeyDB;->putIntbyKey(Ljava/lang/String;I)V

    .line 753
    invoke-direct {p0}, Lcom/android/shotcutkey/ShotcutKeyDB;->flushListData()V

    .line 754
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/android/shotcutkey/ShotcutKeyDB;->mAppChangedCallback:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_4

    move v1, v2

    .line 758
    goto :goto_0

    .line 755
    :cond_4
    sget-object v1, Lcom/android/shotcutkey/ShotcutKeyDB;->mAppChangedCallback:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/shotcutkey/ShotcutKeyDB$appChangedCallback;

    invoke-interface {v1}, Lcom/android/shotcutkey/ShotcutKeyDB$appChangedCallback;->onAppChanged()V

    .line 754
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public saveStateByGroupIdAndChildId(IIZ)Z
    .locals 4
    .param p1, "group"    # I
    .param p2, "child"    # I
    .param p3, "value"    # Z

    .prologue
    const/4 v1, 0x3

    .line 640
    if-ne p1, v1, :cond_0

    .line 641
    iget-object v1, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->CHILD_TOUCH_APP:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-direct {p0, v1, p3}, Lcom/android/shotcutkey/ShotcutKeyDB;->putBooleanbyKey(Ljava/lang/String;Z)V

    .line 650
    :goto_0
    invoke-direct {p0}, Lcom/android/shotcutkey/ShotcutKeyDB;->flushListData()V

    .line 651
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/android/shotcutkey/ShotcutKeyDB;->mAppChangedCallback:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 655
    const/4 v1, 0x1

    .end local v0    # "i":I
    :goto_2
    return v1

    .line 642
    :cond_0
    if-ltz p1, :cond_1

    if-ge p1, v1, :cond_1

    .line 643
    iget-object v1, p0, Lcom/android/shotcutkey/ShotcutKeyDB;->GROUP_EANBLED_STRING:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-direct {p0, v1, p3}, Lcom/android/shotcutkey/ShotcutKeyDB;->putBooleanbyKey(Ljava/lang/String;Z)V

    goto :goto_0

    .line 645
    :cond_1
    sget-object v1, Lcom/android/shotcutkey/ShotcutKeyDB;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveStateByGroupIdAndChildId() group is error!! "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 646
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 645
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const/4 v1, 0x0

    goto :goto_2

    .line 652
    .restart local v0    # "i":I
    :cond_2
    sget-object v1, Lcom/android/shotcutkey/ShotcutKeyDB;->mAppChangedCallback:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/shotcutkey/ShotcutKeyDB$appChangedCallback;

    invoke-interface {v1}, Lcom/android/shotcutkey/ShotcutKeyDB$appChangedCallback;->onAppChanged()V

    .line 651
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public unRegisterAppChangedCallback(Lcom/android/shotcutkey/ShotcutKeyDB$appChangedCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/android/shotcutkey/ShotcutKeyDB$appChangedCallback;

    .prologue
    .line 815
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/shotcutkey/ShotcutKeyDB;->mAppChangedCallback:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 820
    return-void

    .line 816
    :cond_0
    sget-object v1, Lcom/android/shotcutkey/ShotcutKeyDB;->mAppChangedCallback:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/shotcutkey/ShotcutKeyDB$appChangedCallback;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 817
    sget-object v1, Lcom/android/shotcutkey/ShotcutKeyDB;->mAppChangedCallback:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 815
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
