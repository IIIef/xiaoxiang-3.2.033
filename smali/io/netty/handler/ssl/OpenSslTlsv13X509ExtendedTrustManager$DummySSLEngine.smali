.class final Lio/netty/handler/ssl/OpenSslTlsv13X509ExtendedTrustManager$DummySSLEngine;
.super Ljavax/net/ssl/SSLEngine;
.source "OpenSslTlsv13X509ExtendedTrustManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/OpenSslTlsv13X509ExtendedTrustManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DummySSLEngine"
.end annotation


# instance fields
.field private final client:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljavax/net/ssl/SSLEngine;-><init>()V

    .line 262
    iput-boolean p1, p0, Lio/netty/handler/ssl/OpenSslTlsv13X509ExtendedTrustManager$DummySSLEngine;->client:Z

    return-void
.end method


# virtual methods
.method public beginHandshake()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    return-void
.end method

.method public closeInbound()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    return-void
.end method

.method public closeOutbound()V
    .locals 0

    return-void
.end method

.method public getDelegatedTask()Ljava/lang/Runnable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnableSessionCreation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 420
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    const-string v0, "TLSv1.3"

    .line 435
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandshakeSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    .line 267
    new-instance v0, Lio/netty/handler/ssl/OpenSslTlsv13X509ExtendedTrustManager$DummySSLEngine$1;

    invoke-direct {v0, p0}, Lio/netty/handler/ssl/OpenSslTlsv13X509ExtendedTrustManager$DummySSLEngine$1;-><init>(Lio/netty/handler/ssl/OpenSslTlsv13X509ExtendedTrustManager$DummySSLEngine;)V

    return-object v0
.end method

.method public getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 1

    .line 455
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0
.end method

.method public getNeedClientAuth()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    .line 445
    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslTlsv13X509ExtendedTrustManager$DummySSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 415
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    const-string v0, "TLSv1.3"

    .line 430
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseClientMode()Z
    .locals 1

    .line 465
    iget-boolean v0, p0, Lio/netty/handler/ssl/OpenSslTlsv13X509ExtendedTrustManager$DummySSLEngine;->client:Z

    return v0
.end method

.method public getWantClientAuth()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInboundDone()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isOutboundDone()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setEnableSessionCreation(Z)V
    .locals 0

    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 0

    return-void
.end method

.method public setUseClientMode(Z)V
    .locals 0

    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 0

    return-void
.end method

.method public unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 385
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 379
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
