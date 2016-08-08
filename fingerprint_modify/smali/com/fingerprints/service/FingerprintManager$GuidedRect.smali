.class public Lcom/fingerprints/service/FingerprintManager$GuidedRect;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingerprints/service/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GuidedRect"
.end annotation


# instance fields
.field public guidedBottomLeft:Landroid/graphics/Point;

.field public guidedBottomRight:Landroid/graphics/Point;

.field public guidedTopLeft:Landroid/graphics/Point;

.field public guidedTopRight:Landroid/graphics/Point;

.field final synthetic this$0:Lcom/fingerprints/service/FingerprintManager;


# direct methods
.method public constructor <init>(Lcom/fingerprints/service/FingerprintManager;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0
    .param p2, "guidedBottomLeft"    # Landroid/graphics/Point;
    .param p3, "guidedBottomRight"    # Landroid/graphics/Point;
    .param p4, "guidedTopLeft"    # Landroid/graphics/Point;
    .param p5, "guidedTopRight"    # Landroid/graphics/Point;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/fingerprints/service/FingerprintManager$GuidedRect;->this$0:Lcom/fingerprints/service/FingerprintManager;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p2, p0, Lcom/fingerprints/service/FingerprintManager$GuidedRect;->guidedBottomLeft:Landroid/graphics/Point;

    .line 258
    iput-object p3, p0, Lcom/fingerprints/service/FingerprintManager$GuidedRect;->guidedBottomRight:Landroid/graphics/Point;

    .line 259
    iput-object p4, p0, Lcom/fingerprints/service/FingerprintManager$GuidedRect;->guidedTopLeft:Landroid/graphics/Point;

    .line 260
    iput-object p5, p0, Lcom/fingerprints/service/FingerprintManager$GuidedRect;->guidedTopRight:Landroid/graphics/Point;

    .line 261
    return-void
.end method
