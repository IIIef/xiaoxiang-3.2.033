.class public Lio/netty/handler/codec/marshalling/DefaultUnmarshallerProvider;
.super Ljava/lang/Object;
.source "DefaultUnmarshallerProvider.java"

# interfaces
.implements Lio/netty/handler/codec/marshalling/UnmarshallerProvider;


# instance fields
.field private final config:Lorg/jboss/marshalling/MarshallingConfiguration;

.field private final factory:Lorg/jboss/marshalling/MarshallerFactory;


# direct methods
.method public constructor <init>(Lorg/jboss/marshalling/MarshallerFactory;Lorg/jboss/marshalling/MarshallingConfiguration;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lio/netty/handler/codec/marshalling/DefaultUnmarshallerProvider;->factory:Lorg/jboss/marshalling/MarshallerFactory;

    .line 42
    iput-object p2, p0, Lio/netty/handler/codec/marshalling/DefaultUnmarshallerProvider;->config:Lorg/jboss/marshalling/MarshallingConfiguration;

    return-void
.end method


# virtual methods
.method public getUnmarshaller(Lio/netty/channel/ChannelHandlerContext;)Lorg/jboss/marshalling/Unmarshaller;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    iget-object p1, p0, Lio/netty/handler/codec/marshalling/DefaultUnmarshallerProvider;->factory:Lorg/jboss/marshalling/MarshallerFactory;

    iget-object v0, p0, Lio/netty/handler/codec/marshalling/DefaultUnmarshallerProvider;->config:Lorg/jboss/marshalling/MarshallingConfiguration;

    invoke-interface {p1, v0}, Lorg/jboss/marshalling/MarshallerFactory;->createUnmarshaller(Lorg/jboss/marshalling/MarshallingConfiguration;)Lorg/jboss/marshalling/Unmarshaller;

    move-result-object p1

    return-object p1
.end method
