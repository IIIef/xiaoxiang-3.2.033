.class Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$7;
.super Ljava/lang/Object;
.source "InitSettingsActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 516
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->hideLoading()V

    .line 517
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    const p2, 0x7f0d0118

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->showMsg(Ljava/lang/String;)V

    .line 518
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$1208(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)I

    .line 519
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$1200(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 520
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$1202(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;I)I

    .line 521
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->timeHandler:Landroid/os/Handler;

    const/16 p2, 0x7918

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 504
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->hideLoading()V

    .line 505
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$1208(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)I

    .line 506
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    const p2, 0x7f0d0116

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->showMsg(Ljava/lang/String;)V

    .line 507
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$1200(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 508
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$2000(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)V

    .line 509
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$1202(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;I)I

    .line 510
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->timeHandler:Landroid/os/Handler;

    const/16 p2, 0x7918

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
