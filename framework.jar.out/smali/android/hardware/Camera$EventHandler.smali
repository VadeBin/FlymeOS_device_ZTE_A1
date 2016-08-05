.class Landroid/hardware/Camera$EventHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private final mCamera:Landroid/hardware/Camera;

.field final synthetic this$0:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V
    .locals 0
    .param p2, "c"    # Landroid/hardware/Camera;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1242
    iput-object p1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    .line 1243
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1244
    iput-object p2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    .line 1245
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 29
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1251
    const-string v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "handleMessage: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v25, v0

    sparse-switch v25, :sswitch_data_0

    .line 1600
    const-string v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Unknown message type "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    :cond_0
    :goto_0
    return-void

    .line 1255
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 1256
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/hardware/Camera$ShutterCallback;->onShutter()V

    goto :goto_0

    .line 1261
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v26

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [B

    check-cast v25, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto :goto_0

    .line 1267
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v26

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [B

    check-cast v25, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto :goto_0

    .line 1273
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$300(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v16

    .line 1274
    .local v16, "pCb":Landroid/hardware/Camera$PreviewCallback;
    if-eqz v16, :cond_0

    .line 1275
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mOneShot:Z
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$400(Landroid/hardware/Camera;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 1279
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    # setter for: Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static/range {v25 .. v26}, Landroid/hardware/Camera;->access$302(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;

    .line 1286
    :cond_1
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [B

    check-cast v25, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PreviewCallback;->onPreviewFrame([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1280
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mWithBuffer:Z
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$500(Landroid/hardware/Camera;)Z

    move-result v25

    if-nez v25, :cond_1

    .line 1284
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    const/16 v27, 0x0

    # invokes: Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V
    invoke-static/range {v25 .. v27}, Landroid/hardware/Camera;->access$600(Landroid/hardware/Camera;ZZ)V

    goto :goto_1

    .line 1291
    .end local v16    # "pCb":Landroid/hardware/Camera$PreviewCallback;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$700(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$700(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v26

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [B

    check-cast v25, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1297
    :sswitch_5
    const/4 v7, 0x0

    .line 1298
    .local v7, "cb":Landroid/hardware/Camera$AutoFocusCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$800(Landroid/hardware/Camera;)Ljava/lang/Object;

    move-result-object v26

    monitor-enter v26

    .line 1299
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$900(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;

    move-result-object v7

    .line 1300
    monitor-exit v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1301
    if-eqz v7, :cond_0

    .line 1302
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    if-nez v25, :cond_3

    const/16 v19, 0x0

    .line 1303
    .local v19, "success":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    move/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v7, v0, v1}, Landroid/hardware/Camera$AutoFocusCallback;->onAutoFocus(ZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1300
    .end local v19    # "success":Z
    :catchall_0
    move-exception v25

    :try_start_1
    monitor-exit v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v25

    .line 1302
    :cond_3
    const/16 v19, 0x1

    goto :goto_2

    .line 1308
    .end local v7    # "cb":Landroid/hardware/Camera$AutoFocusCallback;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$1000(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$1000(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v25, v0

    if-eqz v25, :cond_4

    const/16 v25, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v25

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/Camera$OnZoomChangeListener;->onZoomChange(IZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    :cond_4
    const/16 v25, 0x0

    goto :goto_3

    .line 1314
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$1100(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 1315
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$1100(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v26

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [Landroid/hardware/Camera$Face;

    check-cast v25, [Landroid/hardware/Camera$Face;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$FaceDetectionListener;->onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1320
    :sswitch_8
    const-string v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Error "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$1200(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 1322
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$1200(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    invoke-interface/range {v25 .. v27}, Landroid/hardware/Camera$ErrorCallback;->onError(ILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1327
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$1300(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 1328
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$1300(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    if-nez v25, :cond_5

    const/16 v25, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v25

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$AutoFocusMoveCallback;->onAutoFocusMoving(ZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    :cond_5
    const/16 v25, 0x1

    goto :goto_4

    .line 1333
    :sswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_0

    .line 1428
    :cond_6
    :goto_5
    :pswitch_0
    const-string v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Unknown MTK-extended notify message type "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1336
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mSmileCallback:Landroid/hardware/Camera$SmileCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$1400(Landroid/hardware/Camera;)Landroid/hardware/Camera$SmileCallback;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 1337
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mSmileCallback:Landroid/hardware/Camera$SmileCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$1400(Landroid/hardware/Camera;)Landroid/hardware/Camera$SmileCallback;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/hardware/Camera$SmileCallback;->onSmile()V

    goto/16 :goto_0

    .line 1342
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mGestureCallback:Landroid/hardware/Camera$GestureCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$1500(Landroid/hardware/Camera;)Landroid/hardware/Camera$GestureCallback;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 1343
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mGestureCallback:Landroid/hardware/Camera$GestureCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$1500(Landroid/hardware/Camera;)Landroid/hardware/Camera$GestureCallback;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/hardware/Camera$GestureCallback;->onGesture()V

    goto/16 :goto_0

    .line 1348
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mAsdCallback:Landroid/hardware/Camera$AsdCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$1600(Landroid/hardware/Camera;)Landroid/hardware/Camera$AsdCallback;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 1349
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mAsdCallback:Landroid/hardware/Camera$AsdCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$1600(Landroid/hardware/Camera;)Landroid/hardware/Camera$AsdCallback;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-interface/range {v25 .. v26}, Landroid/hardware/Camera$AsdCallback;->onDetected(I)V

    goto/16 :goto_0

    .line 1354
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mMavCallback:Landroid/hardware/Camera$MavCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$1700(Landroid/hardware/Camera;)Landroid/hardware/Camera$MavCallback;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 1355
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mMavCallback:Landroid/hardware/Camera$MavCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$1700(Landroid/hardware/Camera;)Landroid/hardware/Camera$MavCallback;

    move-result-object v25

    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Landroid/hardware/Camera$MavCallback;->onFrame([B)V

    goto/16 :goto_0

    .line 1359
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mEnableRaw16:Z
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$1800(Landroid/hardware/Camera;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 1360
    new-instance v18, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct/range {v18 .. v18}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 1361
    .local v18, "result_meta":Landroid/hardware/camera2/impl/CameraMetadataNative;
    new-instance v9, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v9}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 1362
    .local v9, "characteristic_meta":Landroid/hardware/camera2/impl/CameraMetadataNative;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Landroid/hardware/Camera;->getMetadata(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 1364
    new-instance v17, Landroid/hardware/camera2/CaptureResult;

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;I)V

    .line 1365
    .local v17, "result":Landroid/hardware/camera2/CaptureResult;
    new-instance v8, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v8, v9}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 1367
    .local v8, "characteristic":Landroid/hardware/camera2/CameraCharacteristics;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mMetadataCallbacks:Landroid/hardware/Camera$MetadataCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$1900(Landroid/hardware/Camera;)Landroid/hardware/Camera$MetadataCallback;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v8}, Landroid/hardware/Camera$MetadataCallback;->onMetadataReceived(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;)V

    goto/16 :goto_0

    .line 1372
    .end local v8    # "characteristic":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v9    # "characteristic_meta":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v17    # "result":Landroid/hardware/camera2/CaptureResult;
    .end local v18    # "result_meta":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mCSDoneCallback:Landroid/hardware/Camera$ContinuousShotCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$2000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ContinuousShotCallback;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 1373
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mCSDoneCallback:Landroid/hardware/Camera$ContinuousShotCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$2000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ContinuousShotCallback;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-interface/range {v25 .. v26}, Landroid/hardware/Camera$ContinuousShotCallback;->onConinuousShotDone(I)V

    goto/16 :goto_0

    .line 1377
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mPreviewDoneCallback:Landroid/hardware/Camera$ZSDPreviewDone;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$2100(Landroid/hardware/Camera;)Landroid/hardware/Camera$ZSDPreviewDone;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 1378
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mPreviewDoneCallback:Landroid/hardware/Camera$ZSDPreviewDone;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$2100(Landroid/hardware/Camera;)Landroid/hardware/Camera$ZSDPreviewDone;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/hardware/Camera$ZSDPreviewDone;->onPreviewDone()V

    goto/16 :goto_0

    .line 1382
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mStereoCameraWarningCallback:Landroid/hardware/Camera$StereoCameraWarningCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$2200(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraWarningCallback;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 1383
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    .line 1389
    .local v15, "message":I
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 1390
    .local v20, "type":[I
    const/16 v21, -0x1

    .line 1391
    .local v21, "warnType":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_6
    const/16 v25, 0x3

    move/from16 v0, v25

    if-ge v11, v0, :cond_7

    .line 1392
    and-int/lit8 v25, v15, 0x1

    aput v25, v20, v11

    .line 1393
    shr-int/lit8 v15, v15, 0x1

    .line 1391
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 1396
    :cond_7
    const/16 v25, 0x0

    aget v25, v20, v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    .line 1397
    const/16 v21, 0x0

    .line 1405
    :goto_7
    const/16 v25, -0x1

    move/from16 v0, v21

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    .line 1406
    const-string v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Stereo Camera warning message type "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mStereoCameraWarningCallback:Landroid/hardware/Camera$StereoCameraWarningCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$2200(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraWarningCallback;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/hardware/Camera$StereoCameraWarningCallback;->onWarning(I)V

    goto/16 :goto_0

    .line 1398
    :cond_8
    const/16 v25, 0x2

    aget v25, v20, v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    .line 1399
    const/16 v21, 0x2

    goto :goto_7

    .line 1400
    :cond_9
    const/16 v25, 0x1

    aget v25, v20, v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    .line 1401
    const/16 v21, 0x1

    goto :goto_7

    .line 1403
    :cond_a
    const/16 v21, 0x3

    goto :goto_7

    .line 1413
    .end local v11    # "i":I
    .end local v15    # "message":I
    .end local v20    # "type":[I
    .end local v21    # "warnType":I
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mDistanceInfoCallback:Landroid/hardware/Camera$DistanceInfoCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$2300(Landroid/hardware/Camera;)Landroid/hardware/Camera$DistanceInfoCallback;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 1414
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 1415
    .local v12, "info":Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 1416
    const-string v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Distance info: Info = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mDistanceInfoCallback:Landroid/hardware/Camera$DistanceInfoCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$2300(Landroid/hardware/Camera;)Landroid/hardware/Camera$DistanceInfoCallback;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v0, v12}, Landroid/hardware/Camera$DistanceInfoCallback;->onInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1423
    .end local v12    # "info":Ljava/lang/String;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mPreviewRawDumpCallback:Landroid/hardware/Camera$PreviewRawDumpCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$2400(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewRawDumpCallback;

    move-result-object v25

    if-eqz v25, :cond_6

    .line 1425
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mPreviewRawDumpCallback:Landroid/hardware/Camera$PreviewRawDumpCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$2400(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewRawDumpCallback;

    move-result-object v25

    const/16 v26, 0x12

    invoke-interface/range {v25 .. v26}, Landroid/hardware/Camera$PreviewRawDumpCallback;->onNotify(I)V

    goto/16 :goto_5

    .line 1434
    :sswitch_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_1

    .line 1594
    :pswitch_b
    const-string v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Unknown MTK-extended data message type "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1438
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [B

    move-object/from16 v5, v25

    check-cast v5, [B

    .line 1439
    .local v5, "byteArray":[B
    const/16 v25, 0x10

    move/from16 v0, v25

    new-array v6, v0, [B

    .line 1440
    .local v6, "byteHead":[B
    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x10

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v5, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1441
    const-string v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "MTK_CAMERA_MSG_EXT_DATA_AUTORAMA: byteArray.length = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    array-length v0, v5

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v25

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v13

    .line 1444
    .local v13, "intBuf":Ljava/nio/IntBuffer;
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v25

    if-nez v25, :cond_b

    .line 1445
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mAutoRamaMoveCallback:Landroid/hardware/Camera$AutoRamaMoveCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$2500(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaMoveCallback;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 1446
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v22

    .line 1447
    .local v22, "x":I
    const/16 v25, 0x2

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v24

    .line 1448
    .local v24, "y":I
    const/16 v25, 0x3

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v10

    .line 1449
    .local v10, "dir":I
    const v25, 0xffff

    and-int v25, v25, v22

    shl-int/lit8 v25, v25, 0x10

    const v26, 0xffff

    and-int v26, v26, v24

    add-int v23, v25, v26

    .line 1450
    .local v23, "xy":I
    const-string v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "call mAutoRamaMoveCallback: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    # getter for: Landroid/hardware/Camera;->mAutoRamaCallback:Landroid/hardware/Camera$AutoRamaCallback;
    invoke-static/range {v27 .. v27}, Landroid/hardware/Camera;->access$2600(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaCallback;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " dir:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " x:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " y:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " xy:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mAutoRamaMoveCallback:Landroid/hardware/Camera$AutoRamaMoveCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$2500(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaMoveCallback;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-interface {v0, v1, v10}, Landroid/hardware/Camera$AutoRamaMoveCallback;->onFrame(II)V

    goto/16 :goto_0

    .line 1454
    .end local v10    # "dir":I
    .end local v22    # "x":I
    .end local v23    # "xy":I
    .end local v24    # "y":I
    :cond_b
    const-string v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "call mAutoRamaCallback: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    # getter for: Landroid/hardware/Camera;->mAutoRamaCallback:Landroid/hardware/Camera$AutoRamaCallback;
    invoke-static/range {v27 .. v27}, Landroid/hardware/Camera;->access$2600(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaCallback;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mAutoRamaCallback:Landroid/hardware/Camera$AutoRamaCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$2600(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaCallback;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 1456
    const/16 v25, 0x1

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    .line 1457
    const-string v25, "CameraFramework"

    const-string v26, "capturing frame"

    invoke-static/range {v25 .. v26}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mAutoRamaCallback:Landroid/hardware/Camera$AutoRamaCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$2600(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaCallback;

    move-result-object v25

    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Landroid/hardware/Camera$AutoRamaCallback;->onCapture([B)V

    goto/16 :goto_0

    .line 1459
    :cond_c
    const/16 v25, 0x2

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 1460
    const-string v25, "CameraFramework"

    const-string v26, "image is merged over"

    invoke-static/range {v25 .. v26}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    array-length v0, v5

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    move/from16 v0, v25

    new-array v14, v0, [B

    .line 1462
    .local v14, "jpegData":[B
    const/16 v25, 0x4

    const/16 v26, 0x0

    array-length v0, v5

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x4

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v5, v0, v14, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1463
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mAutoRamaCallback:Landroid/hardware/Camera$AutoRamaCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$2600(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaCallback;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Landroid/hardware/Camera$AutoRamaCallback;->onCapture([B)V

    goto/16 :goto_0

    .line 1473
    .end local v5    # "byteArray":[B
    .end local v6    # "byteHead":[B
    .end local v13    # "intBuf":Ljava/nio/IntBuffer;
    .end local v14    # "jpegData":[B
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [B

    move-object/from16 v5, v25

    check-cast v5, [B

    .line 1474
    .restart local v5    # "byteArray":[B
    if-nez v5, :cond_d

    .line 1475
    const-string v25, "CameraFramework"

    const-string v26, "MTK_CAMERA_MSG_EXT_DATA_MOTIONTRACK: byteArray is null,please check"

    invoke-static/range {v25 .. v26}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1479
    :cond_d
    const-string v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "MTK_CAMERA_MSG_EXT_DATA_MOTIONTRACK: byteArray.length = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    array-length v0, v5

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mMotionTrackCallback:Landroid/hardware/Camera$MotionTrackCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$2700(Landroid/hardware/Camera;)Landroid/hardware/Camera$MotionTrackCallback;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 1481
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mMotionTrackCallback:Landroid/hardware/Camera$MotionTrackCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$2700(Landroid/hardware/Camera;)Landroid/hardware/Camera$MotionTrackCallback;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Landroid/hardware/Camera$MotionTrackCallback;->onDataCallback([B)V

    goto/16 :goto_0

    .line 1488
    .end local v5    # "byteArray":[B
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [B

    move-object/from16 v5, v25

    check-cast v5, [B

    .line 1490
    .restart local v5    # "byteArray":[B
    const-string v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "MTK_CAMERA_MSG_EXT_DATA_AF: byteArray.length = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    array-length v0, v5

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mAFDataCallback:Landroid/hardware/Camera$AFDataCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$2800(Landroid/hardware/Camera;)Landroid/hardware/Camera$AFDataCallback;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 1500
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mAFDataCallback:Landroid/hardware/Camera$AFDataCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$2800(Landroid/hardware/Camera;)Landroid/hardware/Camera$AFDataCallback;

    move-result-object v4

    .line 1501
    .local v4, "afDatacb":Landroid/hardware/Camera$AFDataCallback;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [B

    check-cast v25, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v4, v0, v1}, Landroid/hardware/Camera$AFDataCallback;->onAFData([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1506
    .end local v4    # "afDatacb":Landroid/hardware/Camera$AFDataCallback;
    .end local v5    # "byteArray":[B
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [B

    move-object/from16 v5, v25

    check-cast v5, [B

    .line 1508
    .restart local v5    # "byteArray":[B
    const-string v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "MTK_CAMERA_MSG_EXT_DATA_OT: byteArray.length = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    array-length v0, v5

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v25

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v13

    .line 1514
    .restart local v13    # "intBuf":Ljava/nio/IntBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mObjectCallbackLock:Ljava/lang/Object;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$2900(Landroid/hardware/Camera;)Ljava/lang/Object;

    move-result-object v26

    monitor-enter v26

    .line 1515
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mObjectListener:Landroid/hardware/Camera$ObjectTrackingListener;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$3000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ObjectTrackingListener;

    move-result-object v25

    if-eqz v25, :cond_e

    .line 1516
    const-string v25, "CameraFramework"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "OT callback0:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v25

    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_f

    .line 1518
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mObjectRect:Landroid/graphics/Rect;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$3100(Landroid/hardware/Camera;)Landroid/graphics/Rect;

    move-result-object v25

    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1519
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mObjectRect:Landroid/graphics/Rect;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$3100(Landroid/hardware/Camera;)Landroid/graphics/Rect;

    move-result-object v25

    const/16 v27, 0x2

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1520
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mObjectRect:Landroid/graphics/Rect;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$3100(Landroid/hardware/Camera;)Landroid/graphics/Rect;

    move-result-object v25

    const/16 v27, 0x3

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1521
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mObjectRect:Landroid/graphics/Rect;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$3100(Landroid/hardware/Camera;)Landroid/graphics/Rect;

    move-result-object v25

    const/16 v27, 0x4

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1522
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mObjectFace:Landroid/hardware/Camera$Face;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$3200(Landroid/hardware/Camera;)Landroid/hardware/Camera$Face;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    # getter for: Landroid/hardware/Camera;->mObjectRect:Landroid/graphics/Rect;
    invoke-static/range {v27 .. v27}, Landroid/hardware/Camera;->access$3100(Landroid/hardware/Camera;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mObjectFace:Landroid/hardware/Camera$Face;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$3200(Landroid/hardware/Camera;)Landroid/hardware/Camera$Face;

    move-result-object v25

    const/16 v27, 0x5

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v25

    iput v0, v1, Landroid/hardware/Camera$Face;->score:I

    .line 1524
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mObjectListener:Landroid/hardware/Camera$ObjectTrackingListener;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$3000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ObjectTrackingListener;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    # getter for: Landroid/hardware/Camera;->mObjectFace:Landroid/hardware/Camera$Face;
    invoke-static/range {v27 .. v27}, Landroid/hardware/Camera;->access$3200(Landroid/hardware/Camera;)Landroid/hardware/Camera$Face;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$ObjectTrackingListener;->onObjectTracking(Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    .line 1530
    :cond_e
    :goto_8
    monitor-exit v26

    goto/16 :goto_0

    :catchall_1
    move-exception v25

    monitor-exit v26
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v25

    .line 1527
    :cond_f
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mObjectListener:Landroid/hardware/Camera$ObjectTrackingListener;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$3000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ObjectTrackingListener;

    move-result-object v25

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$ObjectTrackingListener;->onObjectTracking(Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_8

    .line 1535
    .end local v5    # "byteArray":[B
    .end local v13    # "intBuf":Ljava/nio/IntBuffer;
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mHdrOriginalCallback:Landroid/hardware/Camera$HdrOriginalCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$3300(Landroid/hardware/Camera;)Landroid/hardware/Camera$HdrOriginalCallback;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 1536
    const-string v25, "CameraFramework"

    const-string v26, "HDR Original callback"

    invoke-static/range {v25 .. v26}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [B

    move-object/from16 v5, v25

    check-cast v5, [B

    .line 1538
    .restart local v5    # "byteArray":[B
    array-length v0, v5

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    move/from16 v0, v25

    new-array v14, v0, [B

    .line 1539
    .restart local v14    # "jpegData":[B
    const/16 v25, 0x4

    const/16 v26, 0x0

    array-length v0, v5

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x4

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v5, v0, v14, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1540
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mHdrOriginalCallback:Landroid/hardware/Camera$HdrOriginalCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$3300(Landroid/hardware/Camera;)Landroid/hardware/Camera$HdrOriginalCallback;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Landroid/hardware/Camera$HdrOriginalCallback;->onCapture([B)V

    goto/16 :goto_0

    .line 1544
    .end local v5    # "byteArray":[B
    .end local v14    # "jpegData":[B
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mFbOriginalCallback:Landroid/hardware/Camera$FbOriginalCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$3400(Landroid/hardware/Camera;)Landroid/hardware/Camera$FbOriginalCallback;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 1545
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [B

    move-object/from16 v5, v25

    check-cast v5, [B

    .line 1546
    .restart local v5    # "byteArray":[B
    array-length v0, v5

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    move/from16 v0, v25

    new-array v14, v0, [B

    .line 1547
    .restart local v14    # "jpegData":[B
    const/16 v25, 0x4

    const/16 v26, 0x0

    array-length v0, v5

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x4

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v5, v0, v14, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1548
    const-string v26, "CameraFramework"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "FB Original callback, VFB enable : "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v25, "ro.mtk_cam_vfb"

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v25

    const/16 v28, 0x1

    move/from16 v0, v25

    move/from16 v1, v28

    if-ne v0, v1, :cond_10

    const/16 v25, 0x1

    :goto_9
    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    const-string/jumbo v25, "ro.mtk_cam_vfb"

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v25

    if-eqz v25, :cond_11

    .line 1552
    const-string v25, "CameraFramework"

    const-string v26, "FB Original callback,will call mJpegCallback.onPictureTaken"

    invoke-static/range {v25 .. v26}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v0, v14, v1}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1548
    :cond_10
    const/16 v25, 0x0

    goto :goto_9

    .line 1556
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mFbOriginalCallback:Landroid/hardware/Camera$FbOriginalCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$3400(Landroid/hardware/Camera;)Landroid/hardware/Camera$FbOriginalCallback;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Landroid/hardware/Camera$FbOriginalCallback;->onCapture([B)V

    goto/16 :goto_0

    .line 1561
    .end local v5    # "byteArray":[B
    .end local v14    # "jpegData":[B
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mMavCallback:Landroid/hardware/Camera$MavCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$1700(Landroid/hardware/Camera;)Landroid/hardware/Camera$MavCallback;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 1562
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [B

    move-object/from16 v5, v25

    check-cast v5, [B

    .line 1563
    .restart local v5    # "byteArray":[B
    array-length v0, v5

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    move/from16 v0, v25

    new-array v14, v0, [B

    .line 1564
    .restart local v14    # "jpegData":[B
    const-string v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "MTK_CAMERA_MSG_EXT_DATA_MAV: byteArray.length = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    array-length v0, v5

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    const/16 v25, 0x4

    const/16 v26, 0x0

    array-length v0, v5

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x4

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v5, v0, v14, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1566
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mMavCallback:Landroid/hardware/Camera$MavCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$1700(Landroid/hardware/Camera;)Landroid/hardware/Camera$MavCallback;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Landroid/hardware/Camera$MavCallback;->onFrame([B)V

    goto/16 :goto_0

    .line 1570
    .end local v5    # "byteArray":[B
    .end local v14    # "jpegData":[B
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mStereoCameraJpsCallback:Landroid/hardware/Camera$StereoCameraJpsCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$3500(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraJpsCallback;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 1571
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [B

    move-object/from16 v5, v25

    check-cast v5, [B

    .line 1572
    .restart local v5    # "byteArray":[B
    array-length v0, v5

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    move/from16 v0, v25

    new-array v14, v0, [B

    .line 1573
    .restart local v14    # "jpegData":[B
    const-string v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "MTK_CAMERA_MSG_EXT_DATA_JPS: jpegData.length = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    array-length v0, v14

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    const/16 v25, 0x4

    const/16 v26, 0x0

    array-length v0, v5

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x4

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v5, v0, v14, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1575
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mStereoCameraJpsCallback:Landroid/hardware/Camera$StereoCameraJpsCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$3500(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraJpsCallback;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Landroid/hardware/Camera$StereoCameraJpsCallback;->onCapture([B)V

    goto/16 :goto_0

    .line 1580
    .end local v5    # "byteArray":[B
    .end local v14    # "jpegData":[B
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mStereoCameraMaskCallback:Landroid/hardware/Camera$StereoCameraMaskCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$3600(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraMaskCallback;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 1581
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [B

    move-object/from16 v5, v25

    check-cast v5, [B

    .line 1582
    .restart local v5    # "byteArray":[B
    array-length v0, v5

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    move/from16 v0, v25

    new-array v14, v0, [B

    .line 1583
    .restart local v14    # "jpegData":[B
    const-string v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "MTK_CAMERA_MSG_EXT_DATA_STEREO_DBG: jpegData.length = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    array-length v0, v14

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    const/16 v25, 0x4

    const/16 v26, 0x0

    array-length v0, v5

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x4

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v5, v0, v14, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1585
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mStereoCameraMaskCallback:Landroid/hardware/Camera$StereoCameraMaskCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$3600(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraMaskCallback;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Landroid/hardware/Camera$StereoCameraMaskCallback;->onCapture([B)V

    goto/16 :goto_0

    .line 1589
    .end local v5    # "byteArray":[B
    .end local v14    # "jpegData":[B
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mEnableRaw16:Z
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$1800(Landroid/hardware/Camera;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 1590
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    # getter for: Landroid/hardware/Camera;->mRaw16Callbacks:Landroid/hardware/Camera$PictureCallback;
    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->access$3700(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v26

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [B

    check-cast v25, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1253
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_b
        0x1 -> :sswitch_8
        0x2 -> :sswitch_0
        0x4 -> :sswitch_5
        0x8 -> :sswitch_6
        0x10 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_1
        0x100 -> :sswitch_2
        0x400 -> :sswitch_7
        0x800 -> :sswitch_9
        0x40000000 -> :sswitch_a
    .end sparse-switch

    .line 1333
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_2
        :pswitch_8
        :pswitch_9
        :pswitch_5
    .end packed-switch

    .line 1434
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_e
        :pswitch_b
        :pswitch_b
        :pswitch_f
        :pswitch_11
        :pswitch_12
        :pswitch_10
        :pswitch_d
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method
