.class Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$1;
.super Lio/netty/handler/codec/http2/Http2ConnectionAdapter;
.source "DefaultHttp2LocalFlowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;-><init>(Lio/netty/handler/codec/http2/Http2Connection;FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$1;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;

    invoke-direct {p0}, Lio/netty/handler/codec/http2/Http2ConnectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamActive(Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 4

    .line 101
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$1;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->access$000(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;)Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    move-result-object v0

    new-instance v1, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;

    iget-object v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$1;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;

    invoke-static {v2}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->access$200(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;)I

    move-result v3

    invoke-direct {v1, v2, p1, v3}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;Lio/netty/handler/codec/http2/Http2Stream;I)V

    invoke-interface {p1, v0, v1}, Lio/netty/handler/codec/http2/Http2Stream;->setProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onStreamAdded(Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$1;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->access$000(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;)Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    move-result-object v0

    invoke-static {}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->access$100()Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lio/netty/handler/codec/http2/Http2Stream;->setProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onStreamClosed(Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 3

    .line 109
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$1;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;

    invoke-static {v0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->access$300(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    move-result-object v0

    .line 110
    invoke-interface {v0}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;->unconsumedBytes()I

    move-result v1

    .line 111
    iget-object v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$1;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;

    invoke-static {v2}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->access$400(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v2

    if-eqz v2, :cond_0

    if-lez v1, :cond_0

    .line 112
    iget-object v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$1;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;

    invoke-static {v2}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->access$500(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;)Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    move-result-object v2

    invoke-interface {v2, v1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;->consumeBytes(I)Z

    .line 113
    invoke-interface {v0, v1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;->consumeBytes(I)Z
    :try_end_0
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 116
    :try_start_1
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$1;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->access$000(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;)Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    move-result-object v0

    invoke-static {}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->access$100()Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lio/netty/handler/codec/http2/Http2Stream;->setProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :goto_1
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$1;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;

    invoke-static {v1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->access$000(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;)Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    move-result-object v1

    invoke-static {}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->access$100()Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lio/netty/handler/codec/http2/Http2Stream;->setProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    throw v0
.end method
