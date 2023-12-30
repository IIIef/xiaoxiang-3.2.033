.class public abstract Lio/netty/handler/codec/socks/SocksRequest;
.super Lio/netty/handler/codec/socks/SocksMessage;
.source "SocksRequest.java"


# instance fields
.field private final requestType:Lio/netty/handler/codec/socks/SocksRequestType;


# direct methods
.method protected constructor <init>(Lio/netty/handler/codec/socks/SocksRequestType;)V
    .locals 1

    .line 31
    sget-object v0, Lio/netty/handler/codec/socks/SocksMessageType;->REQUEST:Lio/netty/handler/codec/socks/SocksMessageType;

    invoke-direct {p0, v0}, Lio/netty/handler/codec/socks/SocksMessage;-><init>(Lio/netty/handler/codec/socks/SocksMessageType;)V

    const-string v0, "requestType"

    .line 33
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    iput-object p1, p0, Lio/netty/handler/codec/socks/SocksRequest;->requestType:Lio/netty/handler/codec/socks/SocksRequestType;

    return-void
.end method


# virtual methods
.method public requestType()Lio/netty/handler/codec/socks/SocksRequestType;
    .locals 1

    .line 44
    iget-object v0, p0, Lio/netty/handler/codec/socks/SocksRequest;->requestType:Lio/netty/handler/codec/socks/SocksRequestType;

    return-object v0
.end method
