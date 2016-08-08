.class public Lcom/mediatek/internal/telephony/gsm/VTSettings;
.super Ljava/lang/Object;
.source "VTSettings.java"


# static fields
.field static final CAMERA_ZOOM_SCALE_LEVELS:I = 0x10

.field private static final DEBUG:Z = true

.field static final KEY_CAMERA:Ljava/lang/String; = "camera"

.field static final KEY_IS_MUTE:Ljava/lang/String; = "microphone_is_mute"

.field static final KEY_LOCAL_IMAGE_PATH:Ljava/lang/String; = "KEY_LOCAL_IMAGE_PATH"

.field static final KEY_LOCAL_IMAGE_TYPE:Ljava/lang/String; = "KEY_LOCAL_IMAGE_TYPE"

.field static final KEY_LOCAL_VIDEO_TYPE:Ljava/lang/String; = "KEY_LOCAL_VIDEO_TYPE"

.field static final KEY_SPEAKER_IS_ON:Ljava/lang/String; = "SPEAKER_IS_ON"

.field static final KEY_VIDEO_QUALITY:Ljava/lang/String; = "video_quality"

.field public static final OFF:I = 0x0

.field public static final ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VTSettings"

.field static final VTSETTING_FILE:Ljava/lang/String; = "vt_settings"


# instance fields
.field mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

.field mCameraZoomIncVal:I

.field mImagePath:Ljava/lang/String;

.field mLocalSurface:Landroid/view/Surface;

.field private mOwner:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;

.field mPeerSurface:Landroid/view/Surface;

.field mVideoQuality:I

