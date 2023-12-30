.class Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$5;
.super Ljava/lang/Object;
.source "ConnectResistanceActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 308
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->hideLoading()V

    .line 309
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;

    const p2, 0x7f0d0118

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->showMsg(Ljava/lang/String;)V

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 303
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->timeHandler:Landroid/os/Handler;

    const/16 p2, 0x7d00

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
