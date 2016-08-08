.class Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;
.super Ljava/lang/Object;
.source "A2dpSinkStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StackEvent"
.end annotation


# instance fields
.field audioConfig:Landroid/bluetooth/BluetoothAudioConfig;

.field device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

.field type:I

.field valueInt:I


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;I)V
    .locals 2
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 759
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->this$0:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 754
    iput v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->type:I

    .line 755
    iput v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->valueInt:I

    .line 756
    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 757
    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->audioConfig:Landroid/bluetooth/BluetoothAudioConfig;

    .line 760
    iput p2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->type:I

    .line 761
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;ILcom/android/bluetooth/a2dp/A2dpSinkStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$1;

    .prologue
    .line 753
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;I)V

    return-void
.end method
