.class Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$3$1;
.super Ljava/lang/Object;
.source "MainV2Activity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$3;->rightBottomViewClick(Landroid/app/Dialog;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$3;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$3;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 1

    .line 536
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$3;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$3;

    iget-object p2, p2, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    const v0, 0x7f0d0092

    invoke-virtual {p2, v0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->showMsg(Ljava/lang/String;)V

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 1

    .line 529
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$3;

    iget-object p2, p2, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    const-class v0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 530
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$3;

    iget-object p2, p2, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$3;->val$otaName:Ljava/lang/String;

    const-string v0, "OTA_NAME"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$3;

    iget-object p2, p2, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    invoke-virtual {p2, p1}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
