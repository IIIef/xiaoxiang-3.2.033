.class Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$4;
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

    .line 495
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 510
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->access$1700(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)V

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 1

    .line 498
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->access$1700(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)V

    .line 499
    check-cast p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 500
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x1

    .line 501
    iput v0, p2, Landroid/os/Message;->what:I

    .line 502
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 503
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->timeHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
