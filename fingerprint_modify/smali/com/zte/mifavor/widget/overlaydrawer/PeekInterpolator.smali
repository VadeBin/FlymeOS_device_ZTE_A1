.class Lcom/zte/mifavor/widget/overlaydrawer/PeekInterpolator;
.super Ljava/lang/Object;
.source "PeekInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final SINUSOIDAL_INTERPOLATOR:Lcom/zte/mifavor/widget/overlaydrawer/SinusoidalInterpolator;

.field private static final TAG:Ljava/lang/String; = "PeekInterpolator"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/SinusoidalInterpolator;

    invoke-direct {v0}, Lcom/zte/mifavor/widget/overlaydrawer/SinusoidalInterpolator;-><init>()V

    sput-object v0, Lcom/zte/mifavor/widget/overlaydrawer/PeekInterpolator;->SINUSOIDAL_INTERPOLATOR:Lcom/zte/mifavor/widget/overlaydrawer/SinusoidalInterpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6
    .param p1, "input"    # F

    .prologue
    const/high16 v5, 0x40400000    # 3.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3eaaaaab

    .line 15
    cmpg-float v2, p1, v3

    if-gez v2, :cond_0

    .line 16
    sget-object v2, Lcom/zte/mifavor/widget/overlaydrawer/PeekInterpolator;->SINUSOIDAL_INTERPOLATOR:Lcom/zte/mifavor/widget/overlaydrawer/SinusoidalInterpolator;

    mul-float v3, p1, v5

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/widget/overlaydrawer/SinusoidalInterpolator;->getInterpolation(F)F

    move-result v0

    .line 26
    .local v0, "result":F
    :goto_0
    return v0

    .line 18
    .end local v0    # "result":F
    :cond_0
    const v2, 0x3f2aaaab

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 19
    add-float v2, p1, v3

    sub-float/2addr v2, v4

    mul-float v1, v2, v5

    .line 20
    .local v1, "val":F
    sget-object v2, Lcom/zte/mifavor/widget/overlaydrawer/PeekInterpolator;->SINUSOIDAL_INTERPOLATOR:Lcom/zte/mifavor/widget/overlaydrawer/SinusoidalInterpolator;

    invoke-virtual {v2, v1}, Lcom/zte/mifavor/widget/overlaydrawer/SinusoidalInterpolator;->getInterpolation(F)F

    move-result v2

    sub-float v0, v4, v2

    .line 22
    .restart local v0    # "result":F
    goto :goto_0

    .line 23
    .end local v0    # "result":F
    .end local v1    # "val":F
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .restart local v0    # "result":F
    goto :goto_0
.end method
