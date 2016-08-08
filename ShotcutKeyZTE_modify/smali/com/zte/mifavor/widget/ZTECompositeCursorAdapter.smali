.class public abstract Lcom/zte/mifavor/widget/ZTECompositeCursorAdapter;
.super Lcom/android/common/widget/CompositeCursorAdapter;
.source "ZTECompositeCursorAdapter.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ZTECompositeCursorAdapter"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initialCapacity"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/common/widget/CompositeCursorAdapter;-><init>(Landroid/content/Context;I)V

    .line 23
    return-void
.end method


# virtual methods
.method public abstract getItemTitle(I)Ljava/lang/String;
.end method
