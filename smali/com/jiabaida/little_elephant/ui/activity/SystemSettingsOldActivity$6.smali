.class Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$6;
.super Ljava/lang/Object;
.source "SystemSettingsOldActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 477
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->hideLoading()V

    .line 478
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    const p2, 0x7f0d0118

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->showMsg(Ljava/lang/String;)V

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 468
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    if-nez p1, :cond_0

    .line 469
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$1700(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)V

    goto :goto_0

    .line 471
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->timeHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$1800(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->getNextMsg()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method
