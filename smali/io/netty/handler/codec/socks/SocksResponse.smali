.class public abstract Lio/netty/handler/codec/socks/SocksResponse;
.super Lio/netty/handler/codec/socks/SocksMessage;
.source "SocksResponse.java"


# instance fields
.field private final responseType:Lio/netty/handler/codec/socks/SocksResponseType;


# direct methods
.method protected constructor <init>(Lio/netty/handler/codec/socks/SocksResponseType;)V
    .locals 1

    .line 31
    sget-object v0, Lio/netty/handler/codec/socks/SocksMessageType;->RESPONSE:Lio/netty/handler/codec/socks/SocksMessageType;

    invoke-direct {p0, v0}, Lio/netty/handler/codec/socks/SocksMessage;-><init>(Lio/netty/handler/codec/socks/SocksMessageType;)V

    const-string v0, "responseType"

    .line 33
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    iput-object p1, p0, Lio/netty/handler/codec/socks/SocksResponse;->responseType:Lio/netty/handler/codec/socks/SocksResponseType;

    return-void
.end method


# virtual methods
.method public responseType()Lio/netty/handler/codec/socks/SocksResponseType;
    .locals 1

    .line 44
    iget-object v0, p0, Lio/netty/handler/codec/socks/SocksResponse;->responseType:Lio/netty/handler/codec/socks/SocksResponseType;

    return-object v0
.end method
