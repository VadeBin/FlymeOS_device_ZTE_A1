.class public Lcom/zte/mifavor/widget/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static DEFAULT_COLOR:I

.field static MY_CHECK_COLOR:Ljava/lang/String;

.field static MY_RADIO_COLOR:Ljava/lang/String;

.field static MY_SWITCH_COLOR:Ljava/lang/String;

.field static STORE_COLOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "myswitchcolor"

    sput-object v0, Lcom/zte/mifavor/widget/Utils;->MY_SWITCH_COLOR:Ljava/lang/String;

    .line 9
    const-string v0, "myraidocolor"

    sput-object v0, Lcom/zte/mifavor/widget/Utils;->MY_RADIO_COLOR:Ljava/lang/String;

    .line 10
    const-string v0, "mycheckcolor"

    sput-object v0, Lcom/zte/mifavor/widget/Utils;->MY_CHECK_COLOR:Ljava/lang/String;

    .line 11
    const-string v0, "color_store"

    sput-object v0, Lcom/zte/mifavor/widget/Utils;->STORE_COLOR:Ljava/lang/String;

    .line 12
    const v0, -0xce7422    # -2.3599959E38f

    sput v0, Lcom/zte/mifavor/widget/Utils;->DEFAULT_COLOR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dpToPx(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # I

    .prologue
    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static getCheckColor(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 45
    sget-object v1, Lcom/zte/mifavor/widget/Utils;->MY_CHECK_COLOR:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 46
    .local v0, "sp":Landroid/content/SharedPreferences;
    sget-object v1, Lcom/zte/mifavor/widget/Utils;->STORE_COLOR:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getRadioColor(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 32
    sget-object v1, Lcom/zte/mifavor/widget/Utils;->MY_RADIO_COLOR:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 33
    .local v0, "sp":Landroid/content/SharedPreferences;
    sget-object v1, Lcom/zte/mifavor/widget/Utils;->STORE_COLOR:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getSwitchColor(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 19
    sget-object v1, Lcom/zte/mifavor/widget/Utils;->MY_SWITCH_COLOR:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 20
    .local v0, "sp":Landroid/content/SharedPreferences;
    sget-object v1, Lcom/zte/mifavor/widget/Utils;->STORE_COLOR:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static storeCheckColor(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "color"    # I

    .prologue
    .line 51
    sget-object v2, Lcom/zte/mifavor/widget/Utils;->MY_CHECK_COLOR:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 52
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 53
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v2, Lcom/zte/mifavor/widget/Utils;->STORE_COLOR:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 54
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 55
    return-void
.end method

.method public static storeRadioColor(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "color"    # I

    .prologue
    .line 38
    sget-object v2, Lcom/zte/mifavor/widget/Utils;->MY_RADIO_COLOR:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 39
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 40
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v2, Lcom/zte/mifavor/widget/Utils;->STORE_COLOR:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 41
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 42
    return-void
.end method

.method public static storeSwitchColor(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "color"    # I

    .prologue
    .line 25
    sget-object v2, Lcom/zte/mifavor/widget/Utils;->MY_SWITCH_COLOR:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 26
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 27
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v2, Lcom/zte/mifavor/widget/Utils;->STORE_COLOR:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 28
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 29
    return-void
.end method
