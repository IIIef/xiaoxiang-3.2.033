.class Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$7;
.super Ljava/lang/Object;
.source "InitSettingsOldActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 418
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->hideLoading()V

    .line 419
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->access$508(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)I

    .line 420
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 421
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->timeHandler:Landroid/os/Handler;

    const/16 p2, 0x7918

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 423
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;

    const p2, 0x7f0d0118

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->showMsg(Ljava/lang/String;)V

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 407
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->hideLoading()V

    .line 408
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->access$508(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)I

    .line 409
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 410
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->access$1900(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)V

    .line 411
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->timeHandler:Landroid/os/Handler;

    const/16 p2, 0x7918

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 413
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;

    const p2, 0x7f0d0116

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->showMsg(Ljava/lang/String;)V

    return-void
.end method
