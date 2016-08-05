.class public final Landroid/provider/ZteSettings;
.super Ljava/lang/Object;
.source "ZteSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/ZteSettings$Value;,
        Landroid/provider/ZteSettings$Config;,
        Landroid/provider/ZteSettings$VoiceSwitch;,
        Landroid/provider/ZteSettings$ColorTemperatureMode;,
        Landroid/provider/ZteSettings$ScreenEffectMode;,
        Landroid/provider/ZteSettings$GloveMode;,
        Landroid/provider/ZteSettings$Global;,
        Landroid/provider/ZteSettings$Secure;,
        Landroid/provider/ZteSettings$System;
    }
.end annotation


# static fields
.field public static final ACTION_RINGER_CHANGED:Ljava/lang/String; = "cn.com.zte.settings.RINGER_CHANGED"

.field public static final ACTION_SETTINGS_CHANGING:Ljava/lang/String; = "cn.com.zte.settings.SETTINGS_CHANGING"

.field public static final ACTION_VOICEASSISTANT_INIT_READY:Ljava/lang/String; = "VOICEASSISTANT_INIT_READY"

.field public static final ACTION_VOICE_SENSE_ENABLED:Ljava/lang/String; = "VOICE_SENSE_ENABLED"

.field private static final CONFIG_DEFAULT:Ljava/lang/String; = "1000000.0000000.0000010.0000010.0000000.0s00000"

.field private static final CONFIG_MF30:Ljava/lang/String; = "0000000.0000000.0001010.0000011.0000000.0f00000"

.field public static final CONFIG_NETWORK_MODE_TYPE:I = 0x15

.field private static final CONFIG_P894A02:Ljava/lang/String; = "1000000.0000000.0000010.0003010.0000000.0s01000"

.field private static final CONFIG_P897A20:Ljava/lang/String; = "1000000.1001100.0001110.0001011.0000000.0f21000"

.field private static final CONFIG_P897S10:Ljava/lang/String; = "0000000.1001100.0101100.0003011.1000000.0f21000"

.field private static final CONFIG_P897S11:Ljava/lang/String; = "0000000.0001100.0101100.0002001.0000000.0f01000"

.field private static final CONFIG_P897S15:Ljava/lang/String; = "0000000.0001100.0101100.0002001.0000000.af00000"

.field private static final CONFIG_P897S20:Ljava/lang/String; = "0000000.1001100.0101100.0003111.0000000.0f01000"

.field private static final CONFIG_P898S10:Ljava/lang/String; = "1000000.0001100.0101110.0001011.0000000.0f11000"

.field private static final CONFIG_PROP:Ljava/lang/String; = "persist.sys.settings.config"

.field public static final CONFIG_WIFI:I = 0x1b

.field public static final CONFIG_WIFI_OPTIONAL:I = 0x2b

.field private static final DEF_VAL:Ljava/lang/String; = "0"

.field private static final DEF_VAL_SET:Ljava/lang/String; = "0,1"

.field public static final EXTRA_KEY:Ljava/lang/String; = "key"

.field public static final EXTRA_VAL:Ljava/lang/String; = "val"

.field public static final NOTIFICATION_RINGTONE:Ljava/lang/String; = "pref_key_ringtone"

.field private static final PRJ_CONFIG_DIR:Ljava/lang/String; = "/system/etc"

.field public static final PROP_IMMERSION_VIBRATE:Ljava/lang/String; = "persist.sys.immersion_vibrate"

.field private static final TAG:Ljava/lang/String; = "zte_settings"

.field private static final UPDATE_CONFIG_DIR:Ljava/lang/String; = "docs/config"

.field private static final VAL_SEP:Ljava/lang/String; = ","

.field private static final mAllowUndefined:Z

.field private static mArbitCfg:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mConfig:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mDefVal:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mFilenameFilter:Ljava/io/FilenameFilter;

