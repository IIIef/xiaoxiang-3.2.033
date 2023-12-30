.class Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5$1;
.super Ljava/lang/Object;
.source "ProtectParamsActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;->onClickCheck(Landroid/view/View;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 809
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;

    iput p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    return-void
.end method

.method synthetic lambda$success$0$com-jiabaida-little_elephant-ui-activity-ProtectParamsActivity$5$1(Ljava/lang/String;I)V
    .locals 5

    .line 813
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    const v1, 0x7f0d0097

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    const/4 v2, 0x1

    const/16 v3, 0x2a

    if-eqz v0, :cond_0

    .line 814
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$502(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;I)I

    .line 815
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x4

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;

    iget-object p2, p2, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)I

    move-result p2

    shl-int/lit8 p2, p2, 0x6

    or-int/2addr p1, p2

    .line 816
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;

    iget-object p2, p2, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object p2

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p1

    invoke-virtual {p2, v3, v2, p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 817
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;

    iget-object p2, p2, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$800(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 818
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$900(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/jiabaida/little_elephant/util/HardTimeFormat;->hardCellOVDelays:[I

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;

    iget-object v2, v2, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)I

    move-result v2

    aget v0, v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    const v4, 0x7f0d01a5

    invoke-virtual {v0, v4}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 820
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$602(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;I)I

    .line 821
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x4

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;

    iget-object p2, p2, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)I

    move-result p2

    shl-int/lit8 p2, p2, 0x6

    or-int/2addr p1, p2

    .line 822
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;

    iget-object p2, p2, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object p2

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p1

    invoke-virtual {p2, v3, v2, p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 823
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;

    iget-object p2, p2, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$800(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 824
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/jiabaida/little_elephant/util/HardTimeFormat;->hardCellUVDelays:[I

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;

    iget-object v2, v2, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)I

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

    .line 812
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;

    iget-object p2, p2, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5;->val$title:Ljava/lang/String;

    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5$1;->val$position:I

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5$1$$ExternalSyntheticLambda0;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$5$1;Ljava/lang/String;I)V

    invoke-virtual {p1, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
