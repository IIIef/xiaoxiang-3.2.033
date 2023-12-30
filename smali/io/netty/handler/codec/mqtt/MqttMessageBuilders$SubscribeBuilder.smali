.class public final Lio/netty/handler/codec/mqtt/MqttMessageBuilders$SubscribeBuilder;
.super Ljava/lang/Object;
.source "MqttMessageBuilders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/mqtt/MqttMessageBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubscribeBuilder"
.end annotation


# instance fields
.field private messageId:I

.field private subscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/netty/handler/codec/mqtt/MqttTopicSubscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addSubscription(Lio/netty/handler/codec/mqtt/MqttQoS;Ljava/lang/String;)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$SubscribeBuilder;
    .locals 2

    .line 202
    iget-object v0, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$SubscribeBuilder;->subscriptions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$SubscribeBuilder;->subscriptions:Ljava/util/List;

    .line 205
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$SubscribeBuilder;->subscriptions:Ljava/util/List;

    new-instance v1, Lio/netty/handler/codec/mqtt/MqttTopicSubscription;

    invoke-direct {v1, p2, p1}, Lio/netty/handler/codec/mqtt/MqttTopicSubscription;-><init>(Ljava/lang/String;Lio/netty/handler/codec/mqtt/MqttQoS;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lio/netty/handler/codec/mqtt/MqttSubscribeMessage;
    .locals 7

    .line 215
    new-instance v6, Lio/netty/handler/codec/mqtt/MqttFixedHeader;

    sget-object v1, Lio/netty/handler/codec/mqtt/MqttMessageType;->SUBSCRIBE:Lio/netty/handler/codec/mqtt/MqttMessageType;

    sget-object v3, Lio/netty/handler/codec/mqtt/MqttQoS;->AT_LEAST_ONCE:Lio/netty/handler/codec/mqtt/MqttQoS;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/mqtt/MqttFixedHeader;-><init>(Lio/netty/handler/codec/mqtt/MqttMessageType;ZLio/netty/handler/codec/mqtt/MqttQoS;ZI)V

    .line 217
    iget v0, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$SubscribeBuilder;->messageId:I

    invoke-static {v0}, Lio/netty/handler/codec/mqtt/MqttMessageIdVariableHeader;->from(I)Lio/netty/handler/codec/mqtt/MqttMessageIdVariableHeader;

    move-result-object v0

    .line 218
    new-instance v1, Lio/netty/handler/codec/mqtt/MqttSubscribePayload;

    iget-object v2, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$SubscribeBuilder;->subscriptions:Ljava/util/List;

    invoke-direct {v1, v2}, Lio/netty/handler/codec/mqtt/MqttSubscribePayload;-><init>(Ljava/util/List;)V

    .line 219
    new-instance v2, Lio/netty/handler/codec/mqtt/MqttSubscribeMessage;

    invoke-direct {v2, v6, v0, v1}, Lio/netty/handler/codec/mqtt/MqttSubscribeMessage;-><init>(Lio/netty/handler/codec/mqtt/MqttFixedHeader;Lio/netty/handler/codec/mqtt/MqttMessageIdVariableHeader;Lio/netty/handler/codec/mqtt/MqttSubscribePayload;)V

    return-object v2
.end method

.method public messageId(I)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$SubscribeBuilder;
    .locals 0

    .line 210
    iput p1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$SubscribeBuilder;->messageId:I

    return-object p0
.end method
