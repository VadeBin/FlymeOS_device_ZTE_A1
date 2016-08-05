.class Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout$2;
.super Ljava/lang/Object;
.source "BuildLayerFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout$2;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 83
    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout$2;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    # getter for: Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->mAttached:Z
    invoke-static {v1}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->access$000(Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout$2;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->getLayerType()I

    move-result v0

    .line 86
    .local v0, "layerType":I
    if-ne v0, v3, :cond_0

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout$2;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    # getter for: Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->mFirst:Z
    invoke-static {v1}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->access$100(Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout$2;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    # setter for: Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->mFirst:Z
    invoke-static {v1, v2}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->access$102(Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;Z)Z

    .line 88
    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout$2;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v1, v3, v4}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 89
    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout$2;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->buildLayer()V

    .line 90
    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout$2;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v1, v2, v4}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 93
    .end local v0    # "layerType":I
    :cond_1
    return-void
.end method
