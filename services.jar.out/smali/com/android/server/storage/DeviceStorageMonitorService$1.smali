.class Lcom/android/server/storage/DeviceStorageMonitorService$1;
.super Landroid/os/Handler;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/storage/DeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/32 v8, 0x40000000

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 198
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    .line 199
    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$000(Lcom/android/server/storage/DeviceStorageMonitorService;)Landroid/app/AlertDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mIPOBootup:Z
    invoke-static {v4}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$100(Lcom/android/server/storage/DeviceStorageMonitorService;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mConfigChanged:Z
    invoke-static {v4}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$200(Lcom/android/server/storage/DeviceStorageMonitorService;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 200
    :cond_0
    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # setter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mIPOBootup:Z
    invoke-static {v4, v5}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$102(Lcom/android/server/storage/DeviceStorageMonitorService;Z)Z

    .line 201
    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mConfigChanged:Z
    invoke-static {v4}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$200(Lcom/android/server/storage/DeviceStorageMonitorService;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 202
    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # setter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mConfigChanged:Z
    invoke-static {v4, v5}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$202(Lcom/android/server/storage/DeviceStorageMonitorService;Z)Z

    .line 204
    :cond_1
    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v4}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 205
    .local v1, "context":Landroid/content/Context;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1080027

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x805003b

    invoke-virtual {v1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x805003c

    invoke-virtual {v1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x8050047

    invoke-virtual {v1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v7, Lcom/android/server/storage/DeviceStorageMonitorService$1$1;

    invoke-direct {v7, p0, v1}, Lcom/android/server/storage/DeviceStorageMonitorService$1$1;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService$1;Landroid/content/Context;)V

    invoke-virtual {v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v6, 0x1040000

    invoke-virtual {v1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 224
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalSize:J
    invoke-static {v4}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$300(Lcom/android/server/storage/DeviceStorageMonitorService;)J

    move-result-wide v6

    const-wide/32 v8, 0x3200000

    cmp-long v4, v6, v8

    if-lez v4, :cond_2

    .line 225
    const v4, 0x805003d

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v6, Lcom/android/server/storage/DeviceStorageMonitorService$1$2;

    invoke-direct {v6, p0, v1}, Lcom/android/server/storage/DeviceStorageMonitorService$1$2;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService$1;Landroid/content/Context;)V

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 237
    :cond_2
    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    # setter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v4, v6}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$002(Lcom/android/server/storage/DeviceStorageMonitorService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 240
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "context":Landroid/content/Context;
    :cond_3
    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$000(Lcom/android/server/storage/DeviceStorageMonitorService;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v6, 0x7d3

    invoke-virtual {v4, v6}, Landroid/view/Window;->setType(I)V

    .line 241
    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$000(Lcom/android/server/storage/DeviceStorageMonitorService;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_4

    .line 243
    const-string v4, "ctsrunning"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_5

    .line 244
    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$000(Lcom/android/server/storage/DeviceStorageMonitorService;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 276
    :cond_4
    :goto_0
    return-void

    .line 246
    :cond_5
    const-string v4, "DeviceStorageMonitorService"

    const-string v5, "In CTS Running,do not show the no space dailog"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    :cond_6
    iget v6, p1, Landroid/os/Message;->what:I

    if-eq v6, v4, :cond_7

    .line 254
    const-string v4, "DeviceStorageMonitorService"

    const-string v5, "Will not process invalid message"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 257
    :cond_7
    iget-object v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # invokes: Lcom/android/server/storage/DeviceStorageMonitorService;->checkSwap()Z
    invoke-static {v6}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$400(Lcom/android/server/storage/DeviceStorageMonitorService;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 258
    iget-object v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->alreadyNotification:Z
    invoke-static {v6}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$500(Lcom/android/server/storage/DeviceStorageMonitorService;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # invokes: Lcom/android/server/storage/DeviceStorageMonitorService;->checkSdSize()Z
    invoke-static {v6}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$600(Lcom/android/server/storage/DeviceStorageMonitorService;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 259
    iget-object v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # invokes: Lcom/android/server/storage/DeviceStorageMonitorService;->sendSDNotification()V
    invoke-static {v6}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$700(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    .line 275
    :cond_8
    :goto_1
    iget-object v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v4, :cond_b

    :goto_2
    invoke-virtual {v6, v4}, Lcom/android/server/storage/DeviceStorageMonitorService;->checkMemory(Z)V

    goto :goto_0

    .line 261
    :cond_9
    iget-object v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J
    invoke-static {v6}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$800(Lcom/android/server/storage/DeviceStorageMonitorService;)J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-gez v6, :cond_a

    iget-object v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->alreadyTip:Z
    invoke-static {v6}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$900(Lcom/android/server/storage/DeviceStorageMonitorService;)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # invokes: Lcom/android/server/storage/DeviceStorageMonitorService;->checkSDMounted()Z
    invoke-static {v6}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$1000(Lcom/android/server/storage/DeviceStorageMonitorService;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # invokes: Lcom/android/server/storage/DeviceStorageMonitorService;->checkEncrypt()Z
    invoke-static {v6}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$1100(Lcom/android/server/storage/DeviceStorageMonitorService;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 263
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 264
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "com.zte.smartpower"

    const-string v7, "com.zte.smartpower.common.StorageDefaultPathDialog"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const/high16 v6, 0x10000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 266
    const-string v6, "from"

    const-string v7, "DeviceStorageMonitor"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    iget-object v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v6}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 268
    iget-object v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    const/4 v7, 0x1

    # setter for: Lcom/android/server/storage/DeviceStorageMonitorService;->alreadyTip:Z
    invoke-static {v6, v7}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$902(Lcom/android/server/storage/DeviceStorageMonitorService;Z)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 269
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 270
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string v6, "DeviceStorageMonitorService"

    const-string v7, "common.StorageDefaultPathDialog notfond e"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 272
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    :cond_a
    iget-object v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->alreadyTip:Z
    invoke-static {v6}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$900(Lcom/android/server/storage/DeviceStorageMonitorService;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J
    invoke-static {v6}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$800(Lcom/android/server/storage/DeviceStorageMonitorService;)J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-lez v6, :cond_8

    .line 273
    iget-object v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # setter for: Lcom/android/server/storage/DeviceStorageMonitorService;->alreadyTip:Z
    invoke-static {v6, v5}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$902(Lcom/android/server/storage/DeviceStorageMonitorService;Z)Z

    goto :goto_1

    :cond_b
    move v4, v5

    .line 275
    goto :goto_2
.end method
