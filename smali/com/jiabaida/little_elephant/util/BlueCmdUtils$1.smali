.class Lcom/jiabaida/little_elephant/util/BlueCmdUtils$1;
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

.field final synthetic val$closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

.field final synthetic val$factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/util/BlueCmdUtils;Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils$1;->this$0:Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    iput-object p2, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils$1;->val$factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    iput-object p3, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils$1;->val$closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 46
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils$1;->val$closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    const-string p1, "xzx"

    const-string p2, "\u4f11\u7720\u6307\u4ee4\u8bbe\u7f6e\u5931\u8d25"

    .line 47
    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/util/IdsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    const-string p1, "xzx"

    const-string p2, "\u4f11\u7720\u6307\u4ee4\u8bbe\u7f6e\u6210\u529f"

    .line 39
    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/util/IdsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0x96

    .line 40
    invoke-static {p1, p2}, Landroid/os/SystemClock;->sleep(J)V

    .line 41
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils$1;->val$factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    return-void
.end method
