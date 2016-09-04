.class Landroid/view/ViewRootImpl$ScrollWindow;
.super Ljava/lang/Thread;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootImpl;->scrollWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    .prologue
    iput-object p1, p0, Landroid/view/ViewRootImpl$ScrollWindow;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/high16 v7, 0x43a50000    # 330.0f

    const-string/jumbo v0, "guojingdong"

    const-string/jumbo v1, "simulate scroll in new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .local v2, "eventTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .local v4, "downTmie":J
    move-wide v10, v2

    .local v10, "totalTime":J
    iget-object v1, p0, Landroid/view/ViewRootImpl$ScrollWindow;->this$0:Landroid/view/ViewRootImpl;

    const/4 v6, 0x0

    const/high16 v8, 0x44750000    # 980.0f

    invoke-virtual/range {v1 .. v8}, Landroid/view/ViewRootImpl;->obtainMotionDownEvent(JJIFF)V

    iget-object v1, p0, Landroid/view/ViewRootImpl$ScrollWindow;->this$0:Landroid/view/ViewRootImpl;

    const/16 v6, 0xf

    const/high16 v8, 0x44700000    # 960.0f

    invoke-virtual/range {v1 .. v8}, Landroid/view/ViewRootImpl;->obtainMotionMoveEvent(JJIFF)V

    iget-object v1, p0, Landroid/view/ViewRootImpl$ScrollWindow;->this$0:Landroid/view/ViewRootImpl;

    const/16 v6, 0x1e

    const/high16 v8, 0x446b0000    # 940.0f

    invoke-virtual/range {v1 .. v8}, Landroid/view/ViewRootImpl;->obtainMotionMoveEvent(JJIFF)V

    iget-object v1, p0, Landroid/view/ViewRootImpl$ScrollWindow;->this$0:Landroid/view/ViewRootImpl;

    const/16 v6, 0x2d

    const/high16 v8, 0x44660000    # 920.0f

    invoke-virtual/range {v1 .. v8}, Landroid/view/ViewRootImpl;->obtainMotionMoveEvent(JJIFF)V

    iget-object v1, p0, Landroid/view/ViewRootImpl$ScrollWindow;->this$0:Landroid/view/ViewRootImpl;

    const/16 v6, 0x3c

    const/high16 v8, 0x44610000    # 900.0f

    invoke-virtual/range {v1 .. v8}, Landroid/view/ViewRootImpl;->obtainMotionMoveEvent(JJIFF)V

    iget-object v1, p0, Landroid/view/ViewRootImpl$ScrollWindow;->this$0:Landroid/view/ViewRootImpl;

    const/16 v6, 0x4b

    const/high16 v8, 0x445c0000    # 880.0f

    invoke-virtual/range {v1 .. v8}, Landroid/view/ViewRootImpl;->obtainMotionMoveEvent(JJIFF)V

    iget-object v1, p0, Landroid/view/ViewRootImpl$ScrollWindow;->this$0:Landroid/view/ViewRootImpl;

    const/16 v6, 0x5a

    const/high16 v8, 0x44570000    # 860.0f

    invoke-virtual/range {v1 .. v8}, Landroid/view/ViewRootImpl;->obtainMotionMoveEvent(JJIFF)V

    iget-object v1, p0, Landroid/view/ViewRootImpl$ScrollWindow;->this$0:Landroid/view/ViewRootImpl;

    const/16 v6, 0x69

    const/high16 v8, 0x44520000    # 840.0f

    invoke-virtual/range {v1 .. v8}, Landroid/view/ViewRootImpl;->obtainMotionMoveEvent(JJIFF)V

    iget-object v1, p0, Landroid/view/ViewRootImpl$ScrollWindow;->this$0:Landroid/view/ViewRootImpl;

    const/16 v6, 0x78

    const/high16 v8, 0x444d0000    # 820.0f

    invoke-virtual/range {v1 .. v8}, Landroid/view/ViewRootImpl;->obtainMotionMoveEvent(JJIFF)V

    iget-object v1, p0, Landroid/view/ViewRootImpl$ScrollWindow;->this$0:Landroid/view/ViewRootImpl;

    const/16 v6, 0x87

    const/high16 v8, 0x44480000    # 800.0f

    invoke-virtual/range {v1 .. v8}, Landroid/view/ViewRootImpl;->obtainMotionMoveEvent(JJIFF)V

    iget-object v1, p0, Landroid/view/ViewRootImpl$ScrollWindow;->this$0:Landroid/view/ViewRootImpl;

    const/16 v6, 0x96

    const/high16 v8, 0x44430000    # 780.0f

    invoke-virtual/range {v1 .. v8}, Landroid/view/ViewRootImpl;->obtainMotionMoveEvent(JJIFF)V

    iget-object v1, p0, Landroid/view/ViewRootImpl$ScrollWindow;->this$0:Landroid/view/ViewRootImpl;

    const/16 v6, 0xa5

    const/high16 v8, 0x443e0000    # 760.0f

    invoke-virtual/range {v1 .. v8}, Landroid/view/ViewRootImpl;->obtainMotionMoveEvent(JJIFF)V

    iget-object v1, p0, Landroid/view/ViewRootImpl$ScrollWindow;->this$0:Landroid/view/ViewRootImpl;

    const/16 v6, 0xb4

    const/high16 v8, 0x44390000    # 740.0f

    invoke-virtual/range {v1 .. v8}, Landroid/view/ViewRootImpl;->obtainMotionMoveEvent(JJIFF)V

    iget-object v1, p0, Landroid/view/ViewRootImpl$ScrollWindow;->this$0:Landroid/view/ViewRootImpl;

    const/16 v6, 0xc3

    const/high16 v8, 0x44340000    # 720.0f

    invoke-virtual/range {v1 .. v8}, Landroid/view/ViewRootImpl;->obtainMotionMoveEvent(JJIFF)V

    iget-object v1, p0, Landroid/view/ViewRootImpl$ScrollWindow;->this$0:Landroid/view/ViewRootImpl;

    const/16 v6, 0xd2

    const/high16 v8, 0x442f0000    # 700.0f

    invoke-virtual/range {v1 .. v8}, Landroid/view/ViewRootImpl;->obtainMotionMoveEvent(JJIFF)V

    iget-object v1, p0, Landroid/view/ViewRootImpl$ScrollWindow;->this$0:Landroid/view/ViewRootImpl;

    const/16 v6, 0xe1

    const/high16 v8, 0x442a0000    # 680.0f

    invoke-virtual/range {v1 .. v8}, Landroid/view/ViewRootImpl;->obtainMotionMoveEvent(JJIFF)V

    iget-object v1, p0, Landroid/view/ViewRootImpl$ScrollWindow;->this$0:Landroid/view/ViewRootImpl;

    const/16 v6, 0xf0

    const/high16 v8, 0x44250000    # 660.0f

    invoke-virtual/range {v1 .. v8}, Landroid/view/ViewRootImpl;->obtainMotionUpEvent(JJIFF)V

    return-void
.end method