.field private static mMultipleCfg:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mPrj2Cfg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mProxyCfg:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSingleCfg:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSwitchCfg:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mValSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 463
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    .line 465
    sget-object v1, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v2, "P897A20"

    const-string v3, "1000000.1001100.0001110.0001011.0000000.0f21000"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v1, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v2, "ZTE Grand S II LTE"

    const-string v3, "1000000.1001100.0001110.0001011.0000000.0f21000"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v1, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v2, "P898S10"

    const-string v3, "1000000.0001100.0101110.0001011.0000000.0f11000"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v1, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v2, "ZTE STAR"

    const-string v3, "1000000.0001100.0101110.0001011.0000000.0f11000"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    sget-object v1, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v2, "MF30"

    const-string v3, "0000000.0000000.0001010.0000011.0000000.0f00000"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v1, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v2, "MiFavor V3"

    const-string v3, "0000000.0000000.0001010.0000011.0000000.0f00000"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    sget-object v1, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v2, "P897S11"

    const-string v3, "0000000.0001100.0101100.0002001.0000000.0f01000"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    sget-object v1, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v2, "ZTE S2005"

    const-string v3, "0000000.0001100.0101100.0002001.0000000.0f01000"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    sget-object v1, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v2, "P897S10"

    const-string v3, "0000000.1001100.0101100.0003011.1000000.0f21000"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object v1, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v2, "ZTE S2004"

    const-string v3, "0000000.1001100.0101100.0003011.1000000.0f21000"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    sget-object v1, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v2, "P897S20"

    const-string v3, "0000000.1001100.0101100.0003111.0000000.0f01000"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    sget-object v1, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v2, "P897S15"

    const-string v3, "0000000.0001100.0101100.0002001.0000000.af00000"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    sget-object v1, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v2, "ZTE S2007"

    const-string v3, "0000000.0001100.0101100.0002001.0000000.af00000"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    sget-object v1, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v2, "P894A02"

    const-string v3, "1000000.0000000.0000010.0003010.0000000.0s01000"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/provider/ZteSettings;->mConfig:Ljava/util/HashMap;

    .line 579
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/provider/ZteSettings;->mDefVal:Ljava/util/HashMap;

    .line 580
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/provider/ZteSettings;->mValSet:Ljava/util/HashMap;

    .line 581
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Landroid/provider/ZteSettings;->mSwitchCfg:Ljava/util/HashSet;

    .line 582
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Landroid/provider/ZteSettings;->mSingleCfg:Ljava/util/HashSet;

    .line 583
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Landroid/provider/ZteSettings;->mMultipleCfg:Ljava/util/HashSet;

    .line 584
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Landroid/provider/ZteSettings;->mArbitCfg:Ljava/util/HashSet;

    .line 585
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Landroid/provider/ZteSettings;->mProxyCfg:Ljava/util/HashSet;

    .line 592
    new-instance v1, Landroid/provider/ZteSettings$1;

    invoke-direct {v1}, Landroid/provider/ZteSettings$1;-><init>()V

    sput-object v1, Landroid/provider/ZteSettings;->mFilenameFilter:Ljava/io/FilenameFilter;

    .line 645
    const-string v1, "gesture_motion"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/provider/ZteSettings;->addSwitchConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v1, "glove_mode"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/provider/ZteSettings;->addSwitchConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const-string v1, "mi_pop"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/provider/ZteSettings;->addSwitchConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const-string v1, "notification_pulse"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/provider/ZteSettings;->addSwitchConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const-string v1, "wifi_display"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/provider/ZteSettings;->addSwitchConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const-string v1, "battery"

    const-string v2, "zte"

    const-string v3, "android,zte"

    invoke-static {v1, v2, v3}, Landroid/provider/ZteSettings;->addSingleConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const-string v1, "connect_pc"

    const-string v2, "full"

    const-string v3, "full,lite"

    invoke-static {v1, v2, v3}, Landroid/provider/ZteSettings;->addSingleConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string v1, "network_mode"

    const-string v2, "x"

    const-string v3, "x,y,z"

    invoke-static {v1, v2, v3}, Landroid/provider/ZteSettings;->addSingleConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v1, "wifi_version"

    const-string v2, "rom"

    const-string v3, "rom,online,cmcc,us,other"

    invoke-static {v1, v2, v3}, Landroid/provider/ZteSettings;->addSingleConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const-string v1, "default_ime"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/provider/ZteSettings;->addArbitraryConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string v1, "version_type"

    invoke-static {v1}, Landroid/provider/ZteSettings;->addProxyConfig(Ljava/lang/String;)V

    .line 661
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/provider/ZteSettings;->mFilenameFilter:Ljava/io/FilenameFilter;

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 662
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 663
    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_0
    invoke-static {v1}, Landroid/provider/ZteSettings;->loadConfig(Ljava/io/File;)V

    .line 665
    :cond_0
    return-void

    .line 663
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    return-void
.end method

