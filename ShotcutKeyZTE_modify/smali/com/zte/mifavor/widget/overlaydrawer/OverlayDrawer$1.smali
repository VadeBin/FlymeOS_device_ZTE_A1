.class Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer$1;
.super Ljava/lang/Object;
.source "OverlayDrawer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer$1;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 28
    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer$1;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->cancelContentTouch()V

    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, "animateTo":I
    sget-object v1, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer$2;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer$1;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;

    iget-object v2, v2, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 37
    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer$1;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;

    # getter for: Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mPeekSize:I
    invoke-static {v1}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->access$000(Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;)I

    move-result v0

    .line 40
    :goto_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer$1;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;

    const/16 v2, 0xfa

    invoke-virtual {v1, v0, v2}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->animateOffsetTo(II)V

    .line 41
    return-void

    .line 33
    :pswitch_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer$1;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;

    # getter for: Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mPeekSize:I
    invoke-static {v1}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->access$000(Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;)I

    move-result v1

    neg-int v0, v1

    .line 34
    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
