.class Lcom/android/server/am/BaseErrorDialog$Inject;
.super Ljava/lang/Object;
.source "BaseErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BaseErrorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Inject"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-static {p0}, Lcom/android/server/am/BaseErrorDialog$Inject;->getThemeResID(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private static getThemeResID(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->isZteApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const v0, 0x6030111

    .line 40
    :goto_0
    return v0

    :cond_0
    const v0, 0x1030483

    goto :goto_0
.end method
