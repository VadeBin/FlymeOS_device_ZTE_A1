.class public Lcom/mediatek/fmradio/UIUtils;
.super Ljava/lang/Object;
.source "UIUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getZTEThemeLevel()I
    .locals 4

    .prologue
    .line 18
    :try_start_0
    const-string v2, "androidzte.R"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    const/4 v2, 0x1

    .line 33
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    return v2

    .line 20
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v0

    .line 22
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    :try_start_1
    const-string v2, "android.R$style"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 23
    const-string v3, "Theme_ZTE_Light"

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 24
    .local v1, "f":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_0

    .line 25
    const/4 v2, 0x2

    goto :goto_0

    .line 29
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :catch_1
    move-exception v2

    .line 33
    :cond_0
    :goto_1
    const/4 v2, -0x1

    goto :goto_0

    .line 28
    :catch_2
    move-exception v2

    goto :goto_1

    .line 27
    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method public static getZTEThemeStyle(Ljava/lang/String;)I
    .locals 4
    .param p0, "styleName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 53
    invoke-static {}, Lcom/mediatek/fmradio/UIUtils;->getZTEThemeLevel()I

    move-result v2

    .line 56
    .local v2, "level":I
    const/4 v1, 0x0

    .line 57
    .local v1, "field":Ljava/lang/reflect/Field;
    if-ne v2, v3, :cond_0

    .line 58
    :try_start_0
    const-string v3, "androidzte.R$style"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 64
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 65
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 77
    :goto_1
    return v3

    .line 59
    :cond_0
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 60
    const-string v3, "android.R$style"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const/4 v3, -0x1

    goto :goto_1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 77
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_2
    const/4 v3, -0x2

    goto :goto_1

    .line 68
    :catch_1
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_2

    .line 70
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 72
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 74
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2
.end method

.method public static isSupportZTETheme()Z
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/mediatek/fmradio/UIUtils;->getZTEThemeLevel()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
