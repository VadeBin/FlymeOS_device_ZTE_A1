.class public Lcom/zte/fingerprint/utils/FingerprintContentProvider;
.super Landroid/content/ContentProvider;
.source "FingerprintContentProvider.java"


# static fields
.field public static final CODE_FINGERPRINT_ENABLED:I = 0x7

.field private static final CODE_LOCK_FOR_APPLICATION:I = 0x2

.field private static final CODE_LOCK_FOR_SCREEN:I = 0x1

.field private static final CODE_LOCK_FOR_SECRET_ZONE:I = 0x3

.field public static final CODE_TOUCH_FOR_ANSWER_CALL:I = 0x6

.field public static final CODE_TOUCH_FOR_TAKE_PHOTO:I = 0x5

.field public static final FINGERPRINT_ENABLED:Ljava/lang/String; = "fingerprint_enabled"

.field public static final FINGERPRINT_SHARED_PREFERENCE:Ljava/lang/String; = "com.zte.fingerprints_preferences"

.field private static final FINGER_INFO:I = 0x4

.field public static final LOCK_FOR_APPLICATION:Ljava/lang/String; = "lock_for_application"

.field public static final LOCK_FOR_SCREEN:Ljava/lang/String; = "lock_for_screen"

.field public static final LOCK_FOR_SECRET_ZONE:Ljava/lang/String; = "lock_for_secret_zone"

.field private static final MATCHER:Landroid/content/UriMatcher;

.field public static final TOUCH_FOR_ANSWER_CALL:Ljava/lang/String; = "touch_for_answer_call"

.field public static final TOUCH_FOR_TAKE_PHOTO:Ljava/lang/String; = "touch_for_take_photo"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 21
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->MATCHER:Landroid/content/UriMatcher;

    .line 34
    sget-object v0, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.zte.fingerprints"

    const-string v2, "screen"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    sget-object v0, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.zte.fingerprints"

    const-string v2, "application"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 38
    sget-object v0, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.zte.fingerprints"

    const-string v2, "zone"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 39
    sget-object v0, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.zte.fingerprints"

    const-string v2, "fingerquery"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    sget-object v0, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.zte.fingerprints"

    const-string v2, "photo"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 41
    sget-object v0, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.zte.fingerprints"

    const-string v2, "call"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    sget-object v0, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.zte.fingerprints"

    const-string v2, "enabled"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getFingerprintPreference()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.zte.fingerprints_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 109
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->getFingerprintPreference()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "fingerprint_enabled"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 110
    .local v0, "value":Z
    sget-object v3, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 133
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 112
    :pswitch_0
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->getFingerprintPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "lock_for_screen"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 113
    goto :goto_0

    .line 115
    :pswitch_1
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->getFingerprintPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "lock_for_application"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 116
    goto :goto_0

    .line 118
    :pswitch_2
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->getFingerprintPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "lock_for_secret_zone"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 119
    goto :goto_0

    .line 121
    :pswitch_3
    invoke-virtual {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "pref:finger_count"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "key:finger_count"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 122
    :goto_1
    goto :goto_0

    :cond_0
    move v0, v2

    .line 121
    goto :goto_1

    .line 124
    :pswitch_4
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->getFingerprintPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "touch_for_answer_call"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 125
    goto :goto_0

    .line 127
    :pswitch_5
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->getFingerprintPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "touch_for_take_photo"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 128
    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->getFingerprintPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "a111"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 70
    const/4 v1, 0x0

    .line 72
    .local v1, "flag":I
    :try_start_0
    const-string v3, "isOpen"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 73
    .local v2, "isOpen":Z
    sget-object v3, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 94
    :goto_0
    :pswitch_0
    const/4 v1, 0x1

    .line 98
    .end local v2    # "isOpen":Z
    :goto_1
    return v1

    .line 75
    .restart local v2    # "isOpen":Z
    :pswitch_1
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->getFingerprintPreference()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "lock_for_screen"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    .end local v2    # "isOpen":Z
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 78
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "isOpen":Z
    :pswitch_2
    :try_start_1
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->getFingerprintPreference()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "lock_for_application"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 81
    :pswitch_3
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->getFingerprintPreference()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "lock_for_secret_zone"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 84
    :pswitch_4
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->getFingerprintPreference()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "touch_for_answer_call"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 87
    :pswitch_5
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->getFingerprintPreference()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "touch_for_take_photo"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 91
    :pswitch_6
    invoke-direct {p0}, Lcom/zte/fingerprint/utils/FingerprintContentProvider;->getFingerprintPreference()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "fingerprint_enabled"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method
