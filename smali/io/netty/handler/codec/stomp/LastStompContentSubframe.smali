.class public interface abstract Lio/netty/handler/codec/stomp/LastStompContentSubframe;
.super Ljava/lang/Object;
.source "LastStompContentSubframe.java"

# interfaces
.implements Lio/netty/handler/codec/stomp/StompContentSubframe;


# static fields
.field public static final EMPTY_LAST_CONTENT:Lio/netty/handler/codec/stomp/LastStompContentSubframe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lio/netty/handler/codec/stomp/LastStompContentSubframe$1;

    invoke-direct {v0}, Lio/netty/handler/codec/stomp/LastStompContentSubframe$1;-><init>()V

    sput-object v0, Lio/netty/handler/codec/stomp/LastStompContentSubframe;->EMPTY_LAST_CONTENT:Lio/netty/handler/codec/stomp/LastStompContentSubframe;

    return-void
.end method


# virtual methods
.method public abstract copy()Lio/netty/handler/codec/stomp/LastStompContentSubframe;
.end method

.method public abstract duplicate()Lio/netty/handler/codec/stomp/LastStompContentSubframe;
.end method

.method public abstract replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/stomp/LastStompContentSubframe;
.end method

.method public abstract retain()Lio/netty/handler/codec/stomp/LastStompContentSubframe;
.end method

.method public abstract retain(I)Lio/netty/handler/codec/stomp/LastStompContentSubframe;
.end method

.method public abstract retainedDuplicate()Lio/netty/handler/codec/stomp/LastStompContentSubframe;
.end method

.method public abstract touch()Lio/netty/handler/codec/stomp/LastStompContentSubframe;
.end method

.method public abstract touch(Ljava/lang/Object;)Lio/netty/handler/codec/stomp/LastStompContentSubframe;
.end method
