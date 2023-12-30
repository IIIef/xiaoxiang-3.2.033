.class Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4$1;
.super Ljava/lang/Object;
.source "ProtectParamsOldActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;->onClickCheck(Landroid/view/View;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1024
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;

    iput p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    return-void
.end method

.method synthetic lambda$success$0$com-jiabaida-little_elephant-ui-activity-ProtectParamsOldActivity$4$1(Ljava/lang/String;I)V
    .locals 7

    .line 1028
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    const v1, 0x7f0d0097

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    const/16 v2, 0x7d0f

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    .line 1029
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->access$2702(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;I)I

    .line 1030
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->access$2800(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x4

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;

    iget-object p2, p2, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->access$2700(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)I

    move-result p2

    shl-int/lit8 p2, p2, 0x6

    or-int/2addr p1, p2

    new-array p2, v4, [B

    .line 1032
    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p1

    .line 1033
    aget-byte p1, p1, v5

    aput-byte p1, p2, v3

    .line 1034
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->access$2600(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;

    move-result-object p1

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;->returnContent:[B

    aget-byte p1, p1, v5

    aput-byte p1, p2, v5

    .line 1035
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->access$2600(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;->setContent([B)V

    .line 1037
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showLoading()V

    .line 1038
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->access$6100(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 1039
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;

    iget-object p2, p2, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->access$6100(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 1043
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->access$3100(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/jiabaida/little_elephant/util/HardTimeFormat;->hardCellOVDelays:[I

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;

    iget-object v2, v2, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->access$2700(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)I

    move-result v2

    aget v0, v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1044
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    const v6, 0x7f0d01a5

    invoke-virtual {v0, v6}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1045
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->access$2802(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;I)I

    .line 1046
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->access$2800(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x4

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;

    iget-object p2, p2, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->access$2700(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)I

    move-result p2

    shl-int/lit8 p2, p2, 0x6

    or-int/2addr p1, p2

    new-array p2, v4, [B

    .line 1048
    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p1

    .line 1049
    aget-byte p1, p1, v5

    aput-byte p1, p2, v3

    .line 1050
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->access$2600(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;

    move-result-object p1

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;->returnContent:[B

    aget-byte p1, p1, v5

    aput-byte p1, p2, v5

    .line 1051
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->access$2600(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;->setContent([B)V

    .line 1053
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->showLoading()V

    .line 1054
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->access$6100(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 1055
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;

    iget-object p2, p2, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->access$6100(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 1059
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->access$3200(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/jiabaida/little_elephant/util/HardTimeFormat;->hardCellUVDelays:[I

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;

    iget-object v2, v2, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->access$2800(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;)I

    move-result v2

    aget v0, v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 2

    .line 1027
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;

    iget-object p2, p2, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4;->val$title:Ljava/lang/String;

    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4$1;->val$position:I

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4$1$$ExternalSyntheticLambda0;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity$4$1;Ljava/lang/String;I)V

    invoke-virtual {p1, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
