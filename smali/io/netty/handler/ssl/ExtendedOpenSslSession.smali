.class abstract Lio/netty/handler/ssl/ExtendedOpenSslSession;
.super Ljavax/net/ssl/ExtendedSSLSession;
.source "ExtendedOpenSslSession.java"

# interfaces
.implements Lio/netty/handler/ssl/OpenSslSession;


# static fields
.field private static final LOCAL_SUPPORTED_SIGNATURE_ALGORITHMS:[Ljava/lang/String;


# instance fields
.field private final wrapped:Lio/netty/handler/ssl/OpenSslSession;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "SHA512withRSA"

    const-string v1, "SHA512withECDSA"

    const-string v2, "SHA384withRSA"

    const-string v3, "SHA384withECDSA"

    const-string v4, "SHA256withRSA"

    const-string v5, "SHA256withECDSA"

    const-string v6, "SHA224withRSA"

    const-string v7, "SHA224withECDSA"

    const-string v8, "SHA1withRSA"

    const-string v9, "SHA1withECDSA"

    .line 37
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->LOCAL_SUPPORTED_SIGNATURE_ALGORITHMS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lio/netty/handler/ssl/OpenSslSession;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljavax/net/ssl/ExtendedSSLSession;-><init>()V

    .line 45
    iput-object p1, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    return-void
.end method


# virtual methods
.method public final getApplicationBufferSize()I
    .locals 1

    .line 176
    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0}, Lio/netty/handler/ssl/OpenSslSession;->getApplicationBufferSize()I

    move-result v0

    return v0
.end method

.method public final getCipherSuite()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0}, Lio/netty/handler/ssl/OpenSslSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCreationTime()J
    .locals 2

    .line 86
    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0}, Lio/netty/handler/ssl/OpenSslSession;->getCreationTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getId()[B
    .locals 1

    .line 76
    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0}, Lio/netty/handler/ssl/OpenSslSession;->getId()[B

    move-result-object v0

    return-object v0
.end method

.method public final getLastAccessedTime()J
    .locals 2

    .line 91
    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0}, Lio/netty/handler/ssl/OpenSslSession;->getLastAccessedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    .line 131
    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0}, Lio/netty/handler/ssl/OpenSslSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    .line 146
    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0}, Lio/netty/handler/ssl/OpenSslSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public final getLocalSupportedSignatureAlgorithms()[Ljava/lang/String;
    .locals 1

    .line 71
    sget-object v0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->LOCAL_SUPPORTED_SIGNATURE_ALGORITHMS:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final getPacketBufferSize()I
    .locals 1

    .line 171
    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0}, Lio/netty/handler/ssl/OpenSslSession;->getPacketBufferSize()I

    move-result v0

    return v0
.end method

.method public final getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0}, Lio/netty/handler/ssl/OpenSslSession;->getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final getPeerCertificates()[Ljava/security/cert/Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0}, Lio/netty/handler/ssl/OpenSslSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final getPeerHost()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0}, Lio/netty/handler/ssl/OpenSslSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPeerPort()I
    .locals 1

    .line 166
    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0}, Lio/netty/handler/ssl/OpenSslSession;->getPeerPort()I

    move-result v0

    return v0
.end method

.method public final getPeerPrincipal()Ljava/security/Principal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0}, Lio/netty/handler/ssl/OpenSslSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0}, Lio/netty/handler/ssl/OpenSslSession;->getProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getRequestedServerNames()Ljava/util/List;
.end method

.method public final getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    .line 81
    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0}, Lio/netty/handler/ssl/OpenSslSession;->getSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public getStatusResponses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 56
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 111
    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0, p1}, Lio/netty/handler/ssl/OpenSslSession;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getValueNames()[Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0}, Lio/netty/handler/ssl/OpenSslSession;->getValueNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final handshakeFinished()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0}, Lio/netty/handler/ssl/OpenSslSession;->handshakeFinished()V

    return-void
.end method

.method public final invalidate()V
    .locals 1

    .line 96
    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0}, Lio/netty/handler/ssl/OpenSslSession;->invalidate()V

    return-void
.end method

.method public final isValid()Z
    .locals 1

    .line 101
    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0}, Lio/netty/handler/ssl/OpenSslSession;->isValid()Z

    move-result v0

    return v0
.end method

.method public final putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0, p1, p2}, Lio/netty/handler/ssl/OpenSslSession;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final removeValue(Ljava/lang/String;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0, p1}, Lio/netty/handler/ssl/OpenSslSession;->removeValue(Ljava/lang/String;)V

    return-void
.end method

.method public final tryExpandApplicationBufferSize(I)V
    .locals 1

    .line 66
    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0, p1}, Lio/netty/handler/ssl/OpenSslSession;->tryExpandApplicationBufferSize(I)V

    return-void
.end method
