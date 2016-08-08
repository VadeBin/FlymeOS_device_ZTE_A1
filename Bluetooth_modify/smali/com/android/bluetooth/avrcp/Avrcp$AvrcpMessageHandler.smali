.class final Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;
.super Landroid/os/Handler;
.source "Avrcp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/Avrcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AvrcpMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/avrcp/Avrcp;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    .line 264
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 265
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/os/Looper;Lcom/android/bluetooth/avrcp/Avrcp$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/avrcp/Avrcp;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/android/bluetooth/avrcp/Avrcp$1;

    .prologue
    .line 262
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 269
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    sparse-switch v18, :sswitch_data_0

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 271
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-wide/from16 v2, v22

    # invokes: Lcom/android/bluetooth/avrcp/Avrcp;->updatePlayPauseState(IJ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/bluetooth/avrcp/Avrcp;->access$100(Lcom/android/bluetooth/avrcp/Avrcp;IJ)V

    goto :goto_0

    .line 275
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/media/RemoteController$MetadataEditor;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    # invokes: Lcom/android/bluetooth/avrcp/Avrcp;->updateMetadata(Landroid/media/RemoteController$MetadataEditor;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->access$200(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/media/RemoteController$MetadataEditor;)V

    goto :goto_0

    .line 279
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v19, v0

    # invokes: Lcom/android/bluetooth/avrcp/Avrcp;->updateTransportControls(I)V
    invoke-static/range {v18 .. v19}, Lcom/android/bluetooth/avrcp/Avrcp;->access$300(Lcom/android/bluetooth/avrcp/Avrcp;I)V

    goto :goto_0

    .line 283
    :sswitch_3
    const-string v18, "Avrcp"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "New genId = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", clearing = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 287
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 288
    .local v5, "address":Ljava/lang/String;
    const-string v18, "Avrcp"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "MESSAGE_GET_RC_FEATURES: address="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", features="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    # setter for: Lcom/android/bluetooth/avrcp/Avrcp;->mFeatures:I
    invoke-static/range {v18 .. v19}, Lcom/android/bluetooth/avrcp/Avrcp;->access$402(Lcom/android/bluetooth/avrcp/Avrcp;I)I

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    # getter for: Lcom/android/bluetooth/avrcp/Avrcp;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/avrcp/Avrcp;->access$500(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/media/AudioManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/bluetooth/avrcp/Avrcp;->isAbsoluteVolumeSupported()Z

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/media/AudioManager;->avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 295
    .end local v5    # "address":Ljava/lang/String;
    :sswitch_5
    const-string v18, "Avrcp"

    const-string v19, "MESSAGE_GET_PLAY_STATUS"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/avrcp/Avrcp;->access$600(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v20

    # invokes: Lcom/android/bluetooth/avrcp/Avrcp;->convertPlayStateToPlayStatus(I)I
    invoke-static/range {v19 .. v20}, Lcom/android/bluetooth/avrcp/Avrcp;->access$700(Lcom/android/bluetooth/avrcp/Avrcp;I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/avrcp/Avrcp;->mSongLengthMs:J
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/avrcp/Avrcp;->access$800(Lcom/android/bluetooth/avrcp/Avrcp;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v21, v0

    # invokes: Lcom/android/bluetooth/avrcp/Avrcp;->getPlayPosition()J
    invoke-static/range {v21 .. v21}, Lcom/android/bluetooth/avrcp/Avrcp;->access$900(Lcom/android/bluetooth/avrcp/Avrcp;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v21, v0

    # invokes: Lcom/android/bluetooth/avrcp/Avrcp;->getPlayStatusRspNative(III)Z
    invoke-static/range {v18 .. v21}, Lcom/android/bluetooth/avrcp/Avrcp;->access$1000(Lcom/android/bluetooth/avrcp/Avrcp;III)Z

    goto/16 :goto_0

    .line 304
    :sswitch_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v11, v0

    .line 305
    .local v11, "numAttr":B
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    .line 306
    .local v7, "attrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v18, "Avrcp"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "MESSAGE_GET_ELEM_ATTRS:numAttr="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    new-array v6, v11, [I

    .line 308
    .local v6, "attrIds":[I
    new-array v0, v11, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 309
    .local v17, "textArray":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v11, :cond_1

    .line 310
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    aput v18, v6, v8

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    aget v19, v6, v8

    # invokes: Lcom/android/bluetooth/avrcp/Avrcp;->getAttributeString(I)Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/android/bluetooth/avrcp/Avrcp;->access$1100(Lcom/android/bluetooth/avrcp/Avrcp;I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v17, v8

    .line 309
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 313
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    # invokes: Lcom/android/bluetooth/avrcp/Avrcp;->getElementAttrRspNative(B[I[Ljava/lang/String;)Z
    invoke-static {v0, v11, v6, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->access$1200(Lcom/android/bluetooth/avrcp/Avrcp;B[I[Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 317
    .end local v6    # "attrIds":[I
    .end local v7    # "attrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "i":I
    .end local v11    # "numAttr":B
    .end local v17    # "textArray":[Ljava/lang/String;
    :sswitch_7
    const-string v18, "Avrcp"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "MESSAGE_REGISTER_NOTIFICATION:event="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " param="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    # invokes: Lcom/android/bluetooth/avrcp/Avrcp;->processRegisterNotification(II)V
    invoke-static/range {v18 .. v20}, Lcom/android/bluetooth/avrcp/Avrcp;->access$1300(Lcom/android/bluetooth/avrcp/Avrcp;II)V

    goto/16 :goto_0

    .line 323
    :sswitch_8
    const-string v18, "Avrcp"

    const-string v19, "MESSAGE_PLAY_INTERVAL_TIMEOUT"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    # setter for: Lcom/android/bluetooth/avrcp/Avrcp;->mPlayPosChangedNT:I
    invoke-static/range {v18 .. v19}, Lcom/android/bluetooth/avrcp/Avrcp;->access$1402(Lcom/android/bluetooth/avrcp/Avrcp;I)I

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v19, v0

    # getter for: Lcom/android/bluetooth/avrcp/Avrcp;->mPlayPosChangedNT:I
    invoke-static/range {v19 .. v19}, Lcom/android/bluetooth/avrcp/Avrcp;->access$1400(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v20, v0

    # invokes: Lcom/android/bluetooth/avrcp/Avrcp;->getPlayPosition()J
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/avrcp/Avrcp;->access$900(Lcom/android/bluetooth/avrcp/Avrcp;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    # invokes: Lcom/android/bluetooth/avrcp/Avrcp;->registerNotificationRspPlayPosNative(II)Z
    invoke-static/range {v18 .. v20}, Lcom/android/bluetooth/avrcp/Avrcp;->access$1500(Lcom/android/bluetooth/avrcp/Avrcp;II)Z

    goto/16 :goto_0

    .line 329
    :sswitch_9
    const-string v18, "Avrcp"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "MESSAGE_VOLUME_CHANGED: volume="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x7f

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ctype="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    const/16 v19, 0x9

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 333
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    # getter for: Lcom/android/bluetooth/avrcp/Avrcp;->mVolCmdInProgress:Z
    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/avrcp/Avrcp;->access$1600(Lcom/android/bluetooth/avrcp/Avrcp;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 334
    const-string v18, "Avrcp"

    const-string v19, "Unsolicited response, ignored"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 337
    :cond_3
    const/16 v18, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    # setter for: Lcom/android/bluetooth/avrcp/Avrcp;->mVolCmdInProgress:Z
    invoke-static/range {v18 .. v19}, Lcom/android/bluetooth/avrcp/Avrcp;->access$1602(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    # setter for: Lcom/android/bluetooth/avrcp/Avrcp;->mAbsVolRetryTimes:I
    invoke-static/range {v18 .. v19}, Lcom/android/bluetooth/avrcp/Avrcp;->access$1702(Lcom/android/bluetooth/avrcp/Avrcp;I)I

    .line 341
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    # getter for: Lcom/android/bluetooth/avrcp/Avrcp;->mAbsoluteVolume:I
    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/avrcp/Avrcp;->access$1800(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    const/16 v19, 0x9

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    const/16 v19, 0xf

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 344
    :cond_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x7f

    move/from16 v0, v18

    int-to-byte v4, v0

    .line 345
    .local v4, "absVol":B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/android/bluetooth/avrcp/Avrcp;->notifyVolumeChanged(I)V
    invoke-static {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->access$1900(Lcom/android/bluetooth/avrcp/Avrcp;I)V

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # setter for: Lcom/android/bluetooth/avrcp/Avrcp;->mAbsoluteVolume:I
    invoke-static {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->access$1802(Lcom/android/bluetooth/avrcp/Avrcp;I)I

    .line 347
    int-to-long v0, v4

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x64

    mul-long v18, v18, v20

    const-wide/16 v20, 0x7f

    div-long v12, v18, v20

    .line 348
    .local v12, "pecentVolChanged":J
    const-string v18, "Avrcp"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "percent volume changed: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "%"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 349
    .end local v4    # "absVol":B
    .end local v12    # "pecentVolChanged":J
    :cond_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 350
    const-string v18, "Avrcp"

    const-string v19, "setAbsoluteVolume call rejected"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 355
    :sswitch_a
    const-string v18, "Avrcp"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "MESSAGE_ADJUST_VOLUME: direction="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    # getter for: Lcom/android/bluetooth/avrcp/Avrcp;->mVolCmdInProgress:Z
    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/avrcp/Avrcp;->access$1600(Lcom/android/bluetooth/avrcp/Avrcp;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 357
    const-string v18, "Avrcp"

    const-string v19, "There is already a volume command in progress."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 361
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    # getter for: Lcom/android/bluetooth/avrcp/Avrcp;->mAbsoluteVolume:I
    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/avrcp/Avrcp;->access$1800(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 362
    :cond_8
    const/16 v18, 0x7f

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/avrcp/Avrcp;->mAbsoluteVolume:I
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/avrcp/Avrcp;->access$1800(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v22, v0

    # getter for: Lcom/android/bluetooth/avrcp/Avrcp;->mVolumeStep:I
    invoke-static/range {v22 .. v22}, Lcom/android/bluetooth/avrcp/Avrcp;->access$2000(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v22

    mul-int v21, v21, v22

    add-int v20, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 364
    .local v15, "setVol":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/android/bluetooth/avrcp/Avrcp;->setVolumeNative(I)Z
    invoke-static {v0, v15}, Lcom/android/bluetooth/avrcp/Avrcp;->access$2100(Lcom/android/bluetooth/avrcp/Avrcp;I)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 365
    const/16 v18, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    const-wide/16 v20, 0x7d0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    # setter for: Lcom/android/bluetooth/avrcp/Avrcp;->mVolCmdInProgress:Z
    invoke-static/range {v18 .. v19}, Lcom/android/bluetooth/avrcp/Avrcp;->access$1602(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    # setter for: Lcom/android/bluetooth/avrcp/Avrcp;->mLastDirection:I
    invoke-static/range {v18 .. v19}, Lcom/android/bluetooth/avrcp/Avrcp;->access$2202(Lcom/android/bluetooth/avrcp/Avrcp;I)I

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # setter for: Lcom/android/bluetooth/avrcp/Avrcp;->mLastSetVolume:I
    invoke-static {v0, v15}, Lcom/android/bluetooth/avrcp/Avrcp;->access$2302(Lcom/android/bluetooth/avrcp/Avrcp;I)I

    goto/16 :goto_0

    .line 372
    .end local v15    # "setVol":I
    :cond_9
    const-string v18, "Avrcp"

    const-string v19, "Unknown direction in MESSAGE_ADJUST_VOLUME"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 377
    :sswitch_b
    const-string v18, "Avrcp"

    const-string v19, "MESSAGE_SET_ABSOLUTE_VOLUME"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    # getter for: Lcom/android/bluetooth/avrcp/Avrcp;->mVolCmdInProgress:Z
    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/avrcp/Avrcp;->access$1600(Lcom/android/bluetooth/avrcp/Avrcp;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 379
    const-string v18, "Avrcp"

    const-string v19, "There is already a volume command in progress."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 382
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    # invokes: Lcom/android/bluetooth/avrcp/Avrcp;->setVolumeNative(I)Z
    invoke-static/range {v18 .. v19}, Lcom/android/bluetooth/avrcp/Avrcp;->access$2100(Lcom/android/bluetooth/avrcp/Avrcp;I)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 383
    const/16 v18, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    const-wide/16 v20, 0x7d0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    # setter for: Lcom/android/bluetooth/avrcp/Avrcp;->mVolCmdInProgress:Z
    invoke-static/range {v18 .. v19}, Lcom/android/bluetooth/avrcp/Avrcp;->access$1602(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    # setter for: Lcom/android/bluetooth/avrcp/Avrcp;->mLastSetVolume:I
    invoke-static/range {v18 .. v19}, Lcom/android/bluetooth/avrcp/Avrcp;->access$2302(Lcom/android/bluetooth/avrcp/Avrcp;I)I

    goto/16 :goto_0

    .line 390
    :sswitch_c
    const-string v18, "Avrcp"

    const-string v19, "MESSAGE_ABS_VOL_TIMEOUT: Volume change cmd timed out."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    # setter for: Lcom/android/bluetooth/avrcp/Avrcp;->mVolCmdInProgress:Z
    invoke-static/range {v18 .. v19}, Lcom/android/bluetooth/avrcp/Avrcp;->access$1602(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    # getter for: Lcom/android/bluetooth/avrcp/Avrcp;->mAbsVolRetryTimes:I
    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/avrcp/Avrcp;->access$1700(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_b

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    # setter for: Lcom/android/bluetooth/avrcp/Avrcp;->mAbsVolRetryTimes:I
    invoke-static/range {v18 .. v19}, Lcom/android/bluetooth/avrcp/Avrcp;->access$1702(Lcom/android/bluetooth/avrcp/Avrcp;I)I

    goto/16 :goto_0

    .line 395
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    # += operator for: Lcom/android/bluetooth/avrcp/Avrcp;->mAbsVolRetryTimes:I
    invoke-static/range {v18 .. v19}, Lcom/android/bluetooth/avrcp/Avrcp;->access$1712(Lcom/android/bluetooth/avrcp/Avrcp;I)I

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v19, v0

    # getter for: Lcom/android/bluetooth/avrcp/Avrcp;->mLastSetVolume:I
    invoke-static/range {v19 .. v19}, Lcom/android/bluetooth/avrcp/Avrcp;->access$2300(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v19

    # invokes: Lcom/android/bluetooth/avrcp/Avrcp;->setVolumeNative(I)Z
    invoke-static/range {v18 .. v19}, Lcom/android/bluetooth/avrcp/Avrcp;->access$2100(Lcom/android/bluetooth/avrcp/Avrcp;I)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 397
    const/16 v18, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    const-wide/16 v20, 0x7d0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    # setter for: Lcom/android/bluetooth/avrcp/Avrcp;->mVolCmdInProgress:Z
    invoke-static/range {v18 .. v19}, Lcom/android/bluetooth/avrcp/Avrcp;->access$1602(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z

    goto/16 :goto_0

    .line 406
    :sswitch_d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    # getter for: Lcom/android/bluetooth/avrcp/Avrcp;->mTransportControlFlags:I
    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/avrcp/Avrcp;->access$2400(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v18

    and-int/lit8 v18, v18, 0x40

    if-eqz v18, :cond_f

    .line 409
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    const/4 v10, 0x0

    .line 411
    .local v10, "keyState":I
    :goto_2
    new-instance v9, Landroid/view/KeyEvent;

    const/16 v18, 0x5a

    move/from16 v0, v18

    invoke-direct {v9, v10, v0}, Landroid/view/KeyEvent;-><init>(II)V

    .line 413
    .local v9, "keyEvent":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    # getter for: Lcom/android/bluetooth/avrcp/Avrcp;->mRemoteController:Landroid/media/RemoteController;
    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/avrcp/Avrcp;->access$2500(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/media/RemoteController;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/media/RemoteController;->sendMediaKeyEvent(Landroid/view/KeyEvent;)Z

    goto/16 :goto_0

    .line 409
    .end local v9    # "keyEvent":Landroid/view/KeyEvent;
    .end local v10    # "keyState":I
    :cond_c
    const/4 v10, 0x1

    goto :goto_2

    .line 416
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    # getter for: Lcom/android/bluetooth/avrcp/Avrcp;->mTransportControlFlags:I
    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/avrcp/Avrcp;->access$2400(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v18

    and-int/lit8 v18, v18, 0x2

    if-eqz v18, :cond_f

    .line 418
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    const/4 v10, 0x0

    .line 420
    .restart local v10    # "keyState":I
    :goto_3
    new-instance v9, Landroid/view/KeyEvent;

    const/16 v18, 0x59

    move/from16 v0, v18

    invoke-direct {v9, v10, v0}, Landroid/view/KeyEvent;-><init>(II)V

    .line 422
    .restart local v9    # "keyEvent":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    # getter for: Lcom/android/bluetooth/avrcp/Avrcp;->mRemoteController:Landroid/media/RemoteController;
    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/avrcp/Avrcp;->access$2500(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/media/RemoteController;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/media/RemoteController;->sendMediaKeyEvent(Landroid/view/KeyEvent;)Z

    goto/16 :goto_0

    .line 418
    .end local v9    # "keyEvent":Landroid/view/KeyEvent;
    .end local v10    # "keyState":I
    :cond_e
    const/4 v10, 0x1

    goto :goto_3

    .line 427
    :cond_f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    .line 428
    const-string v18, "Avrcp"

    const-string v19, "MESSAGE_FAST_FORWARD"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/16 v18, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    .line 430
    const/16 v16, 0x7d0

    .line 437
    .local v16, "skipAmount":I
    :goto_4
    const/16 v18, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->hasMessages(I)Z

    move-result v18

    if-eqz v18, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    # getter for: Lcom/android/bluetooth/avrcp/Avrcp;->mSkipAmount:I
    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/avrcp/Avrcp;->access$2600(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_10

    .line 439
    const-string v18, "Avrcp"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "missing release button event:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/avrcp/Avrcp;->mSkipAmount:I
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/avrcp/Avrcp;->access$2600(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_10
    const/16 v18, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->hasMessages(I)Z

    move-result v18

    if-eqz v18, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    # getter for: Lcom/android/bluetooth/avrcp/Avrcp;->mSkipAmount:I
    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/avrcp/Avrcp;->access$2600(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_12

    .line 444
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    # setter for: Lcom/android/bluetooth/avrcp/Avrcp;->mSkipStartTime:J
    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->access$2702(Lcom/android/bluetooth/avrcp/Avrcp;J)J

    .line 447
    :cond_12
    const/16 v18, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    .line 448
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    # setter for: Lcom/android/bluetooth/avrcp/Avrcp;->mSkipAmount:I
    invoke-static {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->access$2602(Lcom/android/bluetooth/avrcp/Avrcp;I)I

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v19, v0

    # getter for: Lcom/android/bluetooth/avrcp/Avrcp;->mSkipAmount:I
    invoke-static/range {v19 .. v19}, Lcom/android/bluetooth/avrcp/Avrcp;->access$2600(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v20, v0

    # invokes: Lcom/android/bluetooth/avrcp/Avrcp;->getSkipMultiplier()I
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/avrcp/Avrcp;->access$2800(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v20

    mul-int v19, v19, v20

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    # invokes: Lcom/android/bluetooth/avrcp/Avrcp;->changePositionBy(J)V
    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->access$2900(Lcom/android/bluetooth/avrcp/Avrcp;J)V

    .line 451
    const/16 v18, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    .line 452
    .local v14, "posMsg":Landroid/os/Message;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v14, Landroid/os/Message;->arg1:I

    .line 453
    const-wide/16 v18, 0x190

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 432
    .end local v14    # "posMsg":Landroid/os/Message;
    .end local v16    # "skipAmount":I
    :cond_13
    const-string v18, "Avrcp"

    const-string v19, "MESSAGE_REWIND"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/16 v18, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    .line 434
    const/16 v16, -0x7d0

    .restart local v16    # "skipAmount":I
    goto/16 :goto_4

    .line 459
    .end local v16    # "skipAmount":I
    :sswitch_e
    const-string v18, "Avrcp"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "MESSAGE_CHANGE_PLAY_POS:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v19, v0

    # getter for: Lcom/android/bluetooth/avrcp/Avrcp;->mSkipAmount:I
    invoke-static/range {v19 .. v19}, Lcom/android/bluetooth/avrcp/Avrcp;->access$2600(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v20, v0

    # invokes: Lcom/android/bluetooth/avrcp/Avrcp;->getSkipMultiplier()I
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/avrcp/Avrcp;->access$2800(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v20

    mul-int v19, v19, v20

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    # invokes: Lcom/android/bluetooth/avrcp/Avrcp;->changePositionBy(J)V
    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->access$2900(Lcom/android/bluetooth/avrcp/Avrcp;J)V

    .line 461
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x190

    move/from16 v18, v0

    const/16 v19, 0x7d0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 462
    const/16 v18, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    .line 463
    .restart local v14    # "posMsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    iput v0, v14, Landroid/os/Message;->arg1:I

    .line 464
    const-wide/16 v18, 0x190

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 469
    .end local v14    # "posMsg":Landroid/os/Message;
    :sswitch_f
    const-string v18, "Avrcp"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "MESSAGE_SET_A2DP_AUDIO_STATE:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    # invokes: Lcom/android/bluetooth/avrcp/Avrcp;->updateA2dpAudioState(I)V
    invoke-static/range {v18 .. v19}, Lcom/android/bluetooth/avrcp/Avrcp;->access$3000(Lcom/android/bluetooth/avrcp/Avrcp;I)V

    goto/16 :goto_0

    .line 269
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_5
        0x3 -> :sswitch_6
        0x4 -> :sswitch_7
        0x5 -> :sswitch_8
        0x6 -> :sswitch_9
        0x7 -> :sswitch_a
        0x8 -> :sswitch_b
        0x9 -> :sswitch_c
        0xa -> :sswitch_d
        0xb -> :sswitch_d
        0xc -> :sswitch_e
        0xd -> :sswitch_f
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x68 -> :sswitch_3
    .end sparse-switch
.end method
