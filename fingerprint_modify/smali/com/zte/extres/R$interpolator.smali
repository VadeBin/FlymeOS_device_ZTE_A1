.class public final Lcom/zte/extres/R$interpolator;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/extres/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "interpolator"
.end annotation


# static fields
.field public static accelerate_cubic:I

.field public static accelerate_quad:I

.field public static decelerate_cubic:I

.field public static decelerate_quad:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 785
    const/high16 v0, 0x7f050000

    sput v0, Lcom/zte/extres/R$interpolator;->accelerate_cubic:I

    .line 786
    const v0, 0x7f050001

    sput v0, Lcom/zte/extres/R$interpolator;->accelerate_quad:I

    .line 787
    const v0, 0x7f050002

    sput v0, Lcom/zte/extres/R$interpolator;->decelerate_cubic:I

    .line 788
    const v0, 0x7f050003

    sput v0, Lcom/zte/extres/R$interpolator;->decelerate_quad:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
