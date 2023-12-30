.class Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$9;
.super Ljava/lang/Object;
.source "ProtectParamsOldActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)V
    .locals 0

    .line 1321
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$9;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 1355
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$9;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->access$6400(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)V

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 1

    .line 1324
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->getMode()I

    move-result p2

    const/16 v0, 0x5a

    if-ne p2, v0, :cond_0

    .line 1325
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->setReadMode()V

    goto :goto_0

    .line 1332
    :cond_0
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$9;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->access$6400(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)V

    .line 1333
    instance-of p2, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;

    if-eqz p2, :cond_1

    .line 1334
    iget-char p2, p1, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->cmd:C

    const/16 v0, 0x39

    if-ne p2, v0, :cond_1

    .line 1335
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$9;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    check-cast p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;

    invoke-static {p2, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->access$2602(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;

    .line 1336
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$9;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->timeHandler:Landroid/os/Handler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 1340
    :cond_1
    check-cast p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 1341
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x2

    .line 1342
    iput v0, p2, Landroid/os/Message;->what:I

    .line 1343
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1344
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$9;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->timeHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method
