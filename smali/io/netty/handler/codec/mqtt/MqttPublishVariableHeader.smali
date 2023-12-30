.class public final Lio/netty/handler/codec/mqtt/MqttPublishVariableHeader;
.super Ljava/lang/Object;
.source "MqttPublishVariableHeader.java"


# instance fields
.field private final packetId:I

.field private final topicName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lio/netty/handler/codec/mqtt/MqttPublishVariableHeader;->topicName:Ljava/lang/String;

    .line 31
    iput p2, p0, Lio/netty/handler/codec/mqtt/MqttPublishVariableHeader;->packetId:I

    return-void
.end method


# virtual methods
.method public messageId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    iget v0, p0, Lio/netty/handler/codec/mqtt/MqttPublishVariableHeader;->packetId:I

    return v0
.end method

.method public packetId()I
    .locals 1

    .line 47
    iget v0, p0, Lio/netty/handler/codec/mqtt/MqttPublishVariableHeader;->packetId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "topicName="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/netty/handler/codec/mqtt/MqttPublishVariableHeader;->topicName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packetId="

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/netty/handler/codec/mqtt/MqttPublishVariableHeader;->packetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public topicName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lio/netty/handler/codec/mqtt/MqttPublishVariableHeader;->topicName:Ljava/lang/String;

    return-object v0
.end method
