.class Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$24;
.super Ljava/lang/Object;
.source "FunctionSettingActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)V
    .locals 0

    .line 792
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$24;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 801
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$24;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->hideLoading()V

    .line 802
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$24;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    const p2, 0x7f0d0118

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->showMsg(Ljava/lang/String;)V

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 796
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$24;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->timeHandler:Landroid/os/Handler;

    const/16 p2, 0x7d00

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
