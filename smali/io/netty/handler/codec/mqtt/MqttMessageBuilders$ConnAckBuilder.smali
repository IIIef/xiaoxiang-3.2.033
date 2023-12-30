.class public final Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnAckBuilder;
.super Ljava/lang/Object;
.source "MqttMessageBuilders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/mqtt/MqttMessageBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConnAckBuilder"
.end annotation


# instance fields
.field private returnCode:Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;

.field private sessionPresent:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/netty/handler/codec/mqtt/MqttConnAckMessage;
    .locals 7

    .line 272
    new-instance v6, Lio/netty/handler/codec/mqtt/MqttFixedHeader;

    sget-object v1, Lio/netty/handler/codec/mqtt/MqttMessageType;->CONNACK:Lio/netty/handler/codec/mqtt/MqttMessageType;

    sget-object v3, Lio/netty/handler/codec/mqtt/MqttQoS;->AT_MOST_ONCE:Lio/netty/handler/codec/mqtt/MqttQoS;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/mqtt/MqttFixedHeader;-><init>(Lio/netty/handler/codec/mqtt/MqttMessageType;ZLio/netty/handler/codec/mqtt/MqttQoS;ZI)V

    .line 274
    new-instance v0, Lio/netty/handler/codec/mqtt/MqttConnAckVariableHeader;

    iget-object v1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnAckBuilder;->returnCode:Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;

    iget-boolean v2, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnAckBuilder;->sessionPresent:Z

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/mqtt/MqttConnAckVariableHeader;-><init>(Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;Z)V

    .line 276
    new-instance v1, Lio/netty/handler/codec/mqtt/MqttConnAckMessage;

    invoke-direct {v1, v6, v0}, Lio/netty/handler/codec/mqtt/MqttConnAckMessage;-><init>(Lio/netty/handler/codec/mqtt/MqttFixedHeader;Lio/netty/handler/codec/mqtt/MqttConnAckVariableHeader;)V

    return-object v1
.end method

.method public returnCode(Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnAckBuilder;
    .locals 0

    .line 262
    iput-object p1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnAckBuilder;->returnCode:Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;

    return-object p0
.end method

.method public sessionPresent(Z)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnAckBuilder;
    .locals 0

    .line 267
    iput-boolean p1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnAckBuilder;->sessionPresent:Z

    return-object p0
.end method
