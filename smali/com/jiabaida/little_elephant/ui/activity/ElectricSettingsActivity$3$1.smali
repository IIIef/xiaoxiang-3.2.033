.class Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;
.super Ljava/lang/Object;
.source "ElectricSettingsActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;->onClickCheck(Landroid/view/View;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 732
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;

    iput p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    return-void
.end method

.method synthetic lambda$success$0$com-jiabaida-little_elephant-ui-activity-ElectricSettingsActivity$3$1(Ljava/lang/String;I)V
    .locals 6

    .line 737
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    const v1, 0x7f0d0114

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x28

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 738
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$1202(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;I)I

    .line 739
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$1200(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x4

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$1100(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)I

    move-result v0

    add-int/2addr p1, v0

    .line 740
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$2900(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v0

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 741
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$3100(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 744
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$1800(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->ocArray:[I

    aget p2, v0, p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    const v3, 0x7f0d0113

    invoke-virtual {v0, v3}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 749
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$1102(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;I)I

    .line 750
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$1200(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x4

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$1100(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)I

    move-result v0

    add-int/2addr p1, v0

    .line 752
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$2900(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v0

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 753
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$3100(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 756
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$1900(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->ocDelayArray:[F

    aget p2, v0, p2

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 760
    :cond_1
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    const v1, 0x7f0d0119

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x29

    const v3, 0x8000

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 763
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$1002(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;I)I

    .line 764
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$800(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x4

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$900(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)I

    move-result v0

    or-int/2addr p1, v0

    or-int/2addr p1, v3

    .line 766
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$2900(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v0

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 767
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$3100(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 770
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$2000(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scArray:[I

    aget p2, v0, p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 774
    :cond_3
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    const v5, 0x7f0d011a

    invoke-virtual {v0, v5}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 776
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$902(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;I)I

    .line 777
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$800(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x4

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$900(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)I

    move-result v0

    or-int/2addr p1, v0

    or-int/2addr p1, v3

    .line 778
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$2900(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v0

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 779
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$3100(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    .line 782
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$2100(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/jiabaida/little_elephant/entity/BMSICTypeCMDEntity;->scDelayArray:[F

    aget p2, v0, p2

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 2

    .line 735
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;

    iget-object p2, p2, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3;->val$title:Ljava/lang/String;

    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;->val$position:I

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1$$ExternalSyntheticLambda0;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$3$1;Ljava/lang/String;I)V

    invoke-virtual {p1, v1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
