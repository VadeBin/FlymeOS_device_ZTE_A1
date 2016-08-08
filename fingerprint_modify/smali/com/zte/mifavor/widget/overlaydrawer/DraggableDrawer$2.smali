.class Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer$2;
.super Ljava/lang/Object;
.source "DraggableDrawer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer$2;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer$2;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;

    # invokes: Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->postAnimationInvalidate()V
    invoke-static {v0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->access$100(Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;)V

    .line 83
    return-void
.end method
