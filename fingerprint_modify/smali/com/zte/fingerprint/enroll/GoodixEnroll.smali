.class public Lcom/zte/fingerprint/enroll/GoodixEnroll;
.super Lcom/zte/fingerprint/enroll/FingerprintEnroll;
.source "GoodixEnroll.java"

# interfaces
.implements Lcom/zte/fingerprint/FingerprintManager$IEnrolListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "FingerprintEnrol"

.field private static final VIBRATE_MS_ACCEPTED:J = 0x32L

.field private static final VIBRATE_MS_REJECTED:J = 0x190L


# instance fields
.field afterExit:Z

.field private animFadeInOut:Landroid/view/animation/Animation;

.field private animationBg:Landroid/widget/ImageView;

.field private animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private animationMask:Landroid/widget/ImageView;

.field private continueTip:Landroid/widget/TextView;

.field private continueTipSml:Landroid/widget/TextView;

.field private continuousFailCount:I

.field private currentAnimation:I

.field private currentProgress:I

.field private exitFingerprint:Z

.field private exitHintToast:Landroid/widget/Toast;

.field private fingerLayout:Landroid/view/View;

.field private fingerNames:[Ljava/lang/String;

.field private introduceView:Landroid/widget/ImageView;

.field private mVibrator:Landroid/os/Vibrator;

.field private mgr:Lcom/zte/fingerprint/FingerprintManager;

.field private progressTip:Landroid/widget/LinearLayout;

.field private tvPercent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1}, Lcom/zte/fingerprint/enroll/FingerprintEnroll;-><init>(Landroid/app/Activity;)V

    .line 37
    iput-boolean v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->afterExit:Z

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->currentAnimation:I

    .line 50
    iput v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->currentProgress:I

    .line 63
    iput v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continuousFailCount:I

    .line 64
    iput-boolean v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->exitFingerprint:Z

    .line 33
    return-void
.end method

