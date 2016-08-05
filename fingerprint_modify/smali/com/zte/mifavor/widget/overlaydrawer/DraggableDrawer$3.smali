.class Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer$3;
.super Ljava/lang/Object;
.source "DraggableDrawer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->peekDrawer(JJ)V
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
    .line 244
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer$3;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer$3;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/overlaydrawer/DraggableDrawer;->startPeek()V

    .line 248
    return-void
.end method
