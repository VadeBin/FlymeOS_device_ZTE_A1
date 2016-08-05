.class final Landroid/widget/SearchView$Inject;
.super Ljava/lang/Object;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Inject"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSearchViewLayoutRes(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 258
    invoke-virtual {p0}, Landroid/content/Context;->isZteApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    const v0, 0x6080010

    .line 261
    :goto_0
    return v0

    :cond_0
    const v0, 0x10900bf

    goto :goto_0
.end method
