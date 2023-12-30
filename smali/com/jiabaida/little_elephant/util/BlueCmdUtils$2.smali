.class Lcom/jiabaida/little_elephant/util/BlueCmdUtils$2;
.super Ljava/lang/Object;
.source "BlueCmdUtils.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

.field final synthetic val$sleepSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/util/BlueCmdUtils;Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils$2;->this$0:Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    iput-object p2, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils$2;->val$sleepSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 55
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils$2;->val$sleepSetEntity:Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    return-void
.end method
