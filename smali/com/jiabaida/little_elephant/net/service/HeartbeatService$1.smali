.class Lcom/jiabaida/little_elephant/net/service/HeartbeatService$1;
.super Landroid/os/Handler;
.source "HeartbeatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/net/service/HeartbeatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/net/service/HeartbeatService;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/net/service/HeartbeatService;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/jiabaida/little_elephant/net/service/HeartbeatService$1;->this$0:Lcom/jiabaida/little_elephant/net/service/HeartbeatService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 61
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 63
    iget p1, p1, Landroid/os/Message;->what:I

    const v0, 0x9c40

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "--socket:"

    const-string v1, "=service==\u5b9a\u65f6\u53d1\u9001\u5fc3\u8df3=="

    .line 65
    invoke-static {p1, v1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object p1, p0, Lcom/jiabaida/little_elephant/net/service/HeartbeatService$1;->this$0:Lcom/jiabaida/little_elephant/net/service/HeartbeatService;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/net/service/HeartbeatService;->timeHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 68
    iget-object p1, p0, Lcom/jiabaida/little_elephant/net/service/HeartbeatService$1;->this$0:Lcom/jiabaida/little_elephant/net/service/HeartbeatService;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/net/service/HeartbeatService;->timeHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method
