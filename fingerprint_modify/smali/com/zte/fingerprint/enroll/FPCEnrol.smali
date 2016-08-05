.class public Lcom/zte/fingerprint/enroll/FPCEnrol;
.super Lcom/zte/fingerprint/enroll/FingerprintEnroll;
.source "FPCEnrol.java"

# interfaces
.implements Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
.implements Lcom/fingerprints/service/FingerprintManager$CaptureCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "FingerprintEnrol"

.field private static final VIBRATE_MS_ACCEPTED:J = 0x32L

.field private static final VIBRATE_MS_REJECTED:J = 0x190L


# instance fields
.field private animFadeInOut:Landroid/view/animation/Animation;

.field private animationBg:Landroid/widget/ImageView;

.field private animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private animationMask:Landroid/widget/ImageView;

.field private continueTip:Landroid/widget/TextView;

.field private continueTipSml:Landroid/widget/TextView;

.field private continuousFailCount:I

.field private currentAnimation:I

.field private currentProgress:I

.field private fingerLayout:Landroid/view/View;

.field private fingerNames:[Ljava/lang/String;

.field private ids:[I

.field private introduceView:Landroid/widget/ImageView;

.field private isFirstInput:Z

.field private isIdentify:Z

.field private lineIds:[I

.field private mVibrator:Landroid/os/Vibrator;

.field private mgr:Lcom/fingerprints/service/FingerprintManager;

.field private percentTip:Landroid/widget/LinearLayout;

.field private progressIds:[I

.field private progress_percent:Landroid/widget/TextView;

.field private tvLines:[Landroid/widget/TextView;

.field private tvProgresses:[Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0, p1}, Lcom/zte/fingerprint/enroll/FingerprintEnroll;-><init>(Landroid/app/Activity;)V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->currentAnimation:I

    .line 48
    iput-boolean v2, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->isFirstInput:Z

    .line 49
    iput-boolean v2, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->isIdentify:Z

    .line 53
    iput v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->currentProgress:I

    .line 57
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->progressIds:[I

    .line 59
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->lineIds:[I

    .line 61
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->progressIds:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->tvProgresses:[Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->lineIds:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->tvLines:[Landroid/widget/TextView;

    .line 301
    iput v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->continuousFailCount:I

    .line 33
    return-void

    .line 57
    nop

    :array_0
    .array-data 4
        0x7f06006c
        0x7f06006e
        0x7f060070
        0x7f060072
        0x7f060074
        0x7f060076
    .end array-data

    .line 59
    :array_1
    .array-data 4
        0x7f06006d
        0x7f06006f
        0x7f060071
        0x7f060073
        0x7f060075
    .end array-data
.end method

.method private calculateCurrentNumber(I)I
    .locals 9
    .param p1, "id"    # I

    .prologue
    .line 262
    const/4 v3, 0x1

    .line 263
    .local v3, "number":I
    const/4 v0, 0x0

    .line 264
    .local v0, "count":I
    iget-object v5, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->fingerNames:[Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 265
    invoke-virtual {p0}, Lcom/zte/fingerprint/enroll/FPCEnrol;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090054

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 266
    .local v4, "prefix":Ljava/lang/String;
    iget-object v6, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->fingerNames:[Ljava/lang/String;

    array-length v7, v6

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v2, v6, v5

    .line 267
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 268
    add-int/lit8 v0, v0, 0x1

    .line 269
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 271
    const/4 v8, 0x2

    .line 272
    :try_start_0
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 271
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 273
    .local v1, "existNumber":I
    if-le v1, v0, :cond_0

    if-lt v1, v3, :cond_0

    if-gt v1, p1, :cond_0

    .line 275
    add-int/lit8 v3, v1, 0x1

    .line 266
    .end local v1    # "existNumber":I
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 285
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_1
    if-lt v0, v3, :cond_2

    .line 286
    add-int/lit8 v3, v0, 0x1

    .line 288
    :cond_2
    return v3

    .line 278
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v4    # "prefix":Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method private initFingerprintParameter()V
    .locals 3

    .prologue
    .line 103
    :try_start_0
    const-string v1, "FingerprintEnrol"

    iget-object v2, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->getManager(Ljava/lang/String;Landroid/content/Context;)Lcom/fingerprints/service/FingerprintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->mgr:Lcom/fingerprints/service/FingerprintManager;

    .line 104
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->mgr:Lcom/fingerprints/service/FingerprintManager;

    if-eqz v1, :cond_0

    .line 105
    const-string v1, "FingerPrint"

    const-string v2, "getIDS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->mgr:Lcom/fingerprints/service/FingerprintManager;

    invoke-virtual {v1}, Lcom/fingerprints/service/FingerprintManager;->getIds()[I

    move-result-object v1

    iput-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->ids:[I

    .line 107
    const-string v1, "FingerPrint"

    const-string v2, "setCapturCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->mgr:Lcom/fingerprints/service/FingerprintManager;

    invoke-virtual {v1, p0}, Lcom/fingerprints/service/FingerprintManager;->setCaptureCallback(Lcom/fingerprints/service/FingerprintManager$CaptureCallback;)V

    .line 109
    invoke-direct {p0}, Lcom/zte/fingerprint/enroll/FPCEnrol;->match()V

    .line 117
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/zte/fingerprint/enroll/FPCEnrol;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private match()V
    .locals 2

    .prologue
    .line 139
    const-string v0, "FingerPrint"

    const-string v1, "startEnrol"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->mgr:Lcom/fingerprints/service/FingerprintManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/fingerprints/service/FingerprintManager;->startEnrol(Lcom/fingerprints/service/FingerprintManager$EnrolCallback;I)V

    .line 149
    return-void
.end method

.method private showReenrolFingerDialog()V
    .locals 4

    .prologue
    .line 434
    new-instance v0, Lcom/zte/mifavor/widget/AlertDialog$Builder;

    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/zte/mifavor/widget/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 435
    .local v0, "builder":Lcom/zte/mifavor/widget/AlertDialog$Builder;
    const v1, 0x7f090057

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setTitle(I)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    .line 436
    const v1, 0x7f09006c

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setMessage(I)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09005d

    new-instance v3, Lcom/zte/fingerprint/enroll/FPCEnrol$2;

    invoke-direct {v3, p0}, Lcom/zte/fingerprint/enroll/FPCEnrol$2;-><init>(Lcom/zte/fingerprint/enroll/FPCEnrol;)V

    invoke-virtual {v1, v2, v3}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    .line 442
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->create()Lcom/zte/mifavor/widget/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/AlertDialog;->show()V

    .line 443
    return-void
.end method

.method private declared-synchronized startFingerAnimation(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 153
    monitor-enter p0

    if-gtz p1, :cond_1

    .line 154
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->isIdentify:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 158
    :cond_1
    :try_start_1
    div-int/lit8 v0, p1, 0xa

    .line 159
    .local v0, "animation":I
    iget v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->currentAnimation:I

    if-eq v1, v0, :cond_0

    .line 162
    iput v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->currentAnimation:I

    .line 163
    packed-switch v0, :pswitch_data_0

    .line 221
    :goto_1
    :pswitch_0
    iget v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->currentAnimation:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 222
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->animationMask:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->animFadeInOut:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 153
    .end local v0    # "animation":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 167
    .restart local v0    # "animation":I
    :pswitch_1
    :try_start_2
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->animationMask:Landroid/widget/ImageView;

    const v2, 0x7f020223

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 168
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->animationBg:Landroid/widget/ImageView;

    const v2, 0x7f020222

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->tvProgresses:[Landroid/widget/TextView;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const v2, 0x7f0201ec

    .line 170
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 171
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->tvLines:[Landroid/widget/TextView;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 177
    :pswitch_2
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->animationMask:Landroid/widget/ImageView;

    const v2, 0x7f020224

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 178
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->animationBg:Landroid/widget/ImageView;

    const v2, 0x7f020223

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 179
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->tvProgresses:[Landroid/widget/TextView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const v2, 0x7f0201ed

    .line 180
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 181
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->tvLines:[Landroid/widget/TextView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 186
    :pswitch_3
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->animationMask:Landroid/widget/ImageView;

    const v2, 0x7f020225

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->animationBg:Landroid/widget/ImageView;

    const v2, 0x7f020224

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->tvProgresses:[Landroid/widget/TextView;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const v2, 0x7f0201ee

    .line 189
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 190
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->tvLines:[Landroid/widget/TextView;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 195
    :pswitch_4
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->animationMask:Landroid/widget/ImageView;

    const v2, 0x7f020226

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->animationBg:Landroid/widget/ImageView;

    const v2, 0x7f020225

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 197
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->tvProgresses:[Landroid/widget/TextView;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const v2, 0x7f0201ef

    .line 198
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 199
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->tvLines:[Landroid/widget/TextView;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 203
    :pswitch_5
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->animationMask:Landroid/widget/ImageView;

    const v2, 0x7f020227

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 204
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->animationBg:Landroid/widget/ImageView;

    const v2, 0x7f020226

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 205
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->tvProgresses:[Landroid/widget/TextView;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    const v2, 0x7f0201f0

    .line 206
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 207
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->tvLines:[Landroid/widget/TextView;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 212
    :pswitch_6
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->animationBg:Landroid/widget/ImageView;

    const v2, 0x7f020227

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 213
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->tvProgresses:[Landroid/widget/TextView;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    const v2, 0x7f0201f1

    .line 214
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private startIntroduceAnim()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->introduceView:Landroid/widget/ImageView;

    const v1, 0x7f02021d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->introduceView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 135
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 136
    return-void
.end method


# virtual methods
.method public fingerDown()V
    .locals 0

    .prologue
    .line 465
    return-void
.end method

.method public fingerUp()V
    .locals 0

    .prologue
    .line 471
    return-void
.end method

.method public onCaptureCompleted()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 404
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->fingerLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 405
    iget-boolean v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->isIdentify:Z

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->continueTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zte/fingerprint/enroll/FPCEnrol;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->percentTip:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 414
    iput-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 415
    iput-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->introduceView:Landroid/widget/ImageView;

    .line 417
    :cond_1
    const v0, 0x7f060068

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/enroll/FPCEnrol;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 418
    const v0, 0x7f06005f

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/enroll/FPCEnrol;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->continueTip:Landroid/widget/TextView;

    const v1, 0x7f090065

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/enroll/FPCEnrol;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->continueTipSml:Landroid/widget/TextView;

    iget v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->currentProgress:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_2

    const v0, 0x7f09006d

    .line 421
    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/enroll/FPCEnrol;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const v0, 0x7f090061

    .line 422
    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/enroll/FPCEnrol;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public onCaptureFailed(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 428
    const v0, 0x7f06005f

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/enroll/FPCEnrol;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 429
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->continueTip:Landroid/widget/TextView;

    const v1, 0x7f090066

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/enroll/FPCEnrol;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->continueTipSml:Landroid/widget/TextView;

    const v1, 0x7f090061

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/enroll/FPCEnrol;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/zte/fingerprint/enroll/FPCEnrol;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fingerNames"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->fingerNames:[Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Lcom/zte/fingerprint/enroll/FPCEnrol;->initFingerprintParameter()V

    .line 70
    const v1, 0x7f03003e

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/enroll/FPCEnrol;->setContentView(I)V

    .line 71
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->mActivity:Landroid/app/Activity;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->mVibrator:Landroid/os/Vibrator;

    .line 72
    const v1, 0x7f060065

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/enroll/FPCEnrol;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->animationBg:Landroid/widget/ImageView;

    .line 73
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->animationBg:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setKeepScreenOn(Z)V

    .line 74
    const v1, 0x7f060064

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/enroll/FPCEnrol;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->animationMask:Landroid/widget/ImageView;

    .line 75
    const v1, 0x7f060062

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/enroll/FPCEnrol;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->fingerLayout:Landroid/view/View;

    .line 77
    invoke-virtual {p0}, Lcom/zte/fingerprint/enroll/FPCEnrol;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040004

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->animFadeInOut:Landroid/view/animation/Animation;

    .line 79
    const v1, 0x7f060060

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/enroll/FPCEnrol;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->continueTip:Landroid/widget/TextView;

    .line 80
    const v1, 0x7f060061

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/enroll/FPCEnrol;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->continueTipSml:Landroid/widget/TextView;

    .line 81
    const v1, 0x7f060069

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/enroll/FPCEnrol;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->introduceView:Landroid/widget/ImageView;

    .line 82
    const v1, 0x7f060066

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/enroll/FPCEnrol;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->percentTip:Landroid/widget/LinearLayout;

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->progressIds:[I

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 84
    iget-object v2, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->tvProgresses:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->progressIds:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/enroll/FPCEnrol;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v0

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->lineIds:[I

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 87
    iget-object v2, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->tvLines:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->lineIds:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/enroll/FPCEnrol;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v0

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 89
    :cond_1
    const v1, 0x7f06006a

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/enroll/FPCEnrol;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/zte/fingerprint/enroll/FPCEnrol$1;

    invoke-direct {v2, p0}, Lcom/zte/fingerprint/enroll/FPCEnrol$1;-><init>(Lcom/zte/fingerprint/enroll/FPCEnrol;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-direct {p0}, Lcom/zte/fingerprint/enroll/FPCEnrol;->startIntroduceAnim()V

    .line 96
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/zte/fingerprint/enroll/FPCEnrol;->startFingerAnimation(I)V

    .line 97
    const v1, 0x7f060067

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/enroll/FPCEnrol;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->progress_percent:Landroid/widget/TextView;

    .line 98
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 228
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->mgr:Lcom/fingerprints/service/FingerprintManager;

    if-eqz v0, :cond_0

    .line 229
    const-string v0, "FingerPrint"

    const-string v1, "clearCapturCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->mgr:Lcom/fingerprints/service/FingerprintManager;

    invoke-virtual {v0, v2}, Lcom/fingerprints/service/FingerprintManager;->setCaptureCallback(Lcom/fingerprints/service/FingerprintManager$CaptureCallback;)V

    .line 231
    const-string v0, "FingerPrint"

    const-string v1, "abort"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->mgr:Lcom/fingerprints/service/FingerprintManager;

    invoke-virtual {v0}, Lcom/fingerprints/service/FingerprintManager;->abort()V

    .line 233
    const-string v0, "FingerprintEnrol"

    invoke-static {v0}, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->releaseManager(Ljava/lang/String;)V

    .line 234
    iput-object v2, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->mgr:Lcom/fingerprints/service/FingerprintManager;

    .line 236
    :cond_0
    return-void
.end method

.method public onEnrolled(I)V
    .locals 6
    .param p1, "arg0"    # I

    .prologue
    const/4 v5, 0x1

    .line 241
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->tvProgresses:[Landroid/widget/TextView;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    const v2, 0x7f0201f1

    .line 242
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 243
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->continueTip:Landroid/widget/TextView;

    const v2, 0x7f090063

    invoke-virtual {p0, v2}, Lcom/zte/fingerprint/enroll/FPCEnrol;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->continueTipSml:Landroid/widget/TextView;

    const v2, 0x7f090064

    invoke-virtual {p0, v2}, Lcom/zte/fingerprint/enroll/FPCEnrol;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    const v1, 0x7f06006a

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/enroll/FPCEnrol;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 247
    const-string v1, "FingerPrint"

    const-string v2, "setIdName"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->mgr:Lcom/fingerprints/service/FingerprintManager;

    invoke-virtual {v1}, Lcom/fingerprints/service/FingerprintManager;->abort()V

    .line 249
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->mgr:Lcom/fingerprints/service/FingerprintManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/zte/fingerprint/enroll/FPCEnrol;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 250
    invoke-direct {p0, p1}, Lcom/zte/fingerprint/enroll/FPCEnrol;->calculateCurrentNumber(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 249
    invoke-virtual {v1, p1, v2}, Lcom/fingerprints/service/FingerprintManager;->setIdName(ILjava/lang/String;)Z

    .line 251
    const-string v1, "FingerPrint"

    const-string v2, "clearCapturCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->mgr:Lcom/fingerprints/service/FingerprintManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fingerprints/service/FingerprintManager;->setCaptureCallback(Lcom/fingerprints/service/FingerprintManager$CaptureCallback;)V

    .line 253
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->mgr:Lcom/fingerprints/service/FingerprintManager;

    invoke-virtual {v1}, Lcom/fingerprints/service/FingerprintManager;->getIds()[I

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->mgr:Lcom/fingerprints/service/FingerprintManager;

    invoke-virtual {v1}, Lcom/fingerprints/service/FingerprintManager;->getIds()[I

    move-result-object v1

    array-length v1, v1

    if-ne v1, v5, :cond_0

    .line 254
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/zte/mifavor/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "lock_for_screen"

    .line 255
    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 257
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.fingerprint.FINGER_COUNT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/enroll/FPCEnrol;->sendBroadcast(Landroid/content/Intent;)V

    .line 259
    return-void
.end method

.method public onEnrollmentFailed()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->mgr:Lcom/fingerprints/service/FingerprintManager;

    if-eqz v0, :cond_0

    .line 294
    const-string v0, "FingerPrint"

    const-string v1, "clearCaptureCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->mgr:Lcom/fingerprints/service/FingerprintManager;

    invoke-virtual {v0, p0}, Lcom/fingerprints/service/FingerprintManager;->setCaptureCallback(Lcom/fingerprints/service/FingerprintManager$CaptureCallback;)V

    .line 296
    const-string v0, "FingerPrint"

    const-string v1, "startEnrol"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->mgr:Lcom/fingerprints/service/FingerprintManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/fingerprints/service/FingerprintManager;->startEnrol(Lcom/fingerprints/service/FingerprintManager$EnrolCallback;I)V

    .line 299
    :cond_0
    return-void
.end method

.method public onExist(I)V
    .locals 5
    .param p1, "arg0"    # I

    .prologue
    const/4 v4, 0x0

    .line 475
    const-string v0, "FingerprintEnrol"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExist------------->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const v0, 0x7f060068

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/enroll/FPCEnrol;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->fingerLayout:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 478
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 479
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090067

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->isIdentify:Z

    .line 481
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->percentTip:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->animationMask:Landroid/widget/ImageView;

    const v1, 0x7f020222

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 483
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->animationMask:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->animFadeInOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 487
    return-void
.end method

.method public onIdentified(IZ)V
    .locals 5
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Z

    .prologue
    const/4 v4, 0x0

    .line 305
    const v0, 0x7f060068

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/enroll/FPCEnrol;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->fingerLayout:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 308
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090067

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->isIdentify:Z

    .line 310
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->percentTip:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->animationMask:Landroid/widget/ImageView;

    const v1, 0x7f020222

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 312
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->animationMask:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->animFadeInOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 313
    invoke-direct {p0}, Lcom/zte/fingerprint/enroll/FPCEnrol;->match()V

    .line 314
    return-void
.end method

.method public onInput()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 344
    iget v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->currentProgress:I

    const/16 v1, 0x1a

    if-gt v0, v1, :cond_0

    .line 345
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->continueTip:Landroid/widget/TextView;

    const v1, 0x7f090074

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/enroll/FPCEnrol;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->continueTipSml:Landroid/widget/TextView;

    const v1, 0x7f090077

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/enroll/FPCEnrol;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    :goto_0
    const v0, 0x7f060068

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/enroll/FPCEnrol;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 357
    const v0, 0x7f06005f

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/enroll/FPCEnrol;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->fingerLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 363
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->continueTip:Landroid/widget/TextView;

    const v1, 0x7f090078

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/enroll/FPCEnrol;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->continueTipSml:Landroid/widget/TextView;

    const v1, 0x7f090079

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/enroll/FPCEnrol;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onNoMatch()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 318
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->mgr:Lcom/fingerprints/service/FingerprintManager;

    if-eqz v0, :cond_0

    .line 319
    const-string v0, "FingerPrint"

    const-string v1, "abort"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->mgr:Lcom/fingerprints/service/FingerprintManager;

    invoke-virtual {v0}, Lcom/fingerprints/service/FingerprintManager;->abort()V

    .line 321
    const v0, 0x7f060068

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/enroll/FPCEnrol;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->fingerLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 324
    const-string v0, "FingerPrint"

    const-string v1, "setCapturCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->mgr:Lcom/fingerprints/service/FingerprintManager;

    invoke-virtual {v0, p0}, Lcom/fingerprints/service/FingerprintManager;->setCaptureCallback(Lcom/fingerprints/service/FingerprintManager$CaptureCallback;)V

    .line 326
    const-string v0, "FingerPrint"

    const-string v1, "startEnrol"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->mgr:Lcom/fingerprints/service/FingerprintManager;

    invoke-virtual {v0, p0, v2}, Lcom/fingerprints/service/FingerprintManager;->startEnrol(Lcom/fingerprints/service/FingerprintManager$EnrolCallback;I)V

    .line 328
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->percentTip:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 329
    iput-boolean v2, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->isIdentify:Z

    .line 330
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->continueTip:Landroid/widget/TextView;

    const v1, 0x7f090065

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/enroll/FPCEnrol;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->continueTipSml:Landroid/widget/TextView;

    const v1, 0x7f090061

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/enroll/FPCEnrol;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 121
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->mgr:Lcom/fingerprints/service/FingerprintManager;

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "FingerPrint"

    const-string v1, "clearCapturCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->mgr:Lcom/fingerprints/service/FingerprintManager;

    invoke-virtual {v0, v2}, Lcom/fingerprints/service/FingerprintManager;->setCaptureCallback(Lcom/fingerprints/service/FingerprintManager$CaptureCallback;)V

    .line 124
    const-string v0, "FingerPrint"

    const-string v1, "abort"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->mgr:Lcom/fingerprints/service/FingerprintManager;

    invoke-virtual {v0}, Lcom/fingerprints/service/FingerprintManager;->abort()V

    .line 126
    const-string v0, "FingerprintEnrol"

    invoke-static {v0}, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->releaseManager(Ljava/lang/String;)V

    .line 127
    iput-object v2, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->mgr:Lcom/fingerprints/service/FingerprintManager;

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/zte/fingerprint/enroll/FPCEnrol;->finish()V

    .line 130
    return-void
.end method

.method public onProgress(Lcom/fingerprints/service/FingerprintManager$GuidedData;)V
    .locals 4
    .param p1, "guidedData"    # Lcom/fingerprints/service/FingerprintManager$GuidedData;

    .prologue
    const/4 v3, 0x1

    .line 447
    iget-object v2, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->mVibrator:Landroid/os/Vibrator;

    iget-object v0, p1, Lcom/fingerprints/service/FingerprintManager$GuidedData;->guidedResult:Lcom/fingerprints/service/FingerprintManager$GuidedResult;

    iget v0, v0, Lcom/fingerprints/service/FingerprintManager$GuidedResult;->guidedAcceptance:I

    if-ne v0, v3, :cond_0

    const-wide/16 v0, 0x32

    .line 448
    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 450
    iget-object v0, p1, Lcom/fingerprints/service/FingerprintManager$GuidedData;->guidedResult:Lcom/fingerprints/service/FingerprintManager$GuidedResult;

    iget v0, v0, Lcom/fingerprints/service/FingerprintManager$GuidedResult;->guidedAcceptance:I

    if-eq v0, v3, :cond_1

    .line 451
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/enroll/FPCEnrol;->onCaptureFailed(I)V

    .line 459
    :goto_1
    return-void

    .line 447
    :cond_0
    const-wide/16 v0, 0x190

    goto :goto_0

    .line 454
    :cond_1
    const-string v0, "FingerprintEnrol"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgress------------->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/fingerprints/service/FingerprintManager$GuidedData;->guidedProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget v0, p1, Lcom/fingerprints/service/FingerprintManager$GuidedData;->guidedProgress:I

    iput v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->currentProgress:I

    .line 456
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->progress_percent:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/fingerprints/service/FingerprintManager$GuidedData;->guidedProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget v0, p1, Lcom/fingerprints/service/FingerprintManager$GuidedData;->guidedProgress:I

    invoke-direct {p0, v0}, Lcom/zte/fingerprint/enroll/FPCEnrol;->startFingerAnimation(I)V

    goto :goto_1
.end method

.method public onRest()V
    .locals 0

    .prologue
    .line 492
    invoke-direct {p0}, Lcom/zte/fingerprint/enroll/FPCEnrol;->match()V

    .line 493
    return-void
.end method

.method public onWaitingForInput()V
    .locals 3

    .prologue
    const v2, 0x7f090077

    .line 367
    const-string v0, "FingerprintEnrol"

    const-string v1, "onInput"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->currentProgress:I

    const/16 v1, 0x1a

    if-gt v0, v1, :cond_0

    .line 382
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->continueTip:Landroid/widget/TextView;

    const v1, 0x7f090073

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/enroll/FPCEnrol;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->continueTipSml:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/zte/fingerprint/enroll/FPCEnrol;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    :goto_0
    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->continueTip:Landroid/widget/TextView;

    const v1, 0x7f090076

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/enroll/FPCEnrol;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol;->continueTipSml:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/zte/fingerprint/enroll/FPCEnrol;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
