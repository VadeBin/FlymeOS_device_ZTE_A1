.class public final Lcom/zte/extres/R$anim;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/extres/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "anim"
.end annotation


# static fields
.field public static dialog_enter:I

.field public static dialog_exit:I

.field public static fast_fade_in:I

.field public static fast_fade_out:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/high16 v0, 0x7f040000

    sput v0, Lcom/zte/extres/R$anim;->dialog_enter:I

    .line 12
    const v0, 0x7f040001

    sput v0, Lcom/zte/extres/R$anim;->dialog_exit:I

    .line 13
    const v0, 0x7f040002

    sput v0, Lcom/zte/extres/R$anim;->fast_fade_in:I

    .line 14
    const v0, 0x7f040003

    sput v0, Lcom/zte/extres/R$anim;->fast_fade_out:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
