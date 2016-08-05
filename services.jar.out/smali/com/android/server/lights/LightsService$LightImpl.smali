.class final Lcom/android/server/lights/LightsService$LightImpl;
.super Lcom/android/server/lights/Light;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LightImpl"
.end annotation


# instance fields
.field private mColor:I

.field private mFlashing:Z

.field private mId:I

.field private mMode:I

.field private mOffMS:I

.field private mOnMS:I

.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/lights/LightsService;I)V
    .locals 0
    .param p2, "id"    # I

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Lcom/android/server/lights/Light;-><init>()V

    .line 51
    iput p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/lights/LightsService;ILcom/android/server/lights/LightsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/lights/LightsService;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/server/lights/LightsService$1;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/lights/LightsService$LightImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/LightsService$LightImpl;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->stopFlashing()V

    return-void
.end method

.method private setLightLocked(IIIII)V
    .locals 27
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I
    .param p5, "brightnessMode"    # I

    .prologue
    .line 113
    const/16 v21, 0x0

    .line 114
    .local v21, "mLcd_old":I
    const/16 v20, 0x0

    .line 115
    .local v20, "mLcd_new":I
    const/16 v19, 0x0

    .line 116
    .local v19, "mId_tmp":I
    const/16 v23, 0x0

    .line 117
    .local v23, "mcolor_tmp":I
    const/16 v24, 0x0

    .line 118
    .local v24, "mmode_tmp":I
    const/16 v26, 0x0

    .line 119
    .local v26, "monMS_tmp":I
    const/16 v25, 0x0

    .line 120
    .local v25, "moffMs_tmp":I
    const/16 v22, 0x0

    .line 122
    .local v22, "mbrightnessMode_tmp":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    move/from16 v0, p3

    if-ne v0, v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    move/from16 v0, p4

    if-eq v0, v2, :cond_a

    .line 123
    :cond_0
    const-string v2, "LightsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setLight #"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, ": color=#"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 126
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    .line 127
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    .line 128
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    .line 129
    const-wide/32 v2, 0x80000

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setLight("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v3, v10}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 133
    const-string v2, "sys.emode.backlight_emode"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 134
    .local v18, "emode_flag":Ljava/lang/String;
    const-string v2, "LightsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "check whether in emode == "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v2, "0"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 136
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_8

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mId_record:I
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$100(Lcom/android/server/lights/LightsService;)I

    move-result v2

    and-int/lit8 v21, v2, 0x1

    .line 139
    const v2, 0xffffff

    and-int v2, v2, p1

    if-eqz v2, :cond_1

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    shl-int/2addr v3, v10

    # |= operator for: Lcom/android/server/lights/LightsService;->mId_record:I
    invoke-static {v2, v3}, Lcom/android/server/lights/LightsService;->access$176(Lcom/android/server/lights/LightsService;I)I

    .line 141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mcolor_record:[I
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$200(Lcom/android/server/lights/LightsService;)[I

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    aput p1, v2, v3

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mmode_record:[I
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$300(Lcom/android/server/lights/LightsService;)[I

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    aput p2, v2, v3

    .line 143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->monMS_record:[I
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$400(Lcom/android/server/lights/LightsService;)[I

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    aput p3, v2, v3

    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->moffMS_record:[I
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$500(Lcom/android/server/lights/LightsService;)[I

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    aput p4, v2, v3

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mbrightnessMode:[I
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$600(Lcom/android/server/lights/LightsService;)[I

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    aput p5, v2, v3

    .line 147
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mId_record:I
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$100(Lcom/android/server/lights/LightsService;)I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    move/from16 v9, v22

    .end local v22    # "mbrightnessMode_tmp":I
    .local v9, "mbrightnessMode_tmp":I
    move/from16 v8, v25

    .end local v25    # "moffMs_tmp":I
    .local v8, "moffMs_tmp":I
    move/from16 v7, v26

    .end local v26    # "monMS_tmp":I
    .local v7, "monMS_tmp":I
    move/from16 v6, v24

    .end local v24    # "mmode_tmp":I
    .local v6, "mmode_tmp":I
    move/from16 v5, v23

    .line 212
    .end local v18    # "emode_flag":Ljava/lang/String;
    .end local v23    # "mcolor_tmp":I
    .local v5, "mcolor_tmp":I
    :goto_0
    return-void

    .line 150
    .end local v5    # "mcolor_tmp":I
    .end local v6    # "mmode_tmp":I
    .end local v7    # "monMS_tmp":I
    .end local v8    # "moffMs_tmp":I
    .end local v9    # "mbrightnessMode_tmp":I
    .restart local v18    # "emode_flag":Ljava/lang/String;
    .restart local v22    # "mbrightnessMode_tmp":I
    .restart local v23    # "mcolor_tmp":I
    .restart local v24    # "mmode_tmp":I
    .restart local v25    # "moffMs_tmp":I
    .restart local v26    # "monMS_tmp":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    shl-int/2addr v3, v10

    xor-int/lit8 v3, v3, -0x1

    # &= operator for: Lcom/android/server/lights/LightsService;->mId_record:I
    invoke-static {v2, v3}, Lcom/android/server/lights/LightsService;->access$172(Lcom/android/server/lights/LightsService;I)I

    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mcolor_record:[I
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$200(Lcom/android/server/lights/LightsService;)[I

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const/4 v10, 0x0

    aput v10, v2, v3

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mmode_record:[I
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$300(Lcom/android/server/lights/LightsService;)[I

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const/4 v10, 0x0

    aput v10, v2, v3

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->monMS_record:[I
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$400(Lcom/android/server/lights/LightsService;)[I

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const/4 v10, 0x0

    aput v10, v2, v3

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->moffMS_record:[I
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$500(Lcom/android/server/lights/LightsService;)[I

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const/4 v10, 0x0

    aput v10, v2, v3

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mbrightnessMode:[I
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$600(Lcom/android/server/lights/LightsService;)[I

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const/4 v10, 0x0

    aput v10, v2, v3

    .line 158
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mId_record:I
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$100(Lcom/android/server/lights/LightsService;)I

    move-result v2

    and-int/lit8 v20, v2, 0x1

    .line 160
    const-string v2, "LightsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setLight:mLcd_old=\t#"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "mLcd_new=#"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    move/from16 v0, v21

    move/from16 v1, v20

    if-eq v0, v1, :cond_b

    .line 164
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_6

    .line 166
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    const/16 v2, 0x8

    if-ge v4, v2, :cond_4

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mId_record:I
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$100(Lcom/android/server/lights/LightsService;)I

    move-result v2

    shr-int/2addr v2, v4

    and-int/lit8 v19, v2, 0x1

    .line 169
    const/4 v2, 0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_3

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mNativePointer:J
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$700(Lcom/android/server/lights/LightsService;)J

    move-result-wide v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/android/server/lights/LightsService;->setLight_native(JIIIIII)V

    .line 166
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move/from16 v9, v22

    .end local v22    # "mbrightnessMode_tmp":I
    .restart local v9    # "mbrightnessMode_tmp":I
    move/from16 v8, v25

    .end local v25    # "moffMs_tmp":I
    .restart local v8    # "moffMs_tmp":I
    move/from16 v7, v26

    .end local v26    # "monMS_tmp":I
    .restart local v7    # "monMS_tmp":I
    move/from16 v6, v24

    .end local v24    # "mmode_tmp":I
    .restart local v6    # "mmode_tmp":I
    move/from16 v5, v23

    .line 192
    .end local v23    # "mcolor_tmp":I
    .restart local v5    # "mcolor_tmp":I
    :cond_5
    const-string v2, "LightsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setLight:mId_tmp=  #"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "mcolor_tmp=#"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "mcolor_tmp=#"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v2, "LightsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setLight:mmode_tmp=  #"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "monMS_tmp=#"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "moffMs_tmp=#"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "mbrightnessMode = #"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mbrightnessMode:[I
    invoke-static {v10}, Lcom/android/server/lights/LightsService;->access$600(Lcom/android/server/lights/LightsService;)[I

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .end local v4    # "i":I
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mNativePointer:J
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$700(Lcom/android/server/lights/LightsService;)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    move/from16 v13, p1

    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v16, p4

    move/from16 v17, p5

    invoke-static/range {v10 .. v17}, Lcom/android/server/lights/LightsService;->setLight_native(JIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    const-wide/32 v2, 0x80000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 176
    .end local v5    # "mcolor_tmp":I
    .end local v6    # "mmode_tmp":I
    .end local v7    # "monMS_tmp":I
    .end local v8    # "moffMs_tmp":I
    .end local v9    # "mbrightnessMode_tmp":I
    .restart local v22    # "mbrightnessMode_tmp":I
    .restart local v23    # "mcolor_tmp":I
    .restart local v24    # "mmode_tmp":I
    .restart local v25    # "moffMs_tmp":I
    .restart local v26    # "monMS_tmp":I
    :cond_6
    const/4 v4, 0x1

    .restart local v4    # "i":I
    move/from16 v9, v22

    .end local v22    # "mbrightnessMode_tmp":I
    .restart local v9    # "mbrightnessMode_tmp":I
    move/from16 v8, v25

    .end local v25    # "moffMs_tmp":I
    .restart local v8    # "moffMs_tmp":I
    move/from16 v7, v26

    .end local v26    # "monMS_tmp":I
    .restart local v7    # "monMS_tmp":I
    move/from16 v6, v24

    .end local v24    # "mmode_tmp":I
    .restart local v6    # "mmode_tmp":I
    move/from16 v5, v23

    .end local v23    # "mcolor_tmp":I
    .restart local v5    # "mcolor_tmp":I
    :goto_3
    const/16 v2, 0x8

    if-ge v4, v2, :cond_5

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mId_record:I
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$100(Lcom/android/server/lights/LightsService;)I

    move-result v2

    shr-int/2addr v2, v4

    and-int/lit8 v19, v2, 0x1

    .line 179
    const/4 v2, 0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_7

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mcolor_record:[I
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$200(Lcom/android/server/lights/LightsService;)[I

    move-result-object v2

    aget v5, v2, v4

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mmode_record:[I
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$300(Lcom/android/server/lights/LightsService;)[I

    move-result-object v2

    aget v6, v2, v4

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->moffMS_record:[I
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$500(Lcom/android/server/lights/LightsService;)[I

    move-result-object v2

    aget v7, v2, v4

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->moffMS_record:[I
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$500(Lcom/android/server/lights/LightsService;)[I

    move-result-object v2

    aget v8, v2, v4

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mbrightnessMode:[I
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$600(Lcom/android/server/lights/LightsService;)[I

    move-result-object v2

    aget v9, v2, v4

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mNativePointer:J
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$700(Lcom/android/server/lights/LightsService;)J

    move-result-wide v2

    invoke-static/range {v2 .. v9}, Lcom/android/server/lights/LightsService;->setLight_native(JIIIIII)V

    .line 176
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 202
    .end local v4    # "i":I
    :catchall_0
    move-exception v2

    const-wide/32 v10, 0x80000

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    .line 205
    .end local v5    # "mcolor_tmp":I
    .end local v6    # "mmode_tmp":I
    .end local v7    # "monMS_tmp":I
    .end local v8    # "moffMs_tmp":I
    .end local v9    # "mbrightnessMode_tmp":I
    .restart local v22    # "mbrightnessMode_tmp":I
    .restart local v23    # "mcolor_tmp":I
    .restart local v24    # "mmode_tmp":I
    .restart local v25    # "moffMs_tmp":I
    .restart local v26    # "monMS_tmp":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mNativePointer:J
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$700(Lcom/android/server/lights/LightsService;)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    move/from16 v13, p1

    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v16, p4

    move/from16 v17, p5

    invoke-static/range {v10 .. v17}, Lcom/android/server/lights/LightsService;->setLight_native(JIIIIII)V

    move/from16 v9, v22

    .end local v22    # "mbrightnessMode_tmp":I
    .restart local v9    # "mbrightnessMode_tmp":I
    move/from16 v8, v25

    .end local v25    # "moffMs_tmp":I
    .restart local v8    # "moffMs_tmp":I
    move/from16 v7, v26

    .end local v26    # "monMS_tmp":I
    .restart local v7    # "monMS_tmp":I
    move/from16 v6, v24

    .end local v24    # "mmode_tmp":I
    .restart local v6    # "mmode_tmp":I
    move/from16 v5, v23

    .end local v23    # "mcolor_tmp":I
    .restart local v5    # "mcolor_tmp":I
    goto/16 :goto_0

    .line 209
    .end local v5    # "mcolor_tmp":I
    .end local v6    # "mmode_tmp":I
    .end local v7    # "monMS_tmp":I
    .end local v8    # "moffMs_tmp":I
    .end local v9    # "mbrightnessMode_tmp":I
    .restart local v22    # "mbrightnessMode_tmp":I
    .restart local v23    # "mcolor_tmp":I
    .restart local v24    # "mmode_tmp":I
    .restart local v25    # "moffMs_tmp":I
    .restart local v26    # "monMS_tmp":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mNativePointer:J
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$700(Lcom/android/server/lights/LightsService;)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    move/from16 v13, p1

    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v16, p4

    move/from16 v17, p5

    invoke-static/range {v10 .. v17}, Lcom/android/server/lights/LightsService;->setLight_native(JIIIIII)V

    .end local v18    # "emode_flag":Ljava/lang/String;
    :cond_a
    move/from16 v9, v22

    .end local v22    # "mbrightnessMode_tmp":I
    .restart local v9    # "mbrightnessMode_tmp":I
    move/from16 v8, v25

    .end local v25    # "moffMs_tmp":I
    .restart local v8    # "moffMs_tmp":I
    move/from16 v7, v26

    .end local v26    # "monMS_tmp":I
    .restart local v7    # "monMS_tmp":I
    move/from16 v6, v24

    .end local v24    # "mmode_tmp":I
    .restart local v6    # "mmode_tmp":I
    move/from16 v5, v23

    .end local v23    # "mcolor_tmp":I
    .restart local v5    # "mcolor_tmp":I
    goto/16 :goto_0

    .end local v5    # "mcolor_tmp":I
    .end local v6    # "mmode_tmp":I
    .end local v7    # "monMS_tmp":I
    .end local v8    # "moffMs_tmp":I
    .end local v9    # "mbrightnessMode_tmp":I
    .restart local v18    # "emode_flag":Ljava/lang/String;
    .restart local v22    # "mbrightnessMode_tmp":I
    .restart local v23    # "mcolor_tmp":I
    .restart local v24    # "mmode_tmp":I
    .restart local v25    # "moffMs_tmp":I
    .restart local v26    # "monMS_tmp":I
    :cond_b
    move/from16 v9, v22

    .end local v22    # "mbrightnessMode_tmp":I
    .restart local v9    # "mbrightnessMode_tmp":I
    move/from16 v8, v25

    .end local v25    # "moffMs_tmp":I
    .restart local v8    # "moffMs_tmp":I
    move/from16 v7, v26

    .end local v26    # "monMS_tmp":I
    .restart local v7    # "monMS_tmp":I
    move/from16 v6, v24

    .end local v24    # "mmode_tmp":I
    .restart local v6    # "mmode_tmp":I
    move/from16 v5, v23

    .end local v23    # "mcolor_tmp":I
    .restart local v5    # "mcolor_tmp":I
    goto/16 :goto_2
.end method

.method private stopFlashing()V
    .locals 6

    .prologue
    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 108
    monitor-exit p0

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public pulse()V
    .locals 2

    .prologue
    .line 84
    const v0, 0xffffff

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService$LightImpl;->pulse(II)V

    .line 85
    return-void
.end method

.method public pulse(II)V
    .locals 6
    .param p1, "color"    # I
    .param p2, "onMS"    # I

    .prologue
    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mFlashing:Z

    if-nez v0, :cond_0

    .line 91
    const/4 v2, 0x2

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 93
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$000(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$000(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 95
    :cond_0
    monitor-exit p0

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/lights/LightsService$LightImpl;->setBrightness(II)V

    .line 57
    return-void
.end method

.method public setBrightness(II)V
    .locals 6
    .param p1, "brightness"    # I
    .param p2, "brightnessMode"    # I

    .prologue
    .line 61
    monitor-enter p0

    .line 62
    and-int/lit16 v1, p1, 0xff

    .line 63
    .local v1, "color":I
    const/high16 v0, -0x1000000

    shl-int/lit8 v2, v1, 0x10

    or-int/2addr v0, v2

    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v0, v2

    or-int/2addr v1, v0

    .line 64
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p2

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 65
    monitor-exit p0

    .line 66
    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setColor(I)V
    .locals 6
    .param p1, "color"    # I

    .prologue
    .line 70
    monitor-enter p0

    .line 71
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 72
    monitor-exit p0

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFlashing(IIII)V
    .locals 6
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I

    .prologue
    .line 77
    monitor-enter p0

    .line 78
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 79
    monitor-exit p0

    .line 80
    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public turnOff()V
    .locals 6

    .prologue
    .line 100
    monitor-enter p0

    .line 101
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 102
    monitor-exit p0

    .line 103
    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
