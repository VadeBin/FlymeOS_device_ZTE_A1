.class final enum Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;
.super Ljava/lang/Enum;
.source "WifiDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SinkEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;

.field public static final enum SINK_EVENT_CONNECTED:Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;

.field public static final enum SINK_EVENT_CONNECTING:Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;

.field public static final enum SINK_EVENT_CONNECTION_FAILED:Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;

.field public static final enum SINK_EVENT_DISCONNECTED:Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;

    const-string v1, "SINK_EVENT_CONNECTING"

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;->SINK_EVENT_CONNECTING:Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;

    .line 110
    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;

    const-string v1, "SINK_EVENT_CONNECTION_FAILED"

    invoke-direct {v0, v1, v3}, Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;->SINK_EVENT_CONNECTION_FAILED:Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;

    .line 111
    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;

    const-string v1, "SINK_EVENT_CONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;->SINK_EVENT_CONNECTED:Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;

    .line 112
    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;

    const-string v1, "SINK_EVENT_DISCONNECTED"

    invoke-direct {v0, v1, v5}, Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;->SINK_EVENT_DISCONNECTED:Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;

    .line 108
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;

    sget-object v1, Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;->SINK_EVENT_CONNECTING:Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;->SINK_EVENT_CONNECTION_FAILED:Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;->SINK_EVENT_CONNECTED:Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;->SINK_EVENT_DISCONNECTED:Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;->$VALUES:[Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 108
    const-class v0, Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;

    return-object v0
.end method

.method public static values()[Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;->$VALUES:[Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;

    invoke-virtual {v0}, [Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/display/WifiDisplayAdapter$SinkEvent;

    return-object v0
.end method
