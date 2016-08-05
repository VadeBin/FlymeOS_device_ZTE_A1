.class Lcom/android/server/BatteryService$6;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->showTemperatureDialog(Landroid/content/Context;)V
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
    .line 376
    iput-object p1, p0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    iput-object p2, p0, Lcom/android/server/BatteryService$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/server/BatteryService$6;->val$context:Landroid/content/Context;

    .line 380
    .local v0, "Tempcontext":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1300(Lcom/android/server/BatteryService;)Landroid/app/AlertDialog;

    move-result-object v2

    if-nez v2, :cond_0

    .line 382
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x6040040

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x6040041

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 387
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    # setter for: Lcom/android/server/BatteryService;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v2, v3}, Lcom/android/server/BatteryService;->access$1302(Lcom/android/server/BatteryService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 388
    iget-object v2, p0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1300(Lcom/android/server/BatteryService;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 389
    iget-object v2, p0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1300(Lcom/android/server/BatteryService;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 390
    iget-object v2, p0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1300(Lcom/android/server/BatteryService;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 394
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method
