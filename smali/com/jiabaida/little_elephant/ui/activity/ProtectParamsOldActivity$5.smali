.class Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$5;
.super Ljava/lang/Object;
.source "ProtectParamsOldActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->sendFactoryCmd()V
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

    .line 1090
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 1093
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->access$3402(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 1094
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->access$6200(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)V

    return-void
.end method
