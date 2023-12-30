.class public final Lio/netty/handler/codec/haproxy/HAProxySSLTLV;
.super Lio/netty/handler/codec/haproxy/HAProxyTLV;
.source "HAProxySSLTLV.java"


# instance fields
.field private final clientBitField:B

.field private final tlvs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/netty/handler/codec/haproxy/HAProxyTLV;",
            ">;"
        }
    .end annotation
.end field

.field private final verify:I


# direct methods
.method constructor <init>(IBLjava/util/List;Lio/netty/buffer/ByteBuf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IB",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/haproxy/HAProxyTLV;",
            ">;",
            "Lio/netty/buffer/ByteBuf;",
            ")V"
        }
    .end annotation

    .line 44
    sget-object v0, Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;->PP2_TYPE_SSL:Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;

    const/16 v1, 0x20

    invoke-direct {p0, v0, v1, p4}, Lio/netty/handler/codec/haproxy/HAProxyTLV;-><init>(Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;BLio/netty/buffer/ByteBuf;)V

    .line 46
    iput p1, p0, Lio/netty/handler/codec/haproxy/HAProxySSLTLV;->verify:I

    .line 47
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/haproxy/HAProxySSLTLV;->tlvs:Ljava/util/List;

    .line 48
    iput-byte p2, p0, Lio/netty/handler/codec/haproxy/HAProxySSLTLV;->clientBitField:B

    return-void
.end method


# virtual methods
.method public encapsulatedTLVs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/haproxy/HAProxyTLV;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lio/netty/handler/codec/haproxy/HAProxySSLTLV;->tlvs:Ljava/util/List;

    return-object v0
.end method

.method public isPP2ClientCertConn()Z
    .locals 1

    .line 55
    iget-byte v0, p0, Lio/netty/handler/codec/haproxy/HAProxySSLTLV;->clientBitField:B

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPP2ClientCertSess()Z
    .locals 1

    .line 69
    iget-byte v0, p0, Lio/netty/handler/codec/haproxy/HAProxySSLTLV;->clientBitField:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPP2ClientSSL()Z
    .locals 2

    .line 62
    iget-byte v0, p0, Lio/netty/handler/codec/haproxy/HAProxySSLTLV;->clientBitField:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public verify()I
    .locals 1

    .line 76
    iget v0, p0, Lio/netty/handler/codec/haproxy/HAProxySSLTLV;->verify:I

    return v0
.end method
