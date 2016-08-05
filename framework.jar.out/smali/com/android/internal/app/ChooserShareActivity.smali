.class public Lcom/android/internal/app/ChooserShareActivity;
.super Lcom/android/internal/app/ResolverShareActivity;
.source "ChooserShareActivity.java"


# instance fields
.field private isLocked:Z

.field private isUnReg:Z

.field mDockReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardManager:Landroid/app/KeyguardManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/internal/app/ResolverShareActivity;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserShareActivity;->isUnReg:Z

    .line 76
    new-instance v0, Lcom/android/internal/app/ChooserShareActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ChooserShareActivity$1;-><init>(Lcom/android/internal/app/ChooserShareActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ChooserShareActivity;->mDockReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserShareActivity;->isUnReg:Z

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/internal/app/ChooserShareActivity;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserShareActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserShareActivity;->isUnReg:Z

    .line 96
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/ResolverShareActivity;->finish()V

    .line 97
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 39
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserShareActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PowerManager;

    .line 40
    .local v11, "pm":Landroid/os/PowerManager;
    const-string/jumbo v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserShareActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/internal/app/ChooserShareActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 42
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 43
    .local v9, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    .line 44
    .local v12, "targetParcelable":Landroid/os/Parcelable;
    instance-of v0, v12, Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 45
    const-string v0, "ChooserShareActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Target is not an intent: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserShareActivity;->finish()V

    .line 74
    :goto_0
    return-void

    :cond_0
    move-object v2, v12

    .line 49
    check-cast v2, Landroid/content/Intent;

    .line 50
    .local v2, "target":Landroid/content/Intent;
    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 51
    .local v3, "title":Ljava/lang/CharSequence;
    if-nez v3, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040482

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 54
    :cond_1
    const-string v0, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v10

    .line 55
    .local v10, "pa":[Landroid/os/Parcelable;
    const/4 v4, 0x0

    .line 56
    .local v4, "initialIntents":[Landroid/content/Intent;
    if-eqz v10, :cond_3

    .line 57
    array-length v0, v10

    new-array v4, v0, [Landroid/content/Intent;

    .line 58
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v0, v10

    if-ge v8, v0, :cond_3

    .line 59
    aget-object v0, v10, v8

    instance-of v0, v0, Landroid/content/Intent;

    if-nez v0, :cond_2

    .line 60
    const-string v0, "ChooserShareActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initial intent #"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " not an Intent: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v5, v10, v8

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserShareActivity;->finish()V

    goto :goto_0

    .line 65
    :cond_2
    aget-object v0, v10, v8

    check-cast v0, Landroid/content/Intent;

    aput-object v0, v4, v8

    .line 58
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 68
    .end local v8    # "i":I
    :cond_3
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-super/range {v0 .. v6}, Lcom/android/internal/app/ResolverShareActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 70
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 71
    .local v7, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.CAMERA_STOP_TO_CHOOSER"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/android/internal/app/ChooserShareActivity;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v7}, Lcom/android/internal/app/ChooserShareActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 73
    iput-boolean v6, p0, Lcom/android/internal/app/ChooserShareActivity;->isUnReg:Z

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Lcom/android/internal/app/ResolverShareActivity;->onStop()V

    .line 87
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserShareActivity;->finish()V

    .line 88
    return-void
.end method
