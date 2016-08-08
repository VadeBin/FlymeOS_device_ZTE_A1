.class Lcom/android/bluetooth/opp/TestTcpSessionNotifier;
.super Ljava/lang/Object;
.source "TestActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[Bluetooth.OPP]TestTcpSessionNotifier"


# instance fields
.field conn:Ljava/net/Socket;

.field server:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    iput-object v0, p0, Lcom/android/bluetooth/opp/TestTcpSessionNotifier;->server:Ljava/net/ServerSocket;

    .line 568
    iput-object v0, p0, Lcom/android/bluetooth/opp/TestTcpSessionNotifier;->conn:Ljava/net/Socket;

    .line 573
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/TestTcpSessionNotifier;->server:Ljava/net/ServerSocket;

    .line 574
    return-void
.end method


# virtual methods
.method public acceptAndOpen(Ljavax/obex/ServerRequestHandler;)Ljavax/obex/ServerSession;
    .locals 1
    .param p1, "handler"    # Ljavax/obex/ServerRequestHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 593
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/opp/TestTcpSessionNotifier;->acceptAndOpen(Ljavax/obex/ServerRequestHandler;Ljavax/obex/Authenticator;)Ljavax/obex/ServerSession;

    move-result-object v0

    return-object v0
.end method

.method public acceptAndOpen(Ljavax/obex/ServerRequestHandler;Ljavax/obex/Authenticator;)Ljavax/obex/ServerSession;
    .locals 4
    .param p1, "handler"    # Ljavax/obex/ServerRequestHandler;
    .param p2, "auth"    # Ljavax/obex/Authenticator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 579
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/TestTcpSessionNotifier;->server:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/opp/TestTcpSessionNotifier;->conn:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    :goto_0
    new-instance v1, Lcom/android/bluetooth/opp/TestTcpTransport;

    iget-object v2, p0, Lcom/android/bluetooth/opp/TestTcpSessionNotifier;->conn:Ljava/net/Socket;

    invoke-direct {v1, v2}, Lcom/android/bluetooth/opp/TestTcpTransport;-><init>(Ljava/net/Socket;)V

    .line 587
    .local v1, "tt":Lcom/android/bluetooth/opp/TestTcpTransport;
    new-instance v2, Ljavax/obex/ServerSession;

    invoke-direct {v2, v1, p1, p2}, Ljavax/obex/ServerSession;-><init>(Ljavax/obex/ObexTransport;Ljavax/obex/ServerRequestHandler;Ljavax/obex/Authenticator;)V

    return-object v2

    .line 581
    .end local v1    # "tt":Lcom/android/bluetooth/opp/TestTcpTransport;
    :catch_0
    move-exception v0

    .line 582
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "[Bluetooth.OPP]TestTcpSessionNotifier"

    const-string v3, "ex"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
