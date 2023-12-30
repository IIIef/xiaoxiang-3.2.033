.class final Lio/netty/handler/codec/http2/Http2MultiplexCodec$FlowControlledFrameSizeEstimator;
.super Ljava/lang/Object;
.source "Http2MultiplexCodec.java"

# interfaces
.implements Lio/netty/channel/MessageSizeEstimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/Http2MultiplexCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FlowControlledFrameSizeEstimator"
.end annotation


# static fields
.field static final HANDLE_INSTANCE:Lio/netty/channel/MessageSizeEstimator$Handle;

.field static final INSTANCE:Lio/netty/handler/codec/http2/Http2MultiplexCodec$FlowControlledFrameSizeEstimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 133
    new-instance v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$FlowControlledFrameSizeEstimator;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$FlowControlledFrameSizeEstimator;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$FlowControlledFrameSizeEstimator;->INSTANCE:Lio/netty/handler/codec/http2/Http2MultiplexCodec$FlowControlledFrameSizeEstimator;

    .line 135
    new-instance v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$FlowControlledFrameSizeEstimator$1;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$FlowControlledFrameSizeEstimator$1;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$FlowControlledFrameSizeEstimator;->HANDLE_INSTANCE:Lio/netty/channel/MessageSizeEstimator$Handle;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newHandle()Lio/netty/channel/MessageSizeEstimator$Handle;
    .locals 1

    .line 147
    sget-object v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$FlowControlledFrameSizeEstimator;->HANDLE_INSTANCE:Lio/netty/channel/MessageSizeEstimator$Handle;

    return-object v0
.end method