.field mVideoType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canDecBrightness()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 190
    const-string v3, "VTSettings"

    const-string v4, "canDecBrightness"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    if-nez v3, :cond_1

    .line 192
    const-string v3, "VTSettings"

    const-string v4, "canDecBrightness,mCameraParamters is null "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    :goto_0
    return v2

    .line 195
    :cond_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->getExposureCompensation()I

    move-result v1

    .line 196
    .local v1, "value":I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->getMinExposureCompensation()I

    move-result v0

    .line 197
    .local v0, "min":I
    if-le v1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public canDecContrast()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 328
    const-string v2, "VTSettings"

    const-string v3, "canDecContrast"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    if-nez v2, :cond_1

    .line 330
    const-string v2, "VTSettings"

    const-string v3, "canDecContrast,mCameraParamters is null "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    :goto_0
    return v1

    .line 334
    :cond_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->getSupportedContrastMode()Ljava/util/List;

    move-result-object v0

    .line 335
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    const-string v2, "low"

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/VTSettings;->getContrastMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public canDecZoom()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 266
    const-string v1, "VTSettings"

    const-string v2, "canDecZoom"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    if-nez v1, :cond_1

    .line 274
    :cond_0
    :goto_0
    return v0

    .line 271
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/VTSettings;->getZoom()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public canIncBrightness()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 162
    const-string v3, "VTSettings"

    const-string v4, "getBrightnessMode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    if-nez v3, :cond_1

    .line 164
    const-string v3, "VTSettings"

    const-string v4, "getBrightnessMode,mCameraParamters is null "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    :goto_0
    return v2

    .line 167
    :cond_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->getExposureCompensation()I

    move-result v1

    .line 168
    .local v1, "value":I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->getMaxExposureCompensation()I

    move-result v0

    .line 169
    .local v0, "max":I
    if-ge v1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public canIncContrast()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 294
    const-string v2, "VTSettings"

    const-string v3, "canIncContrast"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    if-nez v2, :cond_1

    .line 304
    :cond_0
    :goto_0
    return v1

    .line 299
    :cond_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->getSupportedContrastMode()Ljava/util/List;

    move-result-object v0

    .line 300
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    const-string v2, "high"

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/VTSettings;->getContrastMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public canIncZoom()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 239
    const-string v1, "VTSettings"

    const-string v2, "canIncZoom"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    if-nez v1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v0

    .line 245
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/VTSettings;->getZoom()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->getMaxZoom()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public decBrightness()Z
    .locals 5

    .prologue
    .line 173
    const-string v3, "VTSettings"

    const-string v4, "decBrightness"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    if-nez v3, :cond_0

    .line 175
    const-string v3, "VTSettings"

    const-string v4, "decBrightness,mCameraParamters is null "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v3, 0x0

    .line 186
    :goto_0
    return v3

    .line 178
    :cond_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->getExposureCompensation()I

    move-result v2

    .line 179
    .local v2, "value":I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->getMinExposureCompensation()I

    move-result v0

    .line 180
    .local v0, "min":I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->getExposureCompensationStep()F

    move-result v1

    .line 181
    .local v1, "step":F
    int-to-float v3, v2

    sub-float/2addr v3, v1

    float-to-int v2, v3

    .line 182
    if-ge v2, v0, :cond_1

    .line 183
    move v2, v0

    .line 185
    :cond_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-virtual {v3, v2}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->setExposureCompensation(I)V

    .line 186
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public decContrast()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 308
    const-string v2, "VTSettings"

    const-string v3, "decContrast"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    if-nez v2, :cond_1

    .line 310
    const-string v2, "VTSettings"

    const-string v3, "decContrast,mCameraParamters is null "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_0
    :goto_0
    return v1

    .line 313
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/VTSettings;->getContrastMode()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 315
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    const-string v2, "low"

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->setContrastMode(Ljava/lang/String;)V

    .line 324
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 316
    :cond_2
    const-string v2, "high"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 317
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    const-string v2, "middle"

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->setContrastMode(Ljava/lang/String;)V

    goto :goto_1

    .line 318
    :cond_3
    const-string v2, "middle"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    const-string v2, "low"

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->setContrastMode(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public decZoom()Z
    .locals 3

    .prologue
    .line 252
    const-string v1, "VTSettings"

    const-string v2, "decZoom"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    if-nez v1, :cond_0

    .line 255
    const/4 v1, 0x0

    .line 262
    :goto_0
    return v1

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/VTSettings;->getZoom()I

    move-result v1

    iget v2, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraZoomIncVal:I

    sub-int v0, v1, v2

    .line 258
    .local v0, "value":I
    if-gez v0, :cond_1

    .line 259
    const/4 v0, 0x0

    .line 261
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->setZoom(I)V

    .line 262
    const/4 v1, 0x1

    goto :goto_0
.end method

.method deinit()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    .line 99
    return-void
.end method

.method public getBrightnessMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    if-nez v0, :cond_0

    .line 203
    const/4 v0, 0x0

    .line 205
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->getExposure()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getCameraSettings()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mOwner:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->getParameters()Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    .line 104
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraZoomIncVal:I

    .line 111
    :cond_0
    return-void
.end method

.method public getCameraSettingsForTest()Lcom/mediatek/internal/telephony/gsm/CameraParamters;
    .locals 2

    .prologue
    .line 502
    const-string v0, "VTSettings"

    const-string v1, "call function getCameraSettings()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/VTSettings;->getCameraSettings()V

    .line 504
    const-string v0, "VTSettings"

    const-string v1, "call function getCameraSettings() finished"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    return-object v0
.end method

.method public getColorEffect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->getColorEffect()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getContrastMode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 414
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    if-nez v1, :cond_0

    .line 415
    const/4 v0, 0x0

    .line 419
    :goto_0
    return-object v0

    .line 417
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->getContrastMode()Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "value":Ljava/lang/String;
    const-string v1, "VTSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContrastMode ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getDefaultSettings()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    .line 120
    return-void
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mLocalSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getNightMode()Z
    .locals 2

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/VTSettings;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 401
    const/4 v0, 0x0

    .line 403
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/VTSettings;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "night"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getPeerSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mPeerSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSceneMode()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 438
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    if-nez v1, :cond_0

    .line 447
    :goto_0
    return-object v0

    .line 441
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->getSceneMode()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 442
    const-string v1, "VTSettings"

    const-string v2, "mCameraParamters.getSceneMode() is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 445
    :cond_1
    const-string v0, "VTSettings"

    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->getSceneMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportedBrightnessMode()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    if-nez v0, :cond_0

    .line 219
    const/4 v0, 0x0

    .line 221
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->getSupportedExposure()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportedColorEffects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    if-nez v0, :cond_0

    .line 138
    const/4 v0, 0x0

    .line 140
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportedContrastMode()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 431
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    if-nez v0, :cond_0

    .line 432
    const/4 v0, 0x0

    .line 434
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->getSupportedContrastMode()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportedSceneModes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    if-nez v0, :cond_0

    .line 408
    const/4 v0, 0x0

    .line 410
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getVideoQuality()I
    .locals 1

    .prologue
    .line 492
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mVideoQuality:I

    return v0
.end method

.method public getVideoType()I
    .locals 1

    .prologue
    .line 460
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mVideoType:I

    return v0
.end method

.method public getZoom()I
    .locals 2

    .prologue
    .line 369
    const-string v0, "VTSettings"

    const-string v1, "getZoom"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    if-nez v0, :cond_0

    .line 371
    const/4 v0, 0x0

    .line 373
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->getZoom()I

    move-result v0

    goto :goto_0
.end method

.method public getZoomRatios()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 354
    const-string v0, "VTSettings"

    const-string v1, "getZoomRatios"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    if-nez v0, :cond_0

    .line 356
    const/4 v0, 0x0

    .line 358
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public incBrightness()Z
    .locals 5

    .prologue
    .line 145
    const-string v3, "VTSettings"

    const-string v4, "incBrightness"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    if-nez v3, :cond_0

    .line 147
    const-string v3, "VTSettings"

    const-string v4, "incBrightness,mCameraParamters is null "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v3, 0x0

    .line 158
    :goto_0
    return v3

    .line 150
    :cond_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->getExposureCompensation()I

    move-result v2

    .line 151
    .local v2, "value":I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->getMaxExposureCompensation()I

    move-result v0

    .line 152
    .local v0, "max":I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->getExposureCompensationStep()F

    move-result v1

    .line 153
    .local v1, "step":F
    int-to-float v3, v2

    add-float/2addr v3, v1

    float-to-int v2, v3

    .line 154
    if-le v2, v0, :cond_1

    .line 155
    move v2, v0

    .line 157
    :cond_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-virtual {v3, v2}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->setExposureCompensation(I)V

    .line 158
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public incContrast()Z
    .locals 3

    .prologue
    .line 278
    const-string v1, "VTSettings"

    const-string v2, "incContrast"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/VTSettings;->getContrastMode()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 281
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    const-string v2, "high"

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->setContrastMode(Ljava/lang/String;)V

    .line 290
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 282
    :cond_0
    const-string v1, "low"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    const-string v2, "middle"

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->setContrastMode(Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_1
    const-string v1, "middle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 285
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    const-string v2, "high"

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->setContrastMode(Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public incZoom()Z
    .locals 4

    .prologue
    .line 225
    const-string v2, "VTSettings"

    const-string v3, "incZoom"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    if-nez v2, :cond_0

    .line 227
    const/4 v2, 0x0

    .line 235
    :goto_0
    return v2

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/VTSettings;->getZoom()I

    move-result v2

    iget v3, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraZoomIncVal:I

    add-int v1, v2, v3

    .line 230
    .local v1, "value":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->getMaxZoom()I

    move-result v0

    .line 231
    .local v0, "maxZoom":I
    if-le v1, v0, :cond_1

    .line 232
    move v1, v0

    .line 234
    :cond_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-virtual {v2, v1}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->setZoom(I)V

    .line 235
    const/4 v2, 0x1

    goto :goto_0
.end method

.method init(Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;)V
    .locals 3
    .param p1, "o"    # Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 84
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "VTSettings"

    const-string v1, "init error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_0
    return-void

    .line 88
    :cond_0
    iput v1, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mVideoType:I

    .line 89
    iput-object v2, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mImagePath:Ljava/lang/String;

    .line 91
    iput v1, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraZoomIncVal:I

    .line 92
    iput-object v2, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    .line 94
    iput-object p1, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mOwner:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;

    goto :goto_0
.end method

.method public isSupportNightMode()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 377
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/VTSettings;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v1

    .line 378
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 386
    :cond_0
    :goto_0
    return v3

    .line 381
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 382
    .local v2, "str":Ljava/lang/String;
    const-string v4, "night"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 383
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isZoomSupported()Z
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    if-nez v0, :cond_0

    .line 363
    const/4 v0, 0x0

    .line 365
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->isZoomSupported()Z

    move-result v0

    goto :goto_0
.end method

.method public setBrightnessMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    if-nez v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->setExposure(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setColorEffect(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->setColorEffect(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setContrastMode(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 423
    const-string v0, "VTSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContrastMode ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    if-nez v0, :cond_0

    .line 428
    :goto_0
    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->setContrastMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mImagePath:Ljava/lang/String;

    .line 473
    return-void
.end method

.method public setLocalSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1, "localSurface"    # Landroid/view/Surface;

    .prologue
    .line 480
    iput-object p1, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mLocalSurface:Landroid/view/Surface;

    .line 481
    return-void
.end method

.method public setNightMode(Z)V
    .locals 1
    .param p1, "isOn"    # Z

    .prologue
    .line 394
    if-eqz p1, :cond_0

    const-string v0, "night"

    .line 395
    .local v0, "value":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/gsm/VTSettings;->setNightModeFrameRate(Z)V

    .line 396
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/VTSettings;->setSceneMode(Ljava/lang/String;)V

    .line 397
    return-void

    .line 394
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    const-string v0, "auto"

    goto :goto_0
.end method

.method public setNightModeFrameRate(Z)V
    .locals 2
    .param p1, "isNightMode"    # Z

    .prologue
    .line 390
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    if-eqz p1, :cond_0

    const/16 v0, 0xf

    :goto_0
    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->setPreviewFrameRate(I)V

    .line 391
    return-void

    .line 390
    :cond_0
    const/16 v0, 0x1e

    goto :goto_0
.end method

.method public setPeerSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1, "peerSurface"    # Landroid/view/Surface;

    .prologue
    .line 488
    iput-object p1, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mPeerSurface:Landroid/view/Surface;

    .line 489
    return-void
.end method

.method public setSceneMode(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 451
    const-string v0, "VTSettings"

    const-string v1, "setSceneMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const-string v0, "VTSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    if-nez v0, :cond_0

    .line 457
    :goto_0
    return-void

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->setSceneMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVideoQuality(I)V
    .locals 0
    .param p1, "videoQuality"    # I

    .prologue
    .line 496
    iput p1, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mVideoQuality:I

    .line 497
    return-void
.end method

.method public setVideoType(I)V
    .locals 0
    .param p1, "videoType"    # I

    .prologue
    .line 464
    iput p1, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mVideoType:I

    .line 465
    return-void
.end method

.method public setZoom(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 343
    const-string v0, "VTSettings"

    const-string v1, "setZoom"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    if-nez v0, :cond_0

    .line 351
    :goto_0
    return-void

    .line 347
    :cond_0
    if-gez p1, :cond_1

    .line 348
    const/4 p1, 0x0

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/VTSettings;->mCameraParamters:Lcom/mediatek/internal/telephony/gsm/CameraParamters;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/gsm/CameraParamters;->setZoom(I)V

    goto :goto_0
.end method
