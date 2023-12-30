.class public final Lio/netty/handler/codec/mqtt/MqttMessageBuilders$UnsubscribeBuilder;
.super Ljava/lang/Object;
.source "MqttMessageBuilders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/mqtt/MqttMessageBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnsubscribeBuilder"
.end annotation


# instance fields
.field private messageId:I

.field private topicFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addTopicFilter(Ljava/lang/String;)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$UnsubscribeBuilder;
    .locals 2

    .line 232
    iget-object v0, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$UnsubscribeBuilder;->topicFilters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$UnsubscribeBuilder;->topicFilters:Ljava/util/List;

    .line 235
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$UnsubscribeBuilder;->topicFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lio/netty/handler/codec/mqtt/MqttUnsubscribeMessage;
    .locals 7

    .line 245
    new-instance v6, Lio/netty/handler/codec/mqtt/MqttFixedHeader;

    sget-object v1, Lio/netty/handler/codec/mqtt/MqttMessageType;->UNSUBSCRIBE:Lio/netty/handler/codec/mqtt/MqttMessageType;

    sget-object v3, Lio/netty/handler/codec/mqtt/MqttQoS;->AT_LEAST_ONCE:Lio/netty/handler/codec/mqtt/MqttQoS;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/mqtt/MqttFixedHeader;-><init>(Lio/netty/handler/codec/mqtt/MqttMessageType;ZLio/netty/handler/codec/mqtt/MqttQoS;ZI)V

    .line 247
    iget v0, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$UnsubscribeBuilder;->messageId:I

    invoke-static {v0}, Lio/netty/handler/codec/mqtt/MqttMessageIdVariableHeader;->from(I)Lio/netty/handler/codec/mqtt/MqttMessageIdVariableHeader;

    move-result-object v0

    .line 248
    new-instance v1, Lio/netty/handler/codec/mqtt/MqttUnsubscribePayload;

    iget-object v2, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$UnsubscribeBuilder;->topicFilters:Ljava/util/List;

    invoke-direct {v1, v2}, Lio/netty/handler/codec/mqtt/MqttUnsubscribePayload;-><init>(Ljava/util/List;)V

    .line 249
    new-instance v2, Lio/netty/handler/codec/mqtt/MqttUnsubscribeMessage;

    invoke-direct {v2, v6, v0, v1}, Lio/netty/handler/codec/mqtt/MqttUnsubscribeMessage;-><init>(Lio/netty/handler/codec/mqtt/MqttFixedHeader;Lio/netty/handler/codec/mqtt/MqttMessageIdVariableHeader;Lio/netty/handler/codec/mqtt/MqttUnsubscribePayload;)V

    return-object v2
.end method

.method public messageId(I)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$UnsubscribeBuilder;
    .locals 0

    .line 240
    iput p1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$UnsubscribeBuilder;->messageId:I

    return-object p0
.end method