.method private static addArbitraryConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "cfg"    # Ljava/lang/String;
    .param p1, "defVal"    # Ljava/lang/String;

    .prologue
    .line 685
    sget-object v0, Landroid/provider/ZteSettings;->mDefVal:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    sget-object v0, Landroid/provider/ZteSettings;->mArbitCfg:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 687
    return-void
.end method

.method private static addMultipleConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "cfg"    # Ljava/lang/String;
    .param p1, "defVal"    # Ljava/lang/String;
    .param p2, "valSet"    # Ljava/lang/String;

    .prologue
    .line 679
    sget-object v0, Landroid/provider/ZteSettings;->mDefVal:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    sget-object v0, Landroid/provider/ZteSettings;->mValSet:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    sget-object v0, Landroid/provider/ZteSettings;->mMultipleCfg:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 682
    return-void
.end method

.method private static addProxyConfig(Ljava/lang/String;)V
    .locals 1
    .param p0, "cfg"    # Ljava/lang/String;

    .prologue
    .line 690
    sget-object v0, Landroid/provider/ZteSettings;->mProxyCfg:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 691
    return-void
.end method

.method private static addSingleConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "cfg"    # Ljava/lang/String;
    .param p1, "defVal"    # Ljava/lang/String;
    .param p2, "valSet"    # Ljava/lang/String;

    .prologue
    .line 672
    sget-object v0, Landroid/provider/ZteSettings;->mDefVal:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    sget-object v0, Landroid/provider/ZteSettings;->mValSet:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    sget-object v0, Landroid/provider/ZteSettings;->mSingleCfg:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 675
    return-void
.end method

.method private static addSwitchConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "cfg"    # Ljava/lang/String;
    .param p1, "defVal"    # Ljava/lang/String;

    .prologue
    .line 668
    sget-object v0, Landroid/provider/ZteSettings;->mDefVal:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    return-void
.end method