.method private calculateCurrentNumber(I)I
    .locals 9
    .param p1, "id"    # I

    .prologue
    .line 318
    const/4 v3, 0x1

    .line 319
    .local v3, "number":I
    const/4 v0, 0x0

    .line 320
    .local v0, "count":I
    iget-object v5, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->fingerNames:[Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 321
    invoke-virtual {p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090054

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 322
    .local v4, "prefix":Ljava/lang/String;
    iget-object v6, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->fingerNames:[Ljava/lang/String;

    array-length v7, v6

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v2, v6, v5

    .line 323
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 324
    add-int/lit8 v0, v0, 0x1

    .line 325
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 327
    const/4 v8, 0x2

    :try_start_0
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 328
    .local v1, "existNumber":I
    if-le v1, v0, :cond_0

    if-lt v1, v3, :cond_0

    if-gt v1, p1, :cond_0

    .line 329
    add-int/lit8 v3, v1, 0x1

    .line 322
    .end local v1    # "existNumber":I
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 339
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_1
    if-lt v0, v3, :cond_2

    .line 340
    add-int/lit8 v3, v0, 0x1

    .line 342
    :cond_2
    return v3

    .line 332
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v4    # "prefix":Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method private clearProgressHint()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->tvPercent:Landroid/widget/TextView;

    const-string v1, "(0%)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationMask:Landroid/widget/ImageView;

    const v1, 0x7f020222

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationBg:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->convertViewVisibleState(Landroid/view/View;I)V

    .line 96
    return-void
.end method

.method private convertViewVisibleState(Landroid/view/View;I)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "newState"    # I

    .prologue
    .line 99
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 102
    :cond_0
    return-void
.end method

.method private initFingerprintParameter()V
    .locals 3

    .prologue
    .line 165
    :try_start_0
    invoke-static {}, Lcom/zte/fingerprint/FingerprintManager;->open()Lcom/zte/fingerprint/FingerprintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mgr:Lcom/zte/fingerprint/FingerprintManager;

    .line 166
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mgr:Lcom/zte/fingerprint/FingerprintManager;

    if-nez v1, :cond_0

    .line 167
    const-string v1, "csx"

    const-string v2, "FingerprintEnrolActivity manager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/zte/fingerprint/FingerprintException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Lcom/zte/fingerprint/FingerprintException;
    invoke-virtual {v0}, Lcom/zte/fingerprint/FingerprintException;->printStackTrace()V

    .line 171
    invoke-virtual {p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->finish()V

    goto :goto_0
.end method

.method private showReenrolFingerDialog()V
    .locals 4

    .prologue
    .line 425
    new-instance v0, Lcom/zte/mifavor/widget/AlertDialog$Builder;

    iget-object v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/zte/mifavor/widget/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 426
    .local v0, "builder":Lcom/zte/mifavor/widget/AlertDialog$Builder;
    const v1, 0x7f090057

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setTitle(I)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    .line 427
    const v1, 0x7f09006c

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setMessage(I)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09005d

    new-instance v3, Lcom/zte/fingerprint/enroll/GoodixEnroll$2;

    invoke-direct {v3, p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll$2;-><init>(Lcom/zte/fingerprint/enroll/GoodixEnroll;)V

    .line 428
    invoke-virtual {v1, v2, v3}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    .line 433
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->create()Lcom/zte/mifavor/widget/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/AlertDialog;->show()V

    .line 434
    return-void
.end method

.method private startEnrol()V
    .locals 8

    .prologue
    .line 192
    const/4 v7, 0x0

    .line 194
    .local v7, "i":I
    :try_start_0
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mgr:Lcom/zte/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    const/4 v6, -0x1

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/zte/fingerprint/FingerprintManager;->startEnrol(Lcom/zte/fingerprint/FingerprintManager$IEnrolListener;Ljava/lang/String;JI)I
    :try_end_0
    .catch Lcom/zte/fingerprint/FingerprintException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 198
    :goto_0
    const-string v1, "csx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startEnrol result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Lcom/zte/fingerprint/FingerprintException;
    invoke-virtual {v0}, Lcom/zte/fingerprint/FingerprintException;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized startFingerAnimation(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->tvPercent:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    invoke-direct {p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->stopIntroduceAnim()V

    .line 218
    div-int/lit8 v0, p1, 0xa

    .line 219
    .local v0, "animation":I
    iget v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->currentAnimation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v0, :cond_1

    .line 285
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 222
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationBg:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->convertViewVisibleState(Landroid/view/View;I)V

    .line 223
    iput v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->currentAnimation:I

    .line 224
    packed-switch v0, :pswitch_data_0

    .line 282
    :goto_1
    iget v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->currentAnimation:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 283
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationMask:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animFadeInOut:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 216
    .end local v0    # "animation":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 230
    .restart local v0    # "animation":I
    :pswitch_0
    :try_start_2
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationMask:Landroid/widget/ImageView;

    const v2, 0x7f020222

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 231
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationBg:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->convertViewVisibleState(Landroid/view/View;I)V

    goto :goto_1

    .line 235
    :pswitch_1
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationMask:Landroid/widget/ImageView;

    const v2, 0x7f020223

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 236
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationBg:Landroid/widget/ImageView;

    const v2, 0x7f020222

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 244
    :pswitch_2
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationMask:Landroid/widget/ImageView;

    const v2, 0x7f020224

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 245
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationBg:Landroid/widget/ImageView;

    const v2, 0x7f020223

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 251
    :pswitch_3
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationMask:Landroid/widget/ImageView;

    const v2, 0x7f020225

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 252
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationBg:Landroid/widget/ImageView;

    const v2, 0x7f020224

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 258
    :pswitch_4
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationMask:Landroid/widget/ImageView;

    const v2, 0x7f020226

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 259
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationBg:Landroid/widget/ImageView;

    const v2, 0x7f020225

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 267
    :pswitch_5
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationMask:Landroid/widget/ImageView;

    const v2, 0x7f020227

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 268
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationBg:Landroid/widget/ImageView;

    const v2, 0x7f020226

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 274
    :pswitch_6
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationBg:Landroid/widget/ImageView;

    const v2, 0x7f020227

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private startIntroduceAnim()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->fingerLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->introduceView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->introduceView:Landroid/widget/ImageView;

    const v1, 0x7f02021d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 205
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->introduceView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 206
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 207
    return-void
.end method

.method private stopIntroduceAnim()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->introduceView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 212
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->fingerLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 213
    return-void
.end method


# virtual methods
.method public onCaptureFailed(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 421
    const v0, 0x7f06005f

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 422
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fingerNames"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->fingerNames:[Ljava/lang/String;

    .line 131
    invoke-direct {p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->initFingerprintParameter()V

    .line 132
    const v0, 0x7f03003d

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->setContentView(I)V

    .line 133
    const v0, 0x7f060067

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->tvPercent:Landroid/widget/TextView;

    .line 134
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mActivity:Landroid/app/Activity;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mVibrator:Landroid/os/Vibrator;

    .line 135
    const v0, 0x7f060065

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationBg:Landroid/widget/ImageView;

    .line 136
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationBg:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setKeepScreenOn(Z)V

    .line 137
    const v0, 0x7f060064

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animationMask:Landroid/widget/ImageView;

    .line 138
    const v0, 0x7f060062

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->fingerLayout:Landroid/view/View;

    .line 140
    invoke-virtual {p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040004

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->animFadeInOut:Landroid/view/animation/Animation;

    .line 141
    const v0, 0x7f060060

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continueTip:Landroid/widget/TextView;

    .line 142
    const v0, 0x7f060061

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continueTipSml:Landroid/widget/TextView;

    .line 143
    const v0, 0x7f060069

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->introduceView:Landroid/widget/ImageView;

    .line 144
    const v0, 0x7f060066

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->progressTip:Landroid/widget/LinearLayout;

    .line 152
    const v0, 0x7f06006a

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/zte/fingerprint/enroll/GoodixEnroll$1;

    invoke-direct {v1, p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll$1;-><init>(Lcom/zte/fingerprint/enroll/GoodixEnroll;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    invoke-direct {p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->startIntroduceAnim()V

    .line 159
    invoke-direct {p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->startEnrol()V

    .line 161
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 439
    return-void
.end method

.method public onEnrolled(I)V
    .locals 7
    .param p1, "arg0"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 291
    iget-object v2, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continueTip:Landroid/widget/TextView;

    const v3, 0x7f090063

    invoke-virtual {p0, v3}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v2, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continueTipSml:Landroid/widget/TextView;

    const v3, 0x7f090064

    invoke-virtual {p0, v3}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    const v2, 0x7f06006a

    invoke-virtual {p0, v2}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iget-object v2, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->progressTip:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 297
    :try_start_0
    iget-object v2, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mgr:Lcom/zte/fingerprint/FingerprintManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f090054

    invoke-virtual {p0, v4}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->calculateCurrentNumber(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/zte/fingerprint/FingerprintManager;->updateFpName(ILjava/lang/String;)I

    .line 298
    iget-object v2, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mActivity:Landroid/app/Activity;

    const-string v3, "pref:fingerprint"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 299
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f090054

    invoke-virtual {p0, v5}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->calculateCurrentNumber(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 300
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Lcom/zte/fingerprint/FingerprintException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mgr:Lcom/zte/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Lcom/zte/fingerprint/FingerprintManager;->getFpIds()[I

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mgr:Lcom/zte/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Lcom/zte/fingerprint/FingerprintManager;->getFpIds()[I

    move-result-object v2

    array-length v2, v2

    if-ne v2, v6, :cond_0

    .line 306
    iget-object v2, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/zte/mifavor/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "lock_for_screen"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 308
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.zte.fingerprint.FINGER_COUNT_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Lcom/zte/fingerprint/FingerprintException; {:try_start_1 .. :try_end_1} :catch_1

    .line 314
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Lcom/zte/fingerprint/FingerprintException;
    invoke-virtual {v0}, Lcom/zte/fingerprint/FingerprintException;->printStackTrace()V

    goto :goto_0

    .line 310
    .end local v0    # "e":Lcom/zte/fingerprint/FingerprintException;
    :catch_1
    move-exception v0

    .line 311
    .restart local v0    # "e":Lcom/zte/fingerprint/FingerprintException;
    invoke-virtual {v0}, Lcom/zte/fingerprint/FingerprintException;->printStackTrace()V

    goto :goto_1
.end method

.method public onEnrollmentFailed()V
    .locals 0

    .prologue
    .line 346
    return-void
.end method

.method public onInput()V
    .locals 4

    .prologue
    const v3, 0x7f090077

    const v2, 0x7f090073

    .line 397
    iget-boolean v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->exitFingerprint:Z

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continueTip:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continueTipSml:Landroid/widget/TextView;

    const v1, 0x7f090075

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 400
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->exitFingerprint:Z

    .line 417
    :goto_0
    return-void

    .line 410
    :cond_0
    iget v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->currentProgress:I

    const/16 v1, 0x1a

    if-gt v0, v1, :cond_1

    .line 411
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continueTip:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continueTipSml:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continueTip:Landroid/widget/TextView;

    const v1, 0x7f090076

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continueTipSml:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 179
    const-string v1, "FingerPrint"

    const-string v2, "abort"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mgr:Lcom/zte/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/zte/fingerprint/FingerprintManager;->cancel()I

    .line 182
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mgr:Lcom/zte/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/zte/fingerprint/FingerprintManager;->release()I
    :try_end_0
    .catch Lcom/zte/fingerprint/FingerprintException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mgr:Lcom/zte/fingerprint/FingerprintManager;

    .line 187
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.zte.fingerprints.EnrolActivityFinished"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->sendBroadcast(Landroid/content/Intent;)V

    .line 188
    invoke-virtual {p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->finish()V

    .line 189
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Lcom/zte/fingerprint/FingerprintException;
    invoke-virtual {v0}, Lcom/zte/fingerprint/FingerprintException;->printStackTrace()V

    goto :goto_0
.end method

.method public onProgress(I)V
    .locals 8
    .param p1, "progress"    # I

    .prologue
    const-wide/16 v6, 0x190

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 349
    const-string v0, "csx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enrol progress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const v0, 0x7f060068

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->convertViewVisibleState(Landroid/view/View;I)V

    .line 351
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->fingerLayout:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->convertViewVisibleState(Landroid/view/View;I)V

    .line 352
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->progressTip:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v3}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->convertViewVisibleState(Landroid/view/View;I)V

    .line 353
    const/16 v0, -0x2710

    if-ne p1, v0, :cond_2

    .line 354
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    .line 355
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->exitHintToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->exitHintToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090067

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->exitHintToast:Landroid/widget/Toast;

    .line 359
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->exitHintToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 360
    invoke-direct {p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->clearProgressHint()V

    .line 361
    iput v3, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->currentProgress:I

    .line 362
    iput-boolean v4, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->exitFingerprint:Z

    .line 377
    :cond_1
    :goto_0
    return-void

    .line 363
    :cond_2
    iget v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->currentProgress:I

    if-le p1, v0, :cond_3

    const/16 v0, 0x64

    if-gt p1, v0, :cond_3

    .line 364
    iput v3, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continuousFailCount:I

    .line 365
    iput p1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->currentProgress:I

    .line 366
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 367
    iget v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->currentProgress:I

    invoke-direct {p0, v0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->startFingerAnimation(I)V

    goto :goto_0

    .line 370
    :cond_3
    iget v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continuousFailCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continuousFailCount:I

    .line 371
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    .line 372
    invoke-virtual {p0, v3}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->onCaptureFailed(I)V

    .line 373
    iget v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continuousFailCount:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    .line 374
    invoke-direct {p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->showReenrolFingerDialog()V

    goto :goto_0
.end method

.method public onProgress(Lcom/zte/fingerprint/FingerprintManager$GuidedData;I)V
    .locals 3
    .param p1, "guidedData"    # Lcom/zte/fingerprint/FingerprintManager$GuidedData;
    .param p2, "i"    # I

    .prologue
    .line 69
    const-string v0, "csx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgress i="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/fingerprint/FingerprintManager$GuidedData;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " i1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p1}, Lcom/zte/fingerprint/FingerprintManager$GuidedData;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->onProgress(I)V

    .line 71
    return-void
.end method

.method public onResult(III)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "i1"    # I
    .param p3, "i2"    # I

    .prologue
    .line 75
    const-string v0, "csx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResult i="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " i1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    packed-switch p1, :pswitch_data_0

    .line 81
    invoke-virtual {p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->onEnrollmentFailed()V

    .line 83
    :goto_0
    return-void

    .line 78
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->onEnrolled(I)V

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onStatus(II)V
    .locals 5
    .param p1, "i"    # I
    .param p2, "i1"    # I

    .prologue
    const/4 v4, 0x0

    .line 106
    const-string v1, "csx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStatus i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " i1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    packed-switch p1, :pswitch_data_0

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 109
    :pswitch_0
    invoke-virtual {p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->onInput()V

    .line 110
    iget-boolean v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->afterExit:Z

    if-eqz v1, :cond_0

    .line 111
    iput-boolean v4, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->afterExit:Z

    .line 112
    invoke-direct {p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->clearProgressHint()V

    .line 113
    iput v4, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->currentProgress:I

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->mgr:Lcom/zte/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/zte/fingerprint/FingerprintManager;->cancel()I
    :try_end_0
    .catch Lcom/zte/fingerprint/FingerprintException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_1
    invoke-direct {p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->startEnrol()V

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Lcom/zte/fingerprint/FingerprintException;
    invoke-virtual {v0}, Lcom/zte/fingerprint/FingerprintException;->printStackTrace()V

    goto :goto_1

    .line 123
    .end local v0    # "e":Lcom/zte/fingerprint/FingerprintException;
    :pswitch_1
    invoke-virtual {p0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->onWaitingForInput()V

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onWaitingForInput()V
    .locals 3

    .prologue
    const v2, 0x7f090074

    .line 381
    iget-boolean v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->exitFingerprint:Z

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continueTip:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continueTipSml:Landroid/widget/TextView;

    const v1, 0x7f090075

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 394
    :goto_0
    return-void

    .line 386
    :cond_0
    iget v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->currentProgress:I

    const/16 v1, 0x1a

    if-gt v0, v1, :cond_1

    .line 387
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continueTip:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continueTipSml:Landroid/widget/TextView;

    const v1, 0x7f090077

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continueTip:Landroid/widget/TextView;

    const v1, 0x7f090078

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll;->continueTipSml:Landroid/widget/TextView;

    const v1, 0x7f090079

    invoke-virtual {p0, v1}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
