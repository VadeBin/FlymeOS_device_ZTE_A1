.class final Lcom/zte/mifavor/preference/SeekBarVolumizer$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "SeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/preference/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field private mListening:Z

.field final synthetic this$0:Lcom/zte/mifavor/preference/SeekBarVolumizer;


# direct methods
.method private constructor <init>(Lcom/zte/mifavor/preference/SeekBarVolumizer;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer$Receiver;->this$0:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/mifavor/preference/SeekBarVolumizer;Lcom/zte/mifavor/preference/SeekBarVolumizer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/zte/mifavor/preference/SeekBarVolumizer;
    .param p2, "x1"    # Lcom/zte/mifavor/preference/SeekBarVolumizer$1;

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/zte/mifavor/preference/SeekBarVolumizer$Receiver;-><init>(Lcom/zte/mifavor/preference/SeekBarVolumizer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 312
    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 314
    .local v0, "streamType":I
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 315
    .local v1, "streamValue":I
    iget-object v2, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer$Receiver;->this$0:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    # getter for: Lcom/zte/mifavor/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->access$200(Lcom/zte/mifavor/preference/SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer$Receiver;->this$0:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    # getter for: Lcom/zte/mifavor/preference/SeekBarVolumizer;->mStreamType:I
    invoke-static {v2}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->access$500(Lcom/zte/mifavor/preference/SeekBarVolumizer;)I

    move-result v2

    if-ne v0, v2, :cond_0

    if-eq v1, v4, :cond_0

    .line 316
    iget-object v2, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer$Receiver;->this$0:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    # getter for: Lcom/zte/mifavor/preference/SeekBarVolumizer;->mUiHandler:Lcom/zte/mifavor/preference/SeekBarVolumizer$H;
    invoke-static {v2}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->access$600(Lcom/zte/mifavor/preference/SeekBarVolumizer;)Lcom/zte/mifavor/preference/SeekBarVolumizer$H;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/zte/mifavor/preference/SeekBarVolumizer$H;->postUpdateSlider(I)V

    goto :goto_0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 300
    iget-boolean v1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer$Receiver;->mListening:Z

    if-ne v1, p1, :cond_0

    .line 308
    :goto_0
    return-void

    .line 301
    :cond_0
    iput-boolean p1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer$Receiver;->mListening:Z

    .line 302
    if-eqz p1, :cond_1

    .line 303
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 304
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer$Receiver;->this$0:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    # getter for: Lcom/zte/mifavor/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->access$700(Lcom/zte/mifavor/preference/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 306
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer$Receiver;->this$0:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    # getter for: Lcom/zte/mifavor/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->access$700(Lcom/zte/mifavor/preference/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
