.class public Lcom/zui/fingerprint/FingerprintManager$GuidedData;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GuidedData"
.end annotation


# instance fields
.field private mLastTouch:Lcom/zui/fingerprint/RectParcelable;

.field private mMaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zui/fingerprint/RectParcelable;",
            ">;"
        }
    .end annotation
.end field

.field private mNextTouch:Lcom/zui/fingerprint/RectParcelable;

.field private mProgress:I

.field final synthetic this$0:Lcom/zui/fingerprint/FingerprintManager;


# direct methods
.method public constructor <init>(Lcom/zui/fingerprint/FingerprintManager;)V
    .locals 2
    .param p1, "this$0"    # Lcom/zui/fingerprint/FingerprintManager;

    .prologue
    const/4 v1, 0x0

    .line 173
    iput-object p1, p0, Lcom/zui/fingerprint/FingerprintManager$GuidedData;->this$0:Lcom/zui/fingerprint/FingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/fingerprint/FingerprintManager$GuidedData;->mProgress:I

    .line 162
    iput-object v1, p0, Lcom/zui/fingerprint/FingerprintManager$GuidedData;->mLastTouch:Lcom/zui/fingerprint/RectParcelable;

    .line 166
    iput-object v1, p0, Lcom/zui/fingerprint/FingerprintManager$GuidedData;->mNextTouch:Lcom/zui/fingerprint/RectParcelable;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/fingerprint/FingerprintManager$GuidedData;->mMaskList:Ljava/util/ArrayList;

    .line 176
    return-void
.end method

.method public constructor <init>(Lcom/zui/fingerprint/FingerprintManager;ILcom/zui/fingerprint/RectParcelable;Lcom/zui/fingerprint/RectParcelable;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "this$0"    # Lcom/zui/fingerprint/FingerprintManager;
    .param p2, "progress"    # I
    .param p3, "lastTouch"    # Lcom/zui/fingerprint/RectParcelable;
    .param p4, "nextTouch"    # Lcom/zui/fingerprint/RectParcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/zui/fingerprint/RectParcelable;",
            "Lcom/zui/fingerprint/RectParcelable;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zui/fingerprint/RectParcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "maskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zui/fingerprint/RectParcelable;>;"
    const/4 v1, 0x0

    .line 179
    iput-object p1, p0, Lcom/zui/fingerprint/FingerprintManager$GuidedData;->this$0:Lcom/zui/fingerprint/FingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/fingerprint/FingerprintManager$GuidedData;->mProgress:I

    .line 162
    iput-object v1, p0, Lcom/zui/fingerprint/FingerprintManager$GuidedData;->mLastTouch:Lcom/zui/fingerprint/RectParcelable;

    .line 166
    iput-object v1, p0, Lcom/zui/fingerprint/FingerprintManager$GuidedData;->mNextTouch:Lcom/zui/fingerprint/RectParcelable;

    .line 180
    invoke-virtual {p0, p2}, Lcom/zui/fingerprint/FingerprintManager$GuidedData;->setProgress(I)V

    .line 181
    invoke-virtual {p0, p3}, Lcom/zui/fingerprint/FingerprintManager$GuidedData;->setLastTouch(Lcom/zui/fingerprint/RectParcelable;)V

    .line 182
    invoke-virtual {p0, p4}, Lcom/zui/fingerprint/FingerprintManager$GuidedData;->setNextTouch(Lcom/zui/fingerprint/RectParcelable;)V

    .line 183
    invoke-virtual {p0, p5}, Lcom/zui/fingerprint/FingerprintManager$GuidedData;->setMaskList(Ljava/util/ArrayList;)V

    .line 184
    return-void
.end method


# virtual methods
.method public addMaskList(Lcom/zui/fingerprint/RectParcelable;)V
    .locals 1
    .param p1, "rect"    # Lcom/zui/fingerprint/RectParcelable;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/zui/fingerprint/FingerprintManager$GuidedData;->mMaskList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    return-void
.end method

.method public clearMaskList()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/zui/fingerprint/FingerprintManager$GuidedData;->mMaskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 229
    return-void
.end method

.method public getLastTouch()Lcom/zui/fingerprint/RectParcelable;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/zui/fingerprint/FingerprintManager$GuidedData;->mLastTouch:Lcom/zui/fingerprint/RectParcelable;

    return-object v0
.end method

.method public getMaskList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zui/fingerprint/RectParcelable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/zui/fingerprint/FingerprintManager$GuidedData;->mMaskList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNextTouch()Lcom/zui/fingerprint/RectParcelable;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/zui/fingerprint/FingerprintManager$GuidedData;->mNextTouch:Lcom/zui/fingerprint/RectParcelable;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/zui/fingerprint/FingerprintManager$GuidedData;->mProgress:I

    return v0
.end method

.method public setLastTouch(Lcom/zui/fingerprint/RectParcelable;)V
    .locals 0
    .param p1, "lastTouch"    # Lcom/zui/fingerprint/RectParcelable;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/zui/fingerprint/FingerprintManager$GuidedData;->mLastTouch:Lcom/zui/fingerprint/RectParcelable;

    .line 204
    return-void
.end method

.method public setMaskList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zui/fingerprint/RectParcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "maskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zui/fingerprint/RectParcelable;>;"
    iput-object p1, p0, Lcom/zui/fingerprint/FingerprintManager$GuidedData;->mMaskList:Ljava/util/ArrayList;

    .line 224
    return-void
.end method

.method public setNextTouch(Lcom/zui/fingerprint/RectParcelable;)V
    .locals 0
    .param p1, "nextTouch"    # Lcom/zui/fingerprint/RectParcelable;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/zui/fingerprint/FingerprintManager$GuidedData;->mNextTouch:Lcom/zui/fingerprint/RectParcelable;

    .line 214
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 193
    iput p1, p0, Lcom/zui/fingerprint/FingerprintManager$GuidedData;->mProgress:I

    .line 194
    return-void
.end method
