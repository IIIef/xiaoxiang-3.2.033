.class Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;
.super Ljava/lang/Object;
.source "Http2FrameCodec.java"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2FrameStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/Http2FrameCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultHttp2FrameStream"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private volatile id:I

.field volatile stream:Lio/netty/handler/codec/http2/Http2Stream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 648
    const-class v0, Lio/netty/handler/codec/http2/Http2FrameCodec;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 650
    iput v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->id:I

    return-void
.end method

.method static synthetic access$302(Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;I)I
    .locals 0

    .line 648
    iput p1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->id:I

    return p1
.end method


# virtual methods
.method public id()I
    .locals 1

    .line 662
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->stream:Lio/netty/handler/codec/http2/Http2Stream;

    if-nez v0, :cond_0

    .line 663
    iget v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->id:I

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v0

    :goto_0
    return v0
.end method

.method setStreamAndProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;
    .locals 0

    .line 655
    iput-object p2, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->stream:Lio/netty/handler/codec/http2/Http2Stream;

    .line 656
    invoke-interface {p2, p1, p0}, Lio/netty/handler/codec/http2/Http2Stream;->setProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public state()Lio/netty/handler/codec/http2/Http2Stream$State;
    .locals 1

    .line 668
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->stream:Lio/netty/handler/codec/http2/Http2Stream;

    if-nez v0, :cond_0

    .line 669
    sget-object v0, Lio/netty/handler/codec/http2/Http2Stream$State;->IDLE:Lio/netty/handler/codec/http2/Http2Stream$State;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 674
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->id()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