.method private static extractValSet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "tip"    # Ljava/lang/String;

    .prologue
    .line 735
    const/4 v1, 0x0

    .line 736
    .local v1, "start":I
    const/4 v0, 0x0

    .line 738
    .local v0, "end":I
    const-string v3, "["

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 739
    const-string v3, "]"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 747
    :goto_0
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 748
    .local v2, "valSet":Ljava/lang/String;
    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 749
    sget-object v3, Landroid/provider/ZteSettings;->mArbitCfg:Ljava/util/HashSet;

    invoke-virtual {v3, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 753
    :goto_1
    sget-object v3, Landroid/provider/ZteSettings;->mValSet:Ljava/util/HashMap;

    invoke-virtual {v3, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    .end local v2    # "valSet":Ljava/lang/String;
    :goto_2
    return-object v2

    .line 740
    :cond_0
    const-string v3, "{"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 741
    const-string v3, "}"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 742
    sget-object v3, Landroid/provider/ZteSettings;->mMultipleCfg:Ljava/util/HashSet;

    invoke-virtual {v3, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 744
    :cond_1
    const-string v2, ""

    goto :goto_2

    .line 751
    .restart local v2    # "valSet":Ljava/lang/String;
    :cond_2
    sget-object v3, Landroid/provider/ZteSettings;->mSingleCfg:Ljava/util/HashSet;

    invoke-virtual {v3, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static getAllConfigs()Ljava/lang/String;
    .locals 5

    .prologue
    .line 560
    const-string v3, "ro.product.name"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 561
    .local v1, "name":Ljava/lang/String;
    const-string v3, "ro.product.model"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, "model":Ljava/lang/String;
    const-string v3, "persist.sys.settings.config"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 564
    .local v2, "prop":Ljava/lang/String;
    sget-object v3, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 565
    sget-object v3, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 571
    :goto_0
    return-object v3

    .line 566
    :cond_0
    sget-object v3, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 567
    sget-object v3, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    .line 568
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v2

    .line 569
    goto :goto_0

    .line 571
    :cond_2
    const-string v3, "1000000.0000000.0000010.0000010.0000000.0s00000"

    goto :goto_0
.end method

.method public static getConfig(I)C
    .locals 2
    .param p0, "pos"    # I

    .prologue
    .line 499
    invoke-static {}, Landroid/provider/ZteSettings;->getAllConfigs()Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, "cfgs":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 502
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 504
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x20

    goto :goto_0
.end method

.method public static getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 544
    sget-object v0, Landroid/provider/ZteSettings;->mProxyCfg:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    invoke-static {p0}, Landroid/provider/ZteSettings;->getProxyConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 548
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/ZteSettings;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private static getDefVal(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 827
    sget-object v0, Landroid/provider/ZteSettings;->mDefVal:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    sget-object v0, Landroid/provider/ZteSettings;->mDefVal:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 831
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private static getProxyConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "cfg"    # Ljava/lang/String;

    .prologue
    .line 694
    sget-object v0, Landroid/provider/ZteSettings;->mProxyCfg:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 695
    const/4 v0, 0x0

    .line 702
    :goto_0
    return-object v0

    .line 698
    :cond_0
    const-string v0, "version_type"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 699
    const-string v0, "ro.product.versiontype"

    const-string v1, "UNSET"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 702
    :cond_1
    const-string v0, "no_handler"

    goto :goto_0
.end method

.method private static getTip(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 835
    sget-object v0, Landroid/provider/ZteSettings;->mArbitCfg:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/provider/ZteSettings;->mProxyCfg:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 836
    :cond_0
    const-string v0, "[*]"

    .line 847
    :goto_0
    return-object v0

    .line 839
    :cond_1
    sget-object v0, Landroid/provider/ZteSettings;->mValSet:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 840
    sget-object v0, Landroid/provider/ZteSettings;->mMultipleCfg:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Landroid/provider/ZteSettings;->mValSet:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 844
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Landroid/provider/ZteSettings;->mValSet:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 847
    :cond_3
    const-string v0, "[0,1]"

    goto :goto_0
.end method

.method private static getValidValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 851
    const-string v0, "0,1"

    .line 852
    .local v0, "vvs":Ljava/lang/String;
    sget-object v1, Landroid/provider/ZteSettings;->mValSet:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 853
    sget-object v1, Landroid/provider/ZteSettings;->mValSet:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "vvs":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 856
    .restart local v0    # "vvs":Ljava/lang/String;
    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static initDefaultConfig()V
    .locals 11

    .prologue
    .line 811
    const-class v2, Landroid/provider/ZteSettings$Config;

    .line 812
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/provider/ZteSettings$Config;>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 813
    .local v5, "fds":[Ljava/lang/reflect/Field;
    move-object v1, v5

    .local v1, "arr$":[Ljava/lang/reflect/Field;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v4, v1, v6

    .line 814
    .local v4, "fd":Ljava/lang/reflect/Field;
    const/4 v7, 0x0

    .line 816
    .local v7, "key":Ljava/lang/String;
    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v4, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 821
    :goto_1
    invoke-static {v7}, Landroid/provider/ZteSettings;->getDefVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 822
    .local v9, "val":Ljava/lang/String;
    sget-object v10, Landroid/provider/ZteSettings;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v10, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 817
    .end local v9    # "val":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 818
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 824
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "fd":Ljava/lang/reflect/Field;
    .end local v7    # "key":Ljava/lang/String;
    :cond_0
    return-void

    .line 817
    .restart local v4    # "fd":Ljava/lang/reflect/Field;
    .restart local v7    # "key":Ljava/lang/String;
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method public static isConfiged(I)Z
    .locals 4
    .param p0, "pos"    # I

    .prologue
    const/4 v1, 0x0

    .line 489
    invoke-static {}, Landroid/provider/ZteSettings;->getAllConfigs()Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, "cfgs":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p0, v2, :cond_0

    .line 492
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    invoke-static {p0}, Landroid/provider/ZteSettings;->isSupported(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 494
    :cond_0
    return v1
.end method

.method public static isConfiged(Ljava/lang/String;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 509
    sget-object v0, Landroid/provider/ZteSettings;->mProxyCfg:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    const-string v0, "1"

    invoke-static {p0}, Landroid/provider/ZteSettings;->getProxyConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 513
    :goto_0
    return v0

    :cond_0
    const-string v0, "1"

    sget-object v1, Landroid/provider/ZteSettings;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isConfiged(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "values"    # Ljava/lang/String;

    .prologue
    .line 517
    sget-object v4, Landroid/provider/ZteSettings;->mProxyCfg:Ljava/util/HashSet;

    invoke-virtual {v4, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 518
    invoke-static {p0}, Landroid/provider/ZteSettings;->getProxyConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 526
    :goto_0
    return v4

    .line 521
    :cond_0
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 522
    .local v3, "val":Ljava/lang/String;
    invoke-static {p0, v3}, Landroid/provider/ZteSettings;->isConfigedIt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 523
    const/4 v4, 0x0

    goto :goto_0

    .line 521
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 526
    .end local v3    # "val":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private static isConfigedIt(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 530
    sget-object v4, Landroid/provider/ZteSettings;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    .line 540
    :goto_0
    return v4

    .line 534
    :cond_0
    sget-object v4, Landroid/provider/ZteSettings;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 535
    .local v3, "v":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 536
    const/4 v4, 0x1

    goto :goto_0

    .line 534
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3    # "v":Ljava/lang/String;
    :cond_2
    move v4, v5

    .line 540
    goto :goto_0
.end method

.method private static isSupported(I)Z
    .locals 1
    .param p0, "pos"    # I

    .prologue
    .line 552
    .line 555
    const/4 v0, 0x1

    return v0
.end method

.method private static isValidValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 860
    sget-object v6, Landroid/provider/ZteSettings;->mArbitCfg:Ljava/util/HashSet;

    invoke-virtual {v6, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Landroid/provider/ZteSettings;->mProxyCfg:Ljava/util/HashSet;

    invoke-virtual {v6, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 870
    :cond_0
    :goto_0
    return v5

    .line 864
    :cond_1
    invoke-static {p0}, Landroid/provider/ZteSettings;->getValidValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 865
    .local v4, "vvs":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 866
    .local v3, "vv":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 865
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 870
    .end local v3    # "vv":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private static loadConfig(Ljava/io/File;)V
    .locals 1
    .param p0, "confFile"    # Ljava/io/File;

    .prologue
    .line 718
    sget-object v0, Landroid/provider/ZteSettings;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 719
    invoke-static {}, Landroid/provider/ZteSettings;->initDefaultConfig()V

    .line 720
    invoke-static {p0}, Landroid/provider/ZteSettings;->readFile(Ljava/io/File;)V

    .line 721
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 706
    new-instance v5, Ljava/io/File;

    const-string v6, "docs/config"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/provider/ZteSettings;->mFilenameFilter:Ljava/io/FilenameFilter;

    invoke-virtual {v5, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 708
    .local v2, "files":[Ljava/io/File;
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 709
    .local v1, "file":Ljava/io/File;
    invoke-static {v1}, Landroid/provider/ZteSettings;->loadConfig(Ljava/io/File;)V

    .line 710
    invoke-static {v1}, Landroid/provider/ZteSettings;->updateConfigFile(Ljava/io/File;)V

    .line 711
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CONFIG:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/provider/ZteSettings;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 712
    invoke-static {}, Landroid/provider/ZteSettings;->test()V

    .line 708
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 715
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private static readFile(Ljava/io/File;)V
    .locals 9
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 759
    if-nez p0, :cond_0

    .line 808
    :goto_0
    return-void

    .line 764
    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v7, 0x400

    invoke-direct {v4, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    .local v4, "reader":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 769
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 770
    const-string v6, "=|;"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 771
    .local v2, "kv":[Ljava/lang/String;
    const-string v6, "#"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    array-length v6, v2

    const/4 v7, 0x2

    if-lt v6, v7, :cond_1

    .line 775
    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 776
    .local v1, "key":Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 778
    .local v5, "val":Ljava/lang/String;
    sget-object v6, Landroid/provider/ZteSettings;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 779
    invoke-static {v1, v5}, Landroid/provider/ZteSettings;->isValidValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 780
    sget-object v6, Landroid/provider/ZteSettings;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v6, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 801
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "kv":[Ljava/lang/String;
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "val":Ljava/lang/String;
    :catchall_0
    move-exception v6

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    throw v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 803
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 804
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "zte_settings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can\'t open file for read:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const-string v6, "zte_settings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 782
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "kv":[Ljava/lang/String;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "val":Ljava/lang/String;
    :cond_2
    :try_start_3
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid value:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 796
    :cond_3
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Undefined config:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 801
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "kv":[Ljava/lang/String;
    .end local v5    # "val":Ljava/lang/String;
    :cond_4
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method

.method private static test()V
    .locals 4

    .prologue
    .line 724
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Test:isConfiged(CFG_MI_POP)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mi_pop"

    invoke-static {v2}, Landroid/provider/ZteSettings;->isConfiged(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 726
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Test:isConfiged(CFG_CONNECT_PC,\"full\")="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "connect_pc"

    const-string v3, "full"

    invoke-static {v2, v3}, Landroid/provider/ZteSettings;->isConfiged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 729
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Test:isConfiged(CFG_CONNECT_PC,\"lite\")="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "connect_pc"

    const-string v3, "lite"

    invoke-static {v2, v3}, Landroid/provider/ZteSettings;->isConfiged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 732
    return-void
.end method

.method private static updateConfigFile(Ljava/io/File;)V
    .locals 7
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 875
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    .local v3, "writer":Ljava/io/FileWriter;
    :try_start_1
    const-string v4, "#Four type:switch,single choice,multiple choice,arbitrary:\n"

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 878
    const-string v4, "#key=0; #[0,1]\n"

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 879
    const-string v4, "#key=value1; #[value1,value2,value3]\n"

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 880
    const-string v4, "#key=value1,value3; #{value1,value2,value3}\n"

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 881
    const-string v4, "#key=value; #[*]\n"

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 882
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 883
    new-instance v4, Ljava/util/TreeSet;

    sget-object v5, Landroid/provider/ZteSettings;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 884
    .local v2, "key":Ljava/lang/String;
    sget-object v4, Landroid/provider/ZteSettings;->mProxyCfg:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 887
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v4, Landroid/provider/ZteSettings;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Landroid/provider/ZteSettings;->getTip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 892
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 894
    .end local v3    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    .line 895
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "zte_settings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can\'t open for write:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    const-string v4, "zte_settings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 890
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 892
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method
