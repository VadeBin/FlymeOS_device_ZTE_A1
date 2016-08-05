.class public Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;
.super Ljava/lang/Object;
.source "BluetoothOppNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationItem"
.end annotation


# instance fields
.field carrier:Ljava/lang/String;

.field description:Ljava/lang/String;

.field destination:Ljava/lang/String;

.field direction:I

.field handoverInitiated:Z

.field id:I

.field timeStamp:J

.field totalCurrent:I

.field totalTotal:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput v2, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalCurrent:I

    .line 125
    iput v2, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:I

    .line 127
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->timeStamp:J

    .line 131
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->handoverInitiated:Z

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->carrier:Ljava/lang/String;

    return-void
.end method
