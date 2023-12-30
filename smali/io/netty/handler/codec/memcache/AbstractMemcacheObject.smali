.class public abstract Lio/netty/handler/codec/memcache/AbstractMemcacheObject;
.super Lio/netty/util/AbstractReferenceCounted;
.source "AbstractMemcacheObject.java"

# interfaces
.implements Lio/netty/handler/codec/memcache/MemcacheObject;


# instance fields
.field private decoderResult:Lio/netty/handler/codec/DecoderResult;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lio/netty/util/AbstractReferenceCounted;-><init>()V

    .line 28
    sget-object v0, Lio/netty/handler/codec/DecoderResult;->SUCCESS:Lio/netty/handler/codec/DecoderResult;

    iput-object v0, p0, Lio/netty/handler/codec/memcache/AbstractMemcacheObject;->decoderResult:Lio/netty/handler/codec/DecoderResult;

    return-void
.end method


# virtual methods
.method public decoderResult()Lio/netty/handler/codec/DecoderResult;
    .locals 1

    .line 36
    iget-object v0, p0, Lio/netty/handler/codec/memcache/AbstractMemcacheObject;->decoderResult:Lio/netty/handler/codec/DecoderResult;

    return-object v0
.end method

.method public setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V
    .locals 1

    const-string v0, "DecoderResult should not be null."

    .line 42
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    iput-object p1, p0, Lio/netty/handler/codec/memcache/AbstractMemcacheObject;->decoderResult:Lio/netty/handler/codec/DecoderResult;

    return-void
.end method
