.class Lcom/android/server/BatteryService$8;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->showTemperatureProgressDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/server/BatteryService$8;->this$0:Lcom/android/server/BatteryService;

    iput-object p2, p0, Lcom/android/server/BatteryService$8;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/server/BatteryService$8;->val$context:Landroid/content/Context;

    .line 423
    .local v0, "Tempcontext":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/server/BatteryService$8;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->pd:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$1400(Lcom/android/server/BatteryService;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-nez v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/android/server/BatteryService$8;->this$0:Lcom/android/server/BatteryService;

    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/server/BatteryService;->pd:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->access$1402(Lcom/android/server/BatteryService;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 425
    iget-object v1, p0, Lcom/android/server/BatteryService$8;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->pd:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$1400(Lcom/android/server/BatteryService;)Landroid/app/ProgressDialog;

    move-result-object v1

    const v2, 0x6040040

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 426
    iget-object v1, p0, Lcom/android/server/BatteryService$8;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->pd:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$1400(Lcom/android/server/BatteryService;)Landroid/app/ProgressDialog;

    move-result-object v1

    const v2, 0x6040041

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v1, p0, Lcom/android/server/BatteryService$8;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->pd:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$1400(Lcom/android/server/BatteryService;)Landroid/app/ProgressDialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 428
    iget-object v1, p0, Lcom/android/server/BatteryService$8;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->pd:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$1400(Lcom/android/server/BatteryService;)Landroid/app/ProgressDialog;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 429
    iget-object v1, p0, Lcom/android/server/BatteryService$8;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->pd:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$1400(Lcom/android/server/BatteryService;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 431
    iget-object v1, p0, Lcom/android/server/BatteryService$8;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->pd:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$1400(Lcom/android/server/BatteryService;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 432
    iget-object v1, p0, Lcom/android/server/BatteryService$8;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->pd:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$1400(Lcom/android/server/BatteryService;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 435
    :cond_0
    return-void
.end method
