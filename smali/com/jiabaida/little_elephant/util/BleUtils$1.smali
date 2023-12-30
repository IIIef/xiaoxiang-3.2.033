.class Lcom/jiabaida/little_elephant/util/BleUtils$1;
.super Ljava/lang/Object;
.source "BleUtils.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/util/BleUtils;->getICType()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 1

    .line 508
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BleUtils;->access$000()Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->getIcType()I

    move-result p1

    sput p1, Lcom/jiabaida/little_elephant/util/BleUtils;->icType:I

    .line 509
    new-instance p1, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;

    const/16 p2, 0x2775

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0, v0}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;-><init>(ILjava/lang/String;[B)V

    .line 510
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
