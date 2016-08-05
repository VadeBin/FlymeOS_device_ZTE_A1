.class public Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;
.super Lcom/android/internal/util/AsyncChannel;
.source "DcSwitchAsyncChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x44000

.field private static final CMD_TO_STRING_COUNT:I = 0x10

.field private static final DBG:Z = true

.field static final EVENT_DATA_ATTACHED:I = 0x4400a

.field static final EVENT_DATA_DETACHED:I = 0x4400b

.field private static final LOG_TAG:Ljava/lang/String; = "DcSwitchAsyncChannel"

.field static final REQ_CONFIRM_PREDETACH:I = 0x4400c

.field static final REQ_CONNECT:I = 0x44000

.field static final REQ_DC_SWITCH_STATE:I = 0x4400e

.field static final REQ_DISCONNECT:I = 0x44002

.field static final REQ_DISCONNECT_ALL:I = 0x44004

.field static final REQ_IS_IDLE_OR_DETACHING_STATE:I = 0x44008

.field static final REQ_IS_IDLE_STATE:I = 0x44006

.field static final RSP_CONFIRM_PREDETACH:I = 0x4400d

.field static final RSP_CONNECT:I = 0x44001

.field static final RSP_DC_SWITCH_STATE:I = 0x4400f

.field static final RSP_DISCONNECT:I = 0x44003

.field static final RSP_DISCONNECT_ALL:I = 0x44005

.field static final RSP_IS_IDLE_OR_DETACHING_STATE:I = 0x44009

.field static final RSP_IS_IDLE_STATE:I = 0x44007

.field private static final VDBG:Z

.field private static sCmdToString:[Ljava/lang/String;


# instance fields
.field private mDcSwitchState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

.field private tagId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    .line 57
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "REQ_CONNECT"

    aput-object v2, v0, v1

    .line 58
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "RSP_CONNECT"

    aput-object v2, v0, v1

    .line 59
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "REQ_DISCONNECT"

    aput-object v2, v0, v1

    .line 60
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "RSP_DISCONNECT"

    aput-object v2, v0, v1

    .line 61
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "REQ_DISCONNECT_ALL"

    aput-object v2, v0, v1

    .line 62
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "RSP_DISCONNECT_ALL"

    aput-object v2, v0, v1

    .line 63
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "REQ_IS_IDLE_STATE"

    aput-object v2, v0, v1

    .line 64
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, "RSP_IS_IDLE_STATE"

    aput-object v2, v0, v1

    .line 65
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "REQ_IS_IDLE_OR_DETACHING_STATE"

    aput-object v2, v0, v1

    .line 66
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "RSP_IS_IDLE_OR_DETACHING_STATE"

    aput-object v2, v0, v1

    .line 67
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "EVENT_DATA_ATTACHED"

    aput-object v2, v0, v1

    .line 68
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, "EVENT_DATA_DETACHED"

    aput-object v2, v0, v1

    .line 69
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "REQ_CONFIRM_PREDETACH"

    aput-object v2, v0, v1

    .line 70
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, "RSP_CONFIRM_PREDETACH"

    aput-object v2, v0, v1

    .line 71
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xe

    const-string v2, "REQ_DC_SWITCH_STATE"

    aput-object v2, v0, v1

    .line 72
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xf

    const-string v2, "RSP_DC_SWITCH_STATE"

    aput-object v2, v0, v1

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;I)V
    .locals 1
    .param p1, "dcSwitchState"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p2, "id"    # I

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->tagId:I

    .line 116
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->mDcSwitchState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .line 117
    iput p2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->tagId:I

    .line 118
    return-void
.end method

.method protected static cmdToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "cmd"    # I

    .prologue
    const v1, 0x44000

    .line 107
    sub-int/2addr p0, v1

    .line 108
    if-ltz p0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 109
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 111
    :goto_0
    return-object v0

    :cond_0
    add-int v0, p0, v1

    invoke-static {v0}, Lcom/android/internal/util/AsyncChannel;->cmdToString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 264
    const-string v0, "DcSwitchAsyncChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DcSwitchAsyncChannel-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->tagId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void
.end method

.method private rspConfirmPreDetachSync(Landroid/os/Message;)I
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 216
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 218
    .local v0, "retVal":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rspConnect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->log(Ljava/lang/String;)V

    .line 220
    return v0
.end method

.method private rspConnect(Landroid/os/Message;)I
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 121
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 122
    .local v0, "retVal":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rspConnect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->log(Ljava/lang/String;)V

    .line 123
    return v0
.end method

.method private rspDcSwitchStateSync(Landroid/os/Message;)Ljava/lang/String;
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 236
    const-string v0, ""

    .line 237
    .local v0, "retVal":Ljava/lang/String;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 238
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "retVal":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 241
    .restart local v0    # "retVal":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rspConnect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->log(Ljava/lang/String;)V

    .line 243
    return-object v0
