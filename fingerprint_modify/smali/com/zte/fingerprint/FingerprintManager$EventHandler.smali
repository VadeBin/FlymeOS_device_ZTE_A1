.class Lcom/zte/fingerprint/FingerprintManager$EventHandler;
.super Landroid/os/Handler;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/fingerprint/FingerprintManager;


# direct methods
.method public constructor <init>(Lcom/zte/fingerprint/FingerprintManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/zte/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/FingerprintManager;

    .line 271
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 272
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 277
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 339
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 281
    :pswitch_1
    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/FingerprintManager;

    # getter for: Lcom/zte/fingerprint/FingerprintManager;->mEnrolListener:Lcom/zte/fingerprint/FingerprintManager$IEnrolListener;
    invoke-static {v2}, Lcom/zte/fingerprint/FingerprintManager;->access$000(Lcom/zte/fingerprint/FingerprintManager;)Lcom/zte/fingerprint/FingerprintManager$IEnrolListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 283
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 284
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "enrolinfo"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 285
    .local v1, "enrolinfo":[I
    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/FingerprintManager;

    # invokes: Lcom/zte/fingerprint/FingerprintManager;->PackGuidedData([I)Z
    invoke-static {v2, v1}, Lcom/zte/fingerprint/FingerprintManager;->access$100(Lcom/zte/fingerprint/FingerprintManager;[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/FingerprintManager;

    # getter for: Lcom/zte/fingerprint/FingerprintManager;->mEnrolListener:Lcom/zte/fingerprint/FingerprintManager$IEnrolListener;
    invoke-static {v2}, Lcom/zte/fingerprint/FingerprintManager;->access$000(Lcom/zte/fingerprint/FingerprintManager;)Lcom/zte/fingerprint/FingerprintManager$IEnrolListener;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/FingerprintManager;

    # getter for: Lcom/zte/fingerprint/FingerprintManager;->mGuidedData:Lcom/zte/fingerprint/FingerprintManager$GuidedData;
    invoke-static {v3}, Lcom/zte/fingerprint/FingerprintManager;->access$200(Lcom/zte/fingerprint/FingerprintManager;)Lcom/zte/fingerprint/FingerprintManager$GuidedData;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/FingerprintManager;

    # getter for: Lcom/zte/fingerprint/FingerprintManager;->mEnrolUserData:I
    invoke-static {v4}, Lcom/zte/fingerprint/FingerprintManager;->access$300(Lcom/zte/fingerprint/FingerprintManager;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/zte/fingerprint/FingerprintManager$IEnrolListener;->onProgress(Lcom/zte/fingerprint/FingerprintManager$GuidedData;I)V

    goto :goto_0

    .line 291
    :cond_1
    const-string v2, "PackGuidedData failed!"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 298
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "enrolinfo":[I
    :pswitch_2
    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/FingerprintManager;

    # getter for: Lcom/zte/fingerprint/FingerprintManager;->mEnrolListener:Lcom/zte/fingerprint/FingerprintManager$IEnrolListener;
    invoke-static {v2}, Lcom/zte/fingerprint/FingerprintManager;->access$000(Lcom/zte/fingerprint/FingerprintManager;)Lcom/zte/fingerprint/FingerprintManager$IEnrolListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 300
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "MSG_ENROL_RESULT arg1 = %d, arg2 = %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/FingerprintManager;

    # getter for: Lcom/zte/fingerprint/FingerprintManager;->mEnrolListener:Lcom/zte/fingerprint/FingerprintManager$IEnrolListener;
    invoke-static {v2}, Lcom/zte/fingerprint/FingerprintManager;->access$000(Lcom/zte/fingerprint/FingerprintManager;)Lcom/zte/fingerprint/FingerprintManager$IEnrolListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object v5, p0, Lcom/zte/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/FingerprintManager;

    # getter for: Lcom/zte/fingerprint/FingerprintManager;->mEnrolUserData:I
    invoke-static {v5}, Lcom/zte/fingerprint/FingerprintManager;->access$300(Lcom/zte/fingerprint/FingerprintManager;)I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lcom/zte/fingerprint/FingerprintManager$IEnrolListener;->onResult(III)V

    goto :goto_0

    .line 307
    :pswitch_3
    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/FingerprintManager;

    # getter for: Lcom/zte/fingerprint/FingerprintManager;->mEnrolListener:Lcom/zte/fingerprint/FingerprintManager$IEnrolListener;
    invoke-static {v2}, Lcom/zte/fingerprint/FingerprintManager;->access$000(Lcom/zte/fingerprint/FingerprintManager;)Lcom/zte/fingerprint/FingerprintManager$IEnrolListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 309
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "MSG_ENROLL_STATUS %d"

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/FingerprintManager;

    # getter for: Lcom/zte/fingerprint/FingerprintManager;->mEnrolListener:Lcom/zte/fingerprint/FingerprintManager$IEnrolListener;
    invoke-static {v2}, Lcom/zte/fingerprint/FingerprintManager;->access$000(Lcom/zte/fingerprint/FingerprintManager;)Lcom/zte/fingerprint/FingerprintManager$IEnrolListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/zte/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/FingerprintManager;

    # getter for: Lcom/zte/fingerprint/FingerprintManager;->mEnrolUserData:I
    invoke-static {v4}, Lcom/zte/fingerprint/FingerprintManager;->access$300(Lcom/zte/fingerprint/FingerprintManager;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/zte/fingerprint/FingerprintManager$IEnrolListener;->onStatus(II)V

    goto/16 :goto_0

    .line 317
    :pswitch_4
    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/FingerprintManager;

    # getter for: Lcom/zte/fingerprint/FingerprintManager;->mIdentifyListener:Lcom/zte/fingerprint/FingerprintManager$IdentifyListener;
    invoke-static {v2}, Lcom/zte/fingerprint/FingerprintManager;->access$400(Lcom/zte/fingerprint/FingerprintManager;)Lcom/zte/fingerprint/FingerprintManager$IdentifyListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 319
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "MSG_IDENTIFY_STATUS %d"

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/FingerprintManager;

    # getter for: Lcom/zte/fingerprint/FingerprintManager;->mIdentifyListener:Lcom/zte/fingerprint/FingerprintManager$IdentifyListener;
    invoke-static {v2}, Lcom/zte/fingerprint/FingerprintManager;->access$400(Lcom/zte/fingerprint/FingerprintManager;)Lcom/zte/fingerprint/FingerprintManager$IdentifyListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/zte/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/FingerprintManager;

    # getter for: Lcom/zte/fingerprint/FingerprintManager;->mIdentifyUserData:I
    invoke-static {v4}, Lcom/zte/fingerprint/FingerprintManager;->access$500(Lcom/zte/fingerprint/FingerprintManager;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/zte/fingerprint/FingerprintManager$IdentifyListener;->onStatus(II)V

    goto/16 :goto_0

    .line 326
    :pswitch_5
    const-string v2, "MSG_IDENTIFY_RESULT:------------------->"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/FingerprintManager;

    # getter for: Lcom/zte/fingerprint/FingerprintManager;->mIdentifyListener:Lcom/zte/fingerprint/FingerprintManager$IdentifyListener;
    invoke-static {v2}, Lcom/zte/fingerprint/FingerprintManager;->access$400(Lcom/zte/fingerprint/FingerprintManager;)Lcom/zte/fingerprint/FingerprintManager$IdentifyListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 329
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "MSG_IDENTIFY_RESULT %d"

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/FingerprintManager;

    # getter for: Lcom/zte/fingerprint/FingerprintManager;->mIdentifyListener:Lcom/zte/fingerprint/FingerprintManager$IdentifyListener;
    invoke-static {v2}, Lcom/zte/fingerprint/FingerprintManager;->access$400(Lcom/zte/fingerprint/FingerprintManager;)Lcom/zte/fingerprint/FingerprintManager$IdentifyListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object v5, p0, Lcom/zte/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/FingerprintManager;

    # getter for: Lcom/zte/fingerprint/FingerprintManager;->mIdentifyUserData:I
    invoke-static {v5}, Lcom/zte/fingerprint/FingerprintManager;->access$500(Lcom/zte/fingerprint/FingerprintManager;)I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lcom/zte/fingerprint/FingerprintManager$IdentifyListener;->onResult(III)V

    goto/16 :goto_0

    .line 331
    :cond_2
    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/FingerprintManager;

    # getter for: Lcom/zte/fingerprint/FingerprintManager;->mAuthenticateListener:Lcom/zte/fingerprint/FingerprintManager$IAuthenticateListener;
    invoke-static {v2}, Lcom/zte/fingerprint/FingerprintManager;->access$600(Lcom/zte/fingerprint/FingerprintManager;)Lcom/zte/fingerprint/FingerprintManager$IAuthenticateListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 333
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "MSG_AUTHEN_RESULT %d"

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zte/fingerprint/FingerprintManager;

    # getter for: Lcom/zte/fingerprint/FingerprintManager;->mAuthenticateListener:Lcom/zte/fingerprint/FingerprintManager$IAuthenticateListener;
    invoke-static {v2}, Lcom/zte/fingerprint/FingerprintManager;->access$600(Lcom/zte/fingerprint/FingerprintManager;)Lcom/zte/fingerprint/FingerprintManager$IAuthenticateListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-interface {v3, v4, v2}, Lcom/zte/fingerprint/FingerprintManager$IAuthenticateListener;->onResult(I[B)V

    goto/16 :goto_0

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
