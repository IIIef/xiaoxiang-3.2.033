.class Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$6;
.super Ljava/lang/Object;
.source "SystemSettingsActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)V
    .locals 0

    .line 616
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 629
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->hideLoading()V

    .line 630
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    const p2, 0x7f0d0118

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->showMsg(Ljava/lang/String;)V

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 620
    check-cast p1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    .line 622
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    const p2, 0x7f0d0116

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->showMsg(Ljava/lang/String;)V

    .line 623
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)V

    .line 624
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->timeHandler:Landroid/os/Handler;

    const/16 p2, 0x7918

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
