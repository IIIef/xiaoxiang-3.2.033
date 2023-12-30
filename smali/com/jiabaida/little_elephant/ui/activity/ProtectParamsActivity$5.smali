.class Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;
.super Ljava/lang/Object;
.source "ProtectParamsActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->ShowDialog(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 804
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    iput-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickCheck(Landroid/view/View;IZ)V
    .locals 0

    .line 807
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->showLoading()V

    .line 808
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;-><init>()V

    .line 809
    new-instance p3, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5$1;

    invoke-direct {p3, p0, p2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5$1;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;I)V

    invoke-virtual {p1, p3}, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 835
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    return-void
.end method
