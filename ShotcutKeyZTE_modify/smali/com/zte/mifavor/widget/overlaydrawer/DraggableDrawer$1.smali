.class Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer$1;
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
    .line 69
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer$1;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer$1;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;

    # invokes: Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->peekDrawerInvalidate()V
    invoke-static {v0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->access$000(Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;)V

    .line 73
    return-void
.end method
