.class Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$10;
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

    .line 1359
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$10;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 1368
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$10;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->hideLoading()V

    .line 1369
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$10;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    const p2, 0x7f0d0118

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showMsg(Ljava/lang/String;)V

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 1362
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$10;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->hideLoading()V

    .line 1363
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$10;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    const p2, 0x7f0d0116

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showMsg(Ljava/lang/String;)V

    return-void
.end method
