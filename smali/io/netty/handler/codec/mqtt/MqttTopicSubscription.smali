.class public final Lio/netty/handler/codec/mqtt/MqttTopicSubscription;
.super Ljava/lang/Object;
.source "MqttTopicSubscription.java"


# instance fields
.field private final qualityOfService:Lio/netty/handler/codec/mqtt/MqttQoS;

.field private final topicFilter:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/netty/handler/codec/mqtt/MqttQoS;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lio/netty/handler/codec/mqtt/MqttTopicSubscription;->topicFilter:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lio/netty/handler/codec/mqtt/MqttTopicSubscription;->qualityOfService:Lio/netty/handler/codec/mqtt/MqttQoS;

    return-void
.end method


# virtual methods
.method public qualityOfService()Lio/netty/handler/codec/mqtt/MqttQoS;
    .locals 1

    .line 40
    iget-object v0, p0, Lio/netty/handler/codec/mqtt/MqttTopicSubscription;->qualityOfService:Lio/netty/handler/codec/mqtt/MqttQoS;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "topicFilter="

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/netty/handler/codec/mqtt/MqttTopicSubscription;->topicFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", qualityOfService="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/netty/handler/codec/mqtt/MqttTopicSubscription;->qualityOfService:Lio/netty/handler/codec/mqtt/MqttQoS;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public topicName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lio/netty/handler/codec/mqtt/MqttTopicSubscription;->topicFilter:Ljava/lang/String;

    return-object v0
.end method
