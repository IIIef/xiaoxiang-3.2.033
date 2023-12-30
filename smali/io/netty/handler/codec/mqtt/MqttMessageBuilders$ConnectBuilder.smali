.class public final Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;
.super Ljava/lang/Object;
.source "MqttMessageBuilders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/mqtt/MqttMessageBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConnectBuilder"
.end annotation


# instance fields
.field private cleanSession:Z

.field private clientId:Ljava/lang/String;

.field private hasPassword:Z

.field private hasUser:Z

.field private keepAliveSecs:I

.field private password:[B

.field private username:Ljava/lang/String;

.field private version:Lio/netty/handler/codec/mqtt/MqttVersion;

.field private willFlag:Z

.field private willMessage:[B

.field private willQos:Lio/netty/handler/codec/mqtt/MqttQoS;

.field private willRetain:Z

.field private willTopic:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    sget-object v0, Lio/netty/handler/codec/mqtt/MqttVersion;->MQTT_3_1_1:Lio/netty/handler/codec/mqtt/MqttVersion;

    iput-object v0, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->version:Lio/netty/handler/codec/mqtt/MqttVersion;

    .line 79
    sget-object v0, Lio/netty/handler/codec/mqtt/MqttQoS;->AT_MOST_ONCE:Lio/netty/handler/codec/mqtt/MqttQoS;

    iput-object v0, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->willQos:Lio/netty/handler/codec/mqtt/MqttQoS;

    return-void
.end method


# virtual methods
.method public build()Lio/netty/handler/codec/mqtt/MqttConnectMessage;
    .locals 22

    move-object/from16 v0, p0

    .line 174
    new-instance v7, Lio/netty/handler/codec/mqtt/MqttFixedHeader;

    sget-object v2, Lio/netty/handler/codec/mqtt/MqttMessageType;->CONNECT:Lio/netty/handler/codec/mqtt/MqttMessageType;

    sget-object v4, Lio/netty/handler/codec/mqtt/MqttQoS;->AT_MOST_ONCE:Lio/netty/handler/codec/mqtt/MqttQoS;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/codec/mqtt/MqttFixedHeader;-><init>(Lio/netty/handler/codec/mqtt/MqttMessageType;ZLio/netty/handler/codec/mqtt/MqttQoS;ZI)V

    .line 176
    new-instance v1, Lio/netty/handler/codec/mqtt/MqttConnectVariableHeader;

    iget-object v2, v0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->version:Lio/netty/handler/codec/mqtt/MqttVersion;

    .line 178
    invoke-virtual {v2}, Lio/netty/handler/codec/mqtt/MqttVersion;->protocolName()Ljava/lang/String;

    move-result-object v9

    iget-object v2, v0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->version:Lio/netty/handler/codec/mqtt/MqttVersion;

    .line 179
    invoke-virtual {v2}, Lio/netty/handler/codec/mqtt/MqttVersion;->protocolLevel()B

    move-result v10

    iget-boolean v11, v0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->hasUser:Z

    iget-boolean v12, v0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->hasPassword:Z

    iget-boolean v13, v0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->willRetain:Z

    iget-object v2, v0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->willQos:Lio/netty/handler/codec/mqtt/MqttQoS;

    .line 183
    invoke-virtual {v2}, Lio/netty/handler/codec/mqtt/MqttQoS;->value()I

    move-result v14

    iget-boolean v15, v0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->willFlag:Z

    iget-boolean v2, v0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->cleanSession:Z

    iget v3, v0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->keepAliveSecs:I

    move-object v8, v1

    move/from16 v16, v2

    move/from16 v17, v3

    invoke-direct/range {v8 .. v17}, Lio/netty/handler/codec/mqtt/MqttConnectVariableHeader;-><init>(Ljava/lang/String;IZZZIZZI)V

    .line 187
    new-instance v2, Lio/netty/handler/codec/mqtt/MqttConnectPayload;

    iget-object v3, v0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->clientId:Ljava/lang/String;

    iget-object v4, v0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->willTopic:Ljava/lang/String;

    iget-object v5, v0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->willMessage:[B

    iget-object v6, v0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->username:Ljava/lang/String;

    iget-object v8, v0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->password:[B

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v8

    invoke-direct/range {v16 .. v21}, Lio/netty/handler/codec/mqtt/MqttConnectPayload;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B)V

    .line 189
    new-instance v3, Lio/netty/handler/codec/mqtt/MqttConnectMessage;

    invoke-direct {v3, v7, v1, v2}, Lio/netty/handler/codec/mqtt/MqttConnectMessage;-><init>(Lio/netty/handler/codec/mqtt/MqttFixedHeader;Lio/netty/handler/codec/mqtt/MqttConnectVariableHeader;Lio/netty/handler/codec/mqtt/MqttConnectPayload;)V

    return-object v3
.end method

.method public cleanSession(Z)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;
    .locals 0

    .line 99
    iput-boolean p1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->cleanSession:Z

    return-object p0
.end method

.method public clientId(Ljava/lang/String;)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;
    .locals 0

    .line 94
    iput-object p1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->clientId:Ljava/lang/String;

    return-object p0
.end method

.method public hasPassword(Z)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;
    .locals 0

    .line 148
    iput-boolean p1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->hasPassword:Z

    return-object p0
.end method

.method public hasUser(Z)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;
    .locals 0

    .line 143
    iput-boolean p1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->hasUser:Z

    return-object p0
.end method

.method public keepAlive(I)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;
    .locals 0

    .line 104
    iput p1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->keepAliveSecs:I

    return-object p0
.end method

.method public password(Ljava/lang/String;)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 163
    :cond_0
    sget-object v0, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->password([B)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;

    return-object p0
.end method

.method public password([B)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 168
    :goto_0
    iput-boolean v0, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->hasPassword:Z

    .line 169
    iput-object p1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->password:[B

    return-object p0
.end method

.method public protocolVersion(Lio/netty/handler/codec/mqtt/MqttVersion;)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;
    .locals 0

    .line 89
    iput-object p1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->version:Lio/netty/handler/codec/mqtt/MqttVersion;

    return-object p0
.end method

.method public username(Ljava/lang/String;)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 153
    :goto_0
    iput-boolean v0, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->hasUser:Z

    .line 154
    iput-object p1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->username:Ljava/lang/String;

    return-object p0
.end method

.method public willFlag(Z)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;
    .locals 0

    .line 109
    iput-boolean p1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->willFlag:Z

    return-object p0
.end method

.method public willMessage(Ljava/lang/String;)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 128
    :cond_0
    sget-object v0, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->willMessage([B)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;

    return-object p0
.end method

.method public willMessage([B)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;
    .locals 0

    .line 133
    iput-object p1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->willMessage:[B

    return-object p0
.end method

.method public willQoS(Lio/netty/handler/codec/mqtt/MqttQoS;)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;
    .locals 0

    .line 114
    iput-object p1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->willQos:Lio/netty/handler/codec/mqtt/MqttQoS;

    return-object p0
.end method

.method public willRetain(Z)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;
    .locals 0

    .line 138
    iput-boolean p1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->willRetain:Z

    return-object p0
.end method

.method public willTopic(Ljava/lang/String;)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;
    .locals 0

    .line 119
    iput-object p1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->willTopic:Ljava/lang/String;

    return-object p0
.end method
