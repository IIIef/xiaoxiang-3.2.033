.class Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$7;
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

    .line 1161
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 1

    .line 1172
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->hideLoading()V

    .line 1173
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    iget-object p2, p2, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->timeHandler:Landroid/os/Handler;

    const/16 v0, 0x7918

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1174
    check-cast p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 1175
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->getResponseSrcDatas()[B

    move-result-object p1

    const/4 p2, 0x2

    .line 1176
    aget-byte p2, p1, p2

    if-nez p2, :cond_0

    const/4 p2, 0x3

    aget-byte p1, p1, p2

    if-nez p1, :cond_0

    .line 1177
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->access$6500(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)V

    .line 1178
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    const p2, 0x7f0d0116

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 1180
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    const p2, 0x7f0d0118

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showMsg(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 1165
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    const p2, 0x7f0d0116

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showMsg(Ljava/lang/String;)V

    .line 1166
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->access$6500(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)V

    .line 1167
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->timeHandler:Landroid/os/Handler;

    const/16 p2, 0x7918

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
