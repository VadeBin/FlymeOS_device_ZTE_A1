.class Lcom/zte/mifavor/preference/PreferenceGroupAdapter$1;
.super Ljava/lang/Object;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/preference/PreferenceGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/preference/PreferenceGroupAdapter;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/preference/PreferenceGroupAdapter;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter$1;->this$0:Lcom/zte/mifavor/preference/PreferenceGroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter$1;->this$0:Lcom/zte/mifavor/preference/PreferenceGroupAdapter;

    # invokes: Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->syncMyPreferences()V
    invoke-static {v0}, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->access$100(Lcom/zte/mifavor/preference/PreferenceGroupAdapter;)V

    .line 95
    return-void
.end method
