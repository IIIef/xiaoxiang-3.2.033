.class Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$8;
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

    .line 1185
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 1199
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->hideLoading()V

    .line 1200
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    const p2, 0x7f0d0118

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showMsg(Ljava/lang/String;)V

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 1189
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->access$3400(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1190
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->access$6200(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)V

    goto :goto_0

    .line 1192
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->timeHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->access$6100(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->getNextMsg()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method
