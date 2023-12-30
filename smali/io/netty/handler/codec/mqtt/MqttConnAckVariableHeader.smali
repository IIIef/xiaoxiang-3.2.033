.class public final Lio/netty/handler/codec/mqtt/MqttConnAckVariableHeader;
.super Ljava/lang/Object;
.source "MqttConnAckVariableHeader.java"


# instance fields
.field private final connectReturnCode:Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;

.field private final sessionPresent:Z


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;Z)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lio/netty/handler/codec/mqtt/MqttConnAckVariableHeader;->connectReturnCode:Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;

    .line 32
    iput-boolean p2, p0, Lio/netty/handler/codec/mqtt/MqttConnAckVariableHeader;->sessionPresent:Z

    return-void
.end method


# virtual methods
.method public connectReturnCode()Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;
    .locals 1

    .line 36
    iget-object v0, p0, Lio/netty/handler/codec/mqtt/MqttConnAckVariableHeader;->connectReturnCode:Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;

    return-object v0
.end method

.method public isSessionPresent()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lio/netty/handler/codec/mqtt/MqttConnAckVariableHeader;->sessionPresent:Z

    return v0
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

    const-string v1, "connectReturnCode="

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/netty/handler/codec/mqtt/MqttConnAckVariableHeader;->connectReturnCode:Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionPresent="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/netty/handler/codec/mqtt/MqttConnAckVariableHeader;->sessionPresent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
