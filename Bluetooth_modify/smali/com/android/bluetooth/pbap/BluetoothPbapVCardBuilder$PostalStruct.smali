.class Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder$PostalStruct;
.super Ljava/lang/Object;
.source "BluetoothPbapVCardBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PostalStruct"
.end annotation


# instance fields
.field final addressData:Ljava/lang/String;

.field final appendCharset:Z

.field final reallyUseQuotedPrintable:Z


# direct methods
.method public constructor <init>(ZZLjava/lang/String;)V
    .locals 0
    .param p1, "reallyUseQuotedPrintable"    # Z
    .param p2, "appendCharset"    # Z
    .param p3, "addressData"    # Ljava/lang/String;

    .prologue
    .line 1168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1169
    iput-boolean p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder$PostalStruct;->reallyUseQuotedPrintable:Z

    .line 1170
    iput-boolean p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder$PostalStruct;->appendCharset:Z

    .line 1171
    iput-object p3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder$PostalStruct;->addressData:Ljava/lang/String;

    .line 1172
    return-void
.end method