.end method

.method private rspDisconnect(Landroid/os/Message;)I
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 137
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 138
    .local v0, "retVal":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rspDisconnect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->log(Ljava/lang/String;)V

    .line 139
    return v0
.end method

.method private rspDisconnectAll(Landroid/os/Message;)I
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 153
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 154
    .local v0, "retVal":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rspDisconnectAll="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->log(Ljava/lang/String;)V

    .line 155
    return v0
.end method

.method private rspIsIdle(Landroid/os/Message;)Z
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 179
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_0

    .line 180
    .local v0, "retVal":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rspIsIdle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->log(Ljava/lang/String;)V

    .line 181
    return v0

    .line 179
    .end local v0    # "retVal":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public confirmPreDetachSync()I
    .locals 3

    .prologue
    .line 224
    const v1, 0x4400c

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 225
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x4400d

    if-ne v1, v2, :cond_0

    .line 226
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->rspConfirmPreDetachSync(Landroid/os/Message;)I

    move-result v1

    .line 231
    :goto_0
    return v1

    .line 229
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preCheckDoneSync error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->log(Ljava/lang/String;)V

    .line 231
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public connectSync(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)I
    .locals 3
    .param p1, "apnRequest"    # Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .prologue
    .line 127
    const v1, 0x44000

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 128
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x44001

    if-ne v1, v2, :cond_0

    .line 129
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->rspConnect(Landroid/os/Message;)I

    move-result v1

    .line 132
    :goto_0
    return v1

    .line 131
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rspConnect error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->log(Ljava/lang/String;)V

    .line 132
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public disconnectAllSync()I
    .locals 3

    .prologue
    .line 159
    const v1, 0x44004

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 160
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x44005

    if-ne v1, v2, :cond_0

    .line 161
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->rspDisconnectAll(Landroid/os/Message;)I

    move-result v1

    .line 164
    :goto_0
    return v1

    .line 163
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rspDisconnectAll error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->log(Ljava/lang/String;)V

    .line 164
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public disconnectSync(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)I
    .locals 3
    .param p1, "apnRequest"    # Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .prologue
    .line 143
    const v1, 0x44002

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 144
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x44003

    if-ne v1, v2, :cond_0

    .line 145
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->rspDisconnect(Landroid/os/Message;)I

    move-result v1

    .line 148
    :goto_0
    return v1

    .line 147
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rspDisconnect error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->log(Ljava/lang/String;)V

    .line 148
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public isIdleOrDetachingSync()Z
    .locals 3

    .prologue
    .line 206
    const v1, 0x44008

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 207
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x44009

    if-ne v1, v2, :cond_0

    .line 208
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->rspIsIdleOrDetaching(Landroid/os/Message;)Z

    move-result v1

    .line 211
    :goto_0
    return v1

    .line 210
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rspIsIdleOrDetaching error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->log(Ljava/lang/String;)V

    .line 211
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isIdleSync()Z
    .locals 3

    .prologue
    .line 185
    const v1, 0x44006

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 186
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x44007

    if-ne v1, v2, :cond_0

    .line 187
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->rspIsIdle(Landroid/os/Message;)Z

    move-result v1

    .line 190
    :goto_0
    return v1

    .line 189
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rspIsIndle error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->log(Ljava/lang/String;)V

    .line 190
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyDataAttached()V
    .locals 1

    .prologue
    .line 169
    const v0, 0x4400a

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sendMessage(I)V

    .line 170
    const-string v0, "notifyDataAttached"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->log(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public notifyDataDetached()V
    .locals 1

    .prologue
    .line 174
    const v0, 0x4400b

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sendMessage(I)V

    .line 175
    const-string v0, "EVENT_DATA_DETACHED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->log(Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public reqIsIdleOrDetaching()V
    .locals 1

    .prologue
    .line 195
    const v0, 0x44008

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sendMessage(I)V

    .line 196
    const-string v0, "reqIsIdleOrDetaching"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->log(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public requestDcSwitchStateSync()Ljava/lang/String;
    .locals 3

    .prologue
    .line 247
    const v1, 0x4400e

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 248
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x4400f

    if-ne v1, v2, :cond_0

    .line 249
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->rspDcSwitchStateSync(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    .line 254
    :goto_0
    return-object v1

    .line 252
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestDcSwitchStateSync error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->log(Ljava/lang/String;)V

    .line 254
    const-string v1, ""

    goto :goto_0
.end method

.method public rspIsIdleOrDetaching(Landroid/os/Message;)Z
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 200
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_0

    .line 201
    .local v0, "retVal":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rspIsIdleOrDetaching="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->log(Ljava/lang/String;)V

    .line 202
    return v0

    .line 200
    .end local v0    # "retVal":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->mDcSwitchState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
