.class public final Lcom/mediatek/fmradio/FmRadioStation$Station;
.super Ljava/lang/Object;
.source "FmRadioStation.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/fmradio/FmRadioStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Station"
.end annotation


# static fields
.field public static final COLUMN_STATION_FREQ:Ljava/lang/String; = "COLUMN_STATION_FREQ"

.field public static final COLUMN_STATION_NAME:Ljava/lang/String; = "COLUMN_STATION_NAME"

.field public static final COLUMN_STATION_TYPE:Ljava/lang/String; = "COLUMN_STATION_TYPE"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const-string v0, "content://com.mediatek.fmradio.FmRadioContentProvider/station"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/fmradio/FmRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 106
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
