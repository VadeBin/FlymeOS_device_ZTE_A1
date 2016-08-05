.class Lcom/android/internal/telephony/uicc/UiccController$InitCardtypeRunnable;
.super Ljava/lang/Object;
.source "UiccController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitCardtypeRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccController;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController$InitCardtypeRunnable;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController$InitCardtypeRunnable;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->initC2KWPCardtype()V
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccController;->access$000(Lcom/android/internal/telephony/uicc/UiccController;)V

    .line 301
    return-void
.end method
