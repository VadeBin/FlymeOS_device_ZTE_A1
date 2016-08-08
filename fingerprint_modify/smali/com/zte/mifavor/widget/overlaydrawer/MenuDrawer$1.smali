.class Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$1;
.super Ljava/lang/Object;
.source "MenuDrawer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$1;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$1;->this$0:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    # invokes: Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->animateIndicatorInvalidate()V
    invoke-static {v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->access$000(Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;)V

    .line 340
    return-void
.end method
