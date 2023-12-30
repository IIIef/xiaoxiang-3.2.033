.class public final Lio/netty/handler/codec/mqtt/MqttMessageBuilders;
.super Ljava/lang/Object;
.source "MqttMessageBuilders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnAckBuilder;,
        Lio/netty/handler/codec/mqtt/MqttMessageBuilders$UnsubscribeBuilder;,
        Lio/netty/handler/codec/mqtt/MqttMessageBuilders$SubscribeBuilder;,
        Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;,
        Lio/netty/handler/codec/mqtt/MqttMessageBuilders$PublishBuilder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connAck()Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnAckBuilder;
    .locals 1

    .line 285
    new-instance v0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnAckBuilder;

    invoke-direct {v0}, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnAckBuilder;-><init>()V

    return-object v0
.end method

.method public static connect()Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;
    .locals 1

    .line 281
    new-instance v0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;

    invoke-direct {v0}, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;-><init>()V

    return-object v0
.end method

.method public static publish()Lio/netty/handler/codec/mqtt/MqttMessageBuilders$PublishBuilder;
    .locals 1

    .line 289
    new-instance v0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$PublishBuilder;

    invoke-direct {v0}, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$PublishBuilder;-><init>()V

    return-object v0
.end method

.method public static subscribe()Lio/netty/handler/codec/mqtt/MqttMessageBuilders$SubscribeBuilder;
    .locals 1

    .line 293
    new-instance v0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$SubscribeBuilder;

    invoke-direct {v0}, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$SubscribeBuilder;-><init>()V

    return-object v0
.end method

.method public static unsubscribe()Lio/netty/handler/codec/mqtt/MqttMessageBuilders$UnsubscribeBuilder;
    .locals 1

    .line 297
    new-instance v0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$UnsubscribeBuilder;

    invoke-direct {v0}, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$UnsubscribeBuilder;-><init>()V

    return-object v0
.end method
