.class final Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider$1;
.super Ljava/lang/Object;
.source "WebSocketExtensionFilterProvider.java"

# interfaces
.implements Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilterProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decoderFilter()Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter;
    .locals 1

    .line 31
    sget-object v0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter;->NEVER_SKIP:Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter;

    return-object v0
.end method

.method public encoderFilter()Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter;
    .locals 1

    .line 26
    sget-object v0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter;->NEVER_SKIP:Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter;

    return-object v0
.end method
